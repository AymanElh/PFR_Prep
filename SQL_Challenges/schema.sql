-- Fitness & Nutrition Tracking System Schema
-- Generated based on Laravel migrations
-- Creation Date: 2025-04-26

-- Drop tables if they exist (in reverse order of dependency)
DROP TABLE IF EXISTS nutrition_plan_food_items;
DROP TABLE IF EXISTS nutrition_plan_meals;
DROP TABLE IF EXISTS nutrition_plan_days;
DROP TABLE IF EXISTS nutrition_plans;
DROP TABLE IF EXISTS exercise_plan_items;
DROP TABLE IF EXISTS exercise_plan_days;
DROP TABLE IF EXISTS exercise_plans;
DROP TABLE IF EXISTS meal_items;
DROP TABLE IF EXISTS meals;
DROP TABLE IF EXISTS exercises;
DROP TABLE IF EXISTS food_items;
DROP TABLE IF EXISTS food_categories;
DROP TABLE IF EXISTS role_permission;
DROP TABLE IF EXISTS user_role;
DROP TABLE IF EXISTS permissions;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS users;

-- Create users table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    email_verified_at TIMESTAMP NULL,
    password VARCHAR(255) NOT NULL,
    remember_token VARCHAR(100) NULL,
    status VARCHAR(7) NOT NULL DEFAULT 'active' CHECK (status IN ('active', 'banned')),
    banned_at TIMESTAMP NULL,
    bio TEXT NULL,
    weight FLOAT NULL,
    height FLOAT NULL,
    date_of_birth DATE NULL,
    gender VARCHAR(255) NULL,
    profile_photo_path VARCHAR(255) NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL
);

-- Create roles table
CREATE TABLE roles (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    description TEXT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL
);

-- Create permissions table
CREATE TABLE permissions (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    slug VARCHAR(255) NOT NULL UNIQUE,
    module VARCHAR(255) NOT NULL,
    description VARCHAR(255) NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL
);

-- Create user_role pivot table
CREATE TABLE user_role (
    id SERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    role_id BIGINT NOT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,
    CONSTRAINT user_role_unique UNIQUE (user_id, role_id),
    CONSTRAINT fk_user_role_user FOREIGN KEY (user_id) 
        REFERENCES users (id) ON DELETE CASCADE,
    CONSTRAINT fk_user_role_role FOREIGN KEY (role_id) 
        REFERENCES roles (id) ON DELETE CASCADE
);

-- Create role_permission pivot table
CREATE TABLE role_permission (
    id SERIAL PRIMARY KEY,
    role_id BIGINT NOT NULL,
    permission_id BIGINT NOT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,
    CONSTRAINT role_permission_unique UNIQUE (role_id, permission_id),
    CONSTRAINT fk_role_permission_role FOREIGN KEY (role_id) 
        REFERENCES roles (id) ON DELETE CASCADE,
    CONSTRAINT fk_role_permission_permission FOREIGN KEY (permission_id) 
        REFERENCES permissions (id) ON DELETE CASCADE
);

-- Create food_categories table
CREATE TABLE food_categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    description TEXT NOT NULL,
    color_code VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL
);

-- Create food_items table
CREATE TABLE food_items (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    slug VARCHAR(255) NOT NULL UNIQUE,
    category_id BIGINT NULL,
    brand VARCHAR(255) NULL,
    portion_default VARCHAR(255) NOT NULL,
    portions JSONB NULL,
    nutrients JSONB NOT NULL,
    micronutrients JSONB NULL,
    description TEXT NULL,
    image_url VARCHAR(255) NULL,
    created_by BIGINT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,
    deleted_at TIMESTAMP NULL,
    CONSTRAINT fk_food_items_category FOREIGN KEY (category_id) 
        REFERENCES food_categories (id) ON DELETE SET NULL,
    CONSTRAINT fk_food_items_user FOREIGN KEY (created_by) 
        REFERENCES users (id) ON DELETE SET NULL
);

-- Create indexes for food_items
CREATE INDEX idx_food_items_name ON food_items(name);
CREATE INDEX idx_food_items_category_id ON food_items(category_id);
CREATE INDEX idx_food_items_brand ON food_items(brand);
CREATE INDEX idx_food_items_created_by ON food_items(created_by);

-- Create meals table
CREATE TABLE meals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT NULL,
    image_url VARCHAR(255) NULL,
    type VARCHAR(9) NOT NULL DEFAULT 'lunch' 
        CHECK (type IN ('breakfast', 'lunch', 'dinner', 'snack')),
    created_by BIGINT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,
    CONSTRAINT fk_meals_user FOREIGN KEY (created_by) 
        REFERENCES users (id) ON DELETE SET NULL
);

-- Create meal_items table
CREATE TABLE meal_items (
    id SERIAL PRIMARY KEY,
    meal_id BIGINT NOT NULL,
    food_id BIGINT NOT NULL,
    quantity FLOAT NOT NULL DEFAULT 1,
    quantity_unit VARCHAR(255) NOT NULL DEFAULT 'serving',
    nutrients JSON NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,
    CONSTRAINT fk_meal_items_meal FOREIGN KEY (meal_id) 
        REFERENCES meals (id) ON DELETE CASCADE,
    CONSTRAINT fk_meal_items_food FOREIGN KEY (food_id) 
        REFERENCES food_items (id) ON DELETE CASCADE
);

-- Create exercises table
CREATE TABLE exercises (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT NULL,
    type VARCHAR(255) NOT NULL DEFAULT 'strength',
    muscle_group VARCHAR(255) NULL,
    equipment VARCHAR(255) NULL,
    difficulty VARCHAR(12) NOT NULL DEFAULT 'intermediate' 
        CHECK (difficulty IN ('beginner', 'intermediate', 'advanced')),
    duration INTEGER NULL,
    calories_burned INTEGER NULL,
    image_url VARCHAR(255) NULL,
    video_url VARCHAR(255) NULL,
    created_by BIGINT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,
    CONSTRAINT fk_exercises_user FOREIGN KEY (created_by) 
        REFERENCES users (id) ON DELETE SET NULL
);

-- Create exercise_plans table
CREATE TABLE exercise_plans (
    id SERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT NULL,
    level VARCHAR(12) NOT NULL DEFAULT 'beginner' 
        CHECK (level IN ('beginner', 'intermediate', 'advanced')),
    duration_weeks INTEGER NOT NULL DEFAULT 4,
    is_public BOOLEAN NOT NULL DEFAULT FALSE,
    deleted_at TIMESTAMP NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,
    CONSTRAINT fk_exercise_plans_user FOREIGN KEY (user_id) 
        REFERENCES users (id) ON DELETE CASCADE
);

-- Create exercise_plan_days table
CREATE TABLE exercise_plan_days (
    id SERIAL PRIMARY KEY,
    exercise_plan_id BIGINT NOT NULL,
    name VARCHAR(255) NOT NULL,
    day_number INTEGER NOT NULL,
    is_rest_day BOOLEAN NOT NULL DEFAULT FALSE,
    notes TEXT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,
    CONSTRAINT fk_exercise_plan_days_plan FOREIGN KEY (exercise_plan_id) 
        REFERENCES exercise_plans (id) ON DELETE CASCADE
);

-- Create exercise_plan_items table
CREATE TABLE exercise_plan_items (
    id SERIAL PRIMARY KEY,
    exercise_plan_day_id BIGINT NOT NULL,
    exercise_id BIGINT NOT NULL,
    sets INTEGER NULL,
    reps INTEGER NULL,
    duration VARCHAR(255) NULL,
    "order" INTEGER NOT NULL DEFAULT 0,
    notes VARCHAR(255) NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,
    CONSTRAINT fk_exercise_plan_items_day FOREIGN KEY (exercise_plan_day_id) 
        REFERENCES exercise_plan_days (id) ON DELETE CASCADE,
    CONSTRAINT fk_exercise_plan_items_exercise FOREIGN KEY (exercise_id) 
        REFERENCES exercises (id) ON DELETE CASCADE
);

-- Create nutrition_plans table
CREATE TABLE nutrition_plans (
    id SERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT NULL,
    duration_days INTEGER NOT NULL DEFAULT 7,
    is_public BOOLEAN NOT NULL DEFAULT FALSE,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,
    deleted_at TIMESTAMP NULL,
    CONSTRAINT fk_nutrition_plans_user FOREIGN KEY (user_id) 
        REFERENCES users (id) ON DELETE CASCADE
);

-- Create nutrition_plan_days table
CREATE TABLE nutrition_plan_days (
    id SERIAL PRIMARY KEY,
    nutrition_plan_id BIGINT NOT NULL,
    day_number INTEGER NOT NULL,
    notes TEXT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,
    CONSTRAINT nutrition_plan_days_unique UNIQUE (nutrition_plan_id, day_number),
    CONSTRAINT fk_nutrition_plan_days_plan FOREIGN KEY (nutrition_plan_id) 
        REFERENCES nutrition_plans (id) ON DELETE CASCADE
);

-- Create nutrition_plan_meals table
CREATE TABLE nutrition_plan_meals (
    id SERIAL PRIMARY KEY,
    nutrition_plan_day_id BIGINT NOT NULL,
    meal_id BIGINT NULL,
    meal_type VARCHAR(9) NOT NULL DEFAULT 'lunch' 
        CHECK (meal_type IN ('breakfast', 'lunch', 'dinner', 'snack')),
    notes TEXT NULL,
    "order" INTEGER NOT NULL DEFAULT 0,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,
    CONSTRAINT fk_nutrition_plan_meals_day FOREIGN KEY (nutrition_plan_day_id) 
        REFERENCES nutrition_plan_days (id) ON DELETE CASCADE,
    CONSTRAINT fk_nutrition_plan_meals_meal FOREIGN KEY (meal_id) 
        REFERENCES meals (id) ON DELETE SET NULL
);

-- Create nutrition_plan_food_items table
CREATE TABLE nutrition_plan_food_items (
    id SERIAL PRIMARY KEY,
    nutrition_plan_day_id BIGINT NOT NULL,
    food_id BIGINT NOT NULL,
    meal_type VARCHAR(9) NOT NULL DEFAULT 'lunch' 
        CHECK (meal_type IN ('breakfast', 'lunch', 'dinner', 'snack')),
    quantity FLOAT NOT NULL DEFAULT 1,
    quantity_unit VARCHAR(255) NOT NULL DEFAULT 'serving',
    notes TEXT NULL,
    "order" INTEGER NOT NULL DEFAULT 0,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,
    CONSTRAINT fk_nutrition_plan_food_items_day FOREIGN KEY (nutrition_plan_day_id) 
        REFERENCES nutrition_plan_days (id) ON DELETE CASCADE,
    CONSTRAINT fk_nutrition_plan_food_items_food FOREIGN KEY (food_id) 
        REFERENCES food_items (id) ON DELETE CASCADE
);