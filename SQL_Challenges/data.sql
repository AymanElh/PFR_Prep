-- Fitness & Nutrition Tracking System Sample Data
-- Generated for testing purposes
-- Creation Date: 2025-04-26

-- Clear existing data (in reverse order of dependency)
TRUNCATE TABLE nutrition_plan_food_items CASCADE;
TRUNCATE TABLE nutrition_plan_meals CASCADE;
TRUNCATE TABLE nutrition_plan_days CASCADE;
TRUNCATE TABLE nutrition_plans CASCADE;
TRUNCATE TABLE exercise_plan_items CASCADE;
TRUNCATE TABLE exercise_plan_days CASCADE;
TRUNCATE TABLE exercise_plans CASCADE;
TRUNCATE TABLE meal_items CASCADE;
TRUNCATE TABLE meals CASCADE;
TRUNCATE TABLE exercises CASCADE;
TRUNCATE TABLE food_items CASCADE;
TRUNCATE TABLE food_categories CASCADE;
TRUNCATE TABLE role_permission CASCADE;
TRUNCATE TABLE user_role CASCADE;
TRUNCATE TABLE permissions CASCADE;
TRUNCATE TABLE roles CASCADE;
TRUNCATE TABLE users CASCADE;

-- Insert users
INSERT INTO users (id, name, email, password, status, bio, weight, height, date_of_birth, gender, created_at, updated_at) VALUES
(1, 'Admin User', 'admin@fitness.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'active', 'System administrator', 75.5, 178.0, '1990-01-15', 'male', '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(2, 'John Doe', 'john@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'active', 'Fitness enthusiast', 82.3, 185.5, '1988-05-20', 'male', '2025-01-02 00:00:00', '2025-01-02 00:00:00'),
(3, 'Jane Smith', 'jane@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'active', 'Nutrition specialist', 58.7, 165.0, '1992-11-03', 'female', '2025-01-03 00:00:00', '2025-01-03 00:00:00'),
(4, 'Mike Johnson', 'mike@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'active', 'Bodybuilder', 95.0, 190.0, '1985-07-12', 'male', '2025-01-04 00:00:00', '2025-01-04 00:00:00'),
(5, 'Sarah Wilson', 'sarah@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'active', 'Yoga instructor', 55.2, 162.0, '1995-03-25', 'female', '2025-01-05 00:00:00', '2025-01-05 00:00:00'),
(6, 'Inactive User', 'inactive@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'banned', NULL, 70.0, 175.0, '1991-08-18', 'male', '2025-01-06 00:00:00', '2025-02-01 00:00:00');

-- Insert roles
INSERT INTO roles (id, name, description, created_at, updated_at) VALUES
(1, 'Administrator', 'Full system access', '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(2, 'Nutritionist', 'Can manage food and nutrition plans', '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(3, 'Trainer', 'Can manage exercises and workout plans', '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(4, 'User', 'Regular user with limited privileges', '2025-01-01 00:00:00', '2025-01-01 00:00:00');

-- Insert permissions
INSERT INTO permissions (id, name, slug, module, description, created_at, updated_at) VALUES
(1, 'View Dashboard', 'view-dashboard', 'dashboard', 'Can view dashboard stats', '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(2, 'Manage Users', 'manage-users', 'users', 'Can manage system users', '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(3, 'Manage Roles', 'manage-roles', 'roles', 'Can manage roles and permissions', '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(4, 'Manage Food', 'manage-food', 'food', 'Can manage food items', '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(5, 'Manage Meals', 'manage-meals', 'meals', 'Can manage meal compositions', '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(6, 'Manage Exercises', 'manage-exercises', 'exercises', 'Can manage exercise definitions', '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(7, 'Manage Workout Plans', 'manage-workout-plans', 'workout-plans', 'Can manage workout plans', '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(8, 'Manage Nutrition Plans', 'manage-nutrition-plans', 'nutrition-plans', 'Can manage nutrition plans', '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(9, 'View Public Content', 'view-public-content', 'content', 'Can view public content', '2025-01-01 00:00:00', '2025-01-01 00:00:00');

-- Insert user_role relationships
INSERT INTO user_role (user_id, role_id, created_at, updated_at) VALUES
(1, 1, '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(2, 4, '2025-01-02 00:00:00', '2025-01-02 00:00:00'),
(3, 2, '2025-01-03 00:00:00', '2025-01-03 00:00:00'),
(3, 4, '2025-01-03 00:00:00', '2025-01-03 00:00:00'),
(4, 3, '2025-01-04 00:00:00', '2025-01-04 00:00:00'),
(4, 4, '2025-01-04 00:00:00', '2025-01-04 00:00:00'),
(5, 4, '2025-01-05 00:00:00', '2025-01-05 00:00:00'),
(6, 4, '2025-01-06 00:00:00', '2025-01-06 00:00:00');

-- Insert role_permission relationships
INSERT INTO role_permission (role_id, permission_id, created_at, updated_at) VALUES
-- Administrator has all permissions
(1, 1, '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(1, 2, '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(1, 3, '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(1, 4, '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(1, 5, '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(1, 6, '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(1, 7, '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(1, 8, '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(1, 9, '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
-- Nutritionist permissions
(2, 1, '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(2, 4, '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(2, 5, '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(2, 8, '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(2, 9, '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
-- Trainer permissions
(3, 1, '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(3, 6, '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(3, 7, '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(3, 9, '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
-- Regular user permissions
(4, 9, '2025-01-01 00:00:00', '2025-01-01 00:00:00');

-- Insert food categories
INSERT INTO food_categories (id, name, description, color_code, created_at, updated_at) VALUES
(1, 'Proteins', 'Foods high in protein content', '#FF5733', '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(2, 'Vegetables', 'Fresh and cooked vegetables', '#33FF57', '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(3, 'Fruits', 'Fresh and dried fruits', '#5733FF', '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(4, 'Grains', 'Whole grains and cereals', '#F3FF33', '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(5, 'Dairy', 'Milk and dairy products', '#33FFF3', '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(6, 'Fats & Oils', 'Healthy and cooking fats', '#FF33F3', '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(7, 'Beverages', 'Drinks and liquids', '#8C33FF', '2025-01-01 00:00:00', '2025-01-01 00:00:00'),
(8, 'Snacks', 'Various snack foods', '#FF8C33', '2025-01-01 00:00:00', '2025-01-01 00:00:00');

-- Insert food items
INSERT INTO food_items (id, name, slug, category_id, brand, portion_default, portions, nutrients, micronutrients, description, image_url, created_by, created_at, updated_at) VALUES
(1, 'Chicken Breast', 'chicken-breast', 1, NULL, '100g', 
   '["100g", "1 breast (172g)", "1 oz (28.4g)"]', 
   '{"calories": 165, "protein": 31, "carbs": 0, "fat": 3.6}', 
   '{"vitamin_b6": 0.8, "phosphorus": 196}', 
   'Lean chicken breast, skinless', '/images/foods/chicken-breast.jpg', 3, '2025-01-10 00:00:00', '2025-01-10 00:00:00'),
   
(2, 'Brown Rice', 'brown-rice', 4, NULL, '100g cooked', 
   '["100g cooked", "1 cup cooked (195g)", "1/2 cup cooked (98g)"]', 
   '{"calories": 112, "protein": 2.6, "carbs": 23.5, "fat": 0.9}', 
   '{"manganese": 1.1, "magnesium": 44}', 
   'Whole grain brown rice, cooked', '/images/foods/brown-rice.jpg', 3, '2025-01-10 00:00:00', '2025-01-10 00:00:00'),
   
(3, 'Spinach', 'spinach', 2, 'Organic Farms', '100g raw', 
   '["100g raw", "1 cup raw (30g)", "1 cup cooked (180g)"]', 
   '{"calories": 23, "protein": 2.9, "carbs": 3.6, "fat": 0.4}', 
   '{"vitamin_a": 9377, "vitamin_k": 483}', 
   'Fresh spinach leaves', '/images/foods/spinach.jpg', 3, '2025-01-11 00:00:00', '2025-01-11 00:00:00'),
   
(4, 'Banana', 'banana', 3, NULL, '1 medium (118g)', 
   '["1 medium (118g)", "100g", "1 large (136g)"]', 
   '{"calories": 105, "protein": 1.3, "carbs": 27, "fat": 0.4}', 
   '{"potassium": 422, "vitamin_b6": 0.4}', 
   'Medium ripe banana', '/images/foods/banana.jpg', 3, '2025-01-11 00:00:00', '2025-01-11 00:00:00'),
   
(5, 'Greek Yogurt', 'greek-yogurt', 5, 'Greek Gods', '100g', 
   '["100g", "1 cup (245g)", "2 tbsp (28g)"]', 
   '{"calories": 59, "protein": 10, "carbs": 3.6, "fat": 0.4}', 
   '{"calcium": 110, "vitamin_b12": 0.5}', 
   'Plain, non-fat Greek yogurt', '/images/foods/greek-yogurt.jpg', 3, '2025-01-12 00:00:00', '2025-01-12 00:00:00'),
   
(6, 'Salmon', 'salmon', 1, NULL, '100g', 
   '["100g", "1 fillet (178g)", "3 oz (85g)"]', 
   '{"calories": 208, "protein": 20, "carbs": 0, "fat": 13}', 
   '{"omega_3": 2.3, "vitamin_d": 11}', 
   'Atlantic salmon fillet', '/images/foods/salmon.jpg', 3, '2025-01-12 00:00:00', '2025-01-12 00:00:00'),
   
(7, 'Avocado', 'avocado', 6, NULL, '1/2 avocado (68g)', 
   '["1/2 avocado (68g)", "100g", "1 whole (136g)"]', 
   '{"calories": 114, "protein": 1.3, "carbs": 6, "fat": 10.5}', 
   '{"potassium": 345, "folate": 81}', 
   'Ripe Hass avocado', '/images/foods/avocado.jpg', 3, '2025-01-13 00:00:00', '2025-01-13 00:00:00'),
   
(8, 'Broccoli', 'broccoli', 2, NULL, '100g raw', 
   '["100g raw", "1 cup chopped (91g)", "1 spear (151g)"]', 
   '{"calories": 34, "protein": 2.8, "carbs": 6.6, "fat": 0.4}', 
   '{"vitamin_c": 89, "vitamin_k": 102}', 
   'Fresh broccoli florets', '/images/foods/broccoli.jpg', 3, '2025-01-13 00:00:00', '2025-01-13 00:00:00'),
   
(9, 'Almonds', 'almonds', 8, 'Blue Diamond', '28g (1oz)', 
   '["28g (1oz)", "1 almond (1.2g)", "1 cup (143g)"]', 
   '{"calories": 164, "protein": 6, "carbs": 6, "fat": 14}', 
   '{"vitamin_e": 7.3, "magnesium": 77}', 
   'Raw almonds, unsalted', '/images/foods/almonds.jpg', 3, '2025-01-14 00:00:00', '2025-01-14 00:00:00'),
   
(10, 'Green Tea', 'green-tea', 7, 'Teavana', '240ml (8oz)', 
   '["240ml (8oz)", "100ml", "1 tea bag (2g dry)"]', 
   '{"calories": 2, "protein": 0, "carbs": 0, "fat": 0}', 
   '{"catechins": 50, "l_theanine": 8}', 
   'Brewed green tea, no sugar', '/images/foods/green-tea.jpg', 3, '2025-01-14 00:00:00', '2025-01-14 00:00:00');

-- Insert meals
INSERT INTO meals (id, name, description, image_url, type, created_by, created_at, updated_at) VALUES
(1, 'Protein Breakfast Bowl', 'High protein breakfast to kickstart the day', '/images/meals/protein-breakfast.jpg', 'breakfast', 3, '2025-01-15 00:00:00', '2025-01-15 00:00:00'),
(2, 'Chicken & Rice Lunch', 'Balanced lunch for sustained energy', '/images/meals/chicken-rice.jpg', 'lunch', 3, '2025-01-15 00:00:00', '2025-01-15 00:00:00'),
(3, 'Salmon Dinner', 'Nutritious evening meal rich in omega-3', '/images/meals/salmon-dinner.jpg', 'dinner', 3, '2025-01-16 00:00:00', '2025-01-16 00:00:00'),
(4, 'Healthy Snack Pack', 'Nutritious between-meal snack', '/images/meals/snack-pack.jpg', 'snack', 3, '2025-01-16 00:00:00', '2025-01-16 00:00:00'),
(5, 'Vegetarian Power Bowl', 'Plant-based meal rich in nutrients', '/images/meals/veggie-bowl.jpg', 'lunch', 3, '2025-01-17 00:00:00', '2025-01-17 00:00:00'),
(6, 'Post-Workout Recovery', 'Optimized for muscle recovery', '/images/meals/post-workout.jpg', 'snack', 4, '2025-01-17 00:00:00', '2025-01-17 00:00:00');

-- Insert meal items
INSERT INTO meal_items (meal_id, food_id, quantity, quantity_unit, nutrients, created_at, updated_at) VALUES
-- Protein Breakfast Bowl
(1, 5, 200, 'g', '{"calories": 118, "protein": 20, "carbs": 7.2, "fat": 0.8}', '2025-01-15 00:00:00', '2025-01-15 00:00:00'),
(1, 4, 1, 'medium', '{"calories": 105, "protein": 1.3, "carbs": 27, "fat": 0.4}', '2025-01-15 00:00:00', '2025-01-15 00:00:00'),
(1, 9, 15, 'g', '{"calories": 87, "protein": 3.2, "carbs": 3.2, "fat": 7.5}', '2025-01-15 00:00:00', '2025-01-15 00:00:00'),

-- Chicken & Rice Lunch
(2, 1, 150, 'g', '{"calories": 247, "protein": 46.5, "carbs": 0, "fat": 5.4}', '2025-01-15 00:00:00', '2025-01-15 00:00:00'),
(2, 2, 150, 'g', '{"calories": 168, "protein": 3.9, "carbs": 35.2, "fat": 1.4}', '2025-01-15 00:00:00', '2025-01-15 00:00:00'),
(2, 8, 100, 'g', '{"calories": 34, "protein": 2.8, "carbs": 6.6, "fat": 0.4}', '2025-01-15 00:00:00', '2025-01-15 00:00:00'),

-- Salmon Dinner
(3, 6, 180, 'g', '{"calories": 374, "protein": 36, "carbs": 0, "fat": 23.4}', '2025-01-16 00:00:00', '2025-01-16 00:00:00'),
(3, 3, 100, 'g', '{"calories": 23, "protein": 2.9, "carbs": 3.6, "fat": 0.4}', '2025-01-16 00:00:00', '2025-01-16 00:00:00'),
(3, 2, 100, 'g', '{"calories": 112, "protein": 2.6, "carbs": 23.5, "fat": 0.9}', '2025-01-16 00:00:00', '2025-01-16 00:00:00'),

-- Healthy Snack Pack
(4, 9, 30, 'g', '{"calories": 174, "protein": 6.4, "carbs": 6.4, "fat": 15}', '2025-01-16 00:00:00', '2025-01-16 00:00:00'),
(4, 4, 1, 'medium', '{"calories": 105, "protein": 1.3, "carbs": 27, "fat": 0.4}', '2025-01-16 00:00:00', '2025-01-16 00:00:00'),

-- Vegetarian Power Bowl
(5, 3, 150, 'g', '{"calories": 34, "protein": 4.4, "carbs": 5.4, "fat": 0.6}', '2025-01-17 00:00:00', '2025-01-17 00:00:00'),
(5, 2, 150, 'g', '{"calories": 168, "protein": 3.9, "carbs": 35.2, "fat": 1.4}', '2025-01-17 00:00:00', '2025-01-17 00:00:00'),
(5, 7, 1, 'whole', '{"calories": 228, "protein": 2.6, "carbs": 12, "fat": 21}', '2025-01-17 00:00:00', '2025-01-17 00:00:00'),

-- Post-Workout Recovery
(6, 5, 250, 'g', '{"calories": 147, "protein": 25, "carbs": 9, "fat": 1}', '2025-01-17 00:00:00', '2025-01-17 00:00:00'),
(6, 4, 1, 'medium', '{"calories": 105, "protein": 1.3, "carbs": 27, "fat": 0.4}', '2025-01-17 00:00:00', '2025-01-17 00:00:00');

-- Insert exercises
INSERT INTO exercises (id, name, description, type, muscle_group, equipment, difficulty, duration, calories_burned, image_url, video_url, created_by, created_at, updated_at) VALUES
(1, 'Push-up', 'Standard bodyweight push-up', 'strength', 'chest,triceps,shoulders', 'bodyweight', 'intermediate', 0, 8, '/images/exercises/pushup.jpg', '/videos/exercises/pushup.mp4', 4, '2025-01-20 00:00:00', '2025-01-20 00:00:00'),
(2, 'Squat', 'Basic bodyweight squat', 'strength', 'quadriceps,glutes,hamstrings', 'bodyweight', 'beginner', 0, 8, '/images/exercises/squat.jpg', '/videos/exercises/squat.mp4', 4, '2025-01-20 00:00:00', '2025-01-20 00:00:00'),
(3, 'Plank', 'Core strengthening isometric hold', 'strength', 'core,shoulders', 'bodyweight', 'beginner', 60, 5, '/images/exercises/plank.jpg', '/videos/exercises/plank.mp4', 4, '2025-01-21 00:00:00', '2025-01-21 00:00:00'),
(4, 'Pull-up', 'Upper body pull exercise', 'strength', 'back,biceps', 'pull-up bar', 'advanced', 0, 10, '/images/exercises/pullup.jpg', '/videos/exercises/pullup.mp4', 4, '2025-01-21 00:00:00', '2025-01-21 00:00:00'),
(5, 'Bench Press', 'Horizontal pressing movement', 'strength', 'chest,triceps,shoulders', 'barbell,bench', 'intermediate', 0, 12, '/images/exercises/bench-press.jpg', '/videos/exercises/bench-press.mp4', 4, '2025-01-22 00:00:00', '2025-01-22 00:00:00'),
(6, 'Deadlift', 'Compound lower body pull', 'strength', 'back,glutes,hamstrings', 'barbell', 'advanced', 0, 15, '/images/exercises/deadlift.jpg', '/videos/exercises/deadlift.mp4', 4, '2025-01-22 00:00:00', '2025-01-22 00:00:00'),
(7, 'Running', 'Outdoor or treadmill running', 'cardio', 'full body', 'none', 'intermediate', 1800, 300, '/images/exercises/running.jpg', NULL, 4, '2025-01-23 00:00:00', '2025-01-23 00:00:00'),
(8, 'Bicycle Crunch', 'Dynamic core exercise', 'strength', 'core,obliques', 'bodyweight', 'intermediate', 60, 8, '/images/exercises/bicycle-crunch.jpg', '/videos/exercises/bicycle-crunch.mp4', 4, '2025-01-23 00:00:00', '2025-01-23 00:00:00'),
(9, 'Mountain Climber', 'Dynamic full body movement', 'cardio', 'core,shoulders,legs', 'bodyweight', 'intermediate', 60, 12, '/images/exercises/mountain-climber.jpg', '/videos/exercises/mountain-climber.mp4', 4, '2025-01-24 00:00:00', '2025-01-24 00:00:00'),
(10, 'Yoga Flow', 'Sequence of connected yoga poses', 'flexibility', 'full body', 'yoga mat', 'beginner', 600, 120, '/images/exercises/yoga-flow.jpg', '/videos/exercises/yoga-flow.mp4', 5, '2025-01-24 00:00:00', '2025-01-24 00:00:00');

-- Insert exercise plans
INSERT INTO exercise_plans (id, user_id, name, description, level, duration_weeks, is_public, created_at, updated_at) VALUES
(1, 4, 'Beginner Bodyweight Program', 'A simple program for those new to fitness using just bodyweight exercises', 'beginner', 4, true, '2025-02-01 00:00:00', '2025-02-01 00:00:00'),
(2, 4, 'Intermediate Strength Training', 'A balanced program to build overall strength', 'intermediate', 8, true, '2025-02-05 00:00:00', '2025-02-05 00:00:00'),
(3, 5, 'Flexibility & Mobility Focus', 'Improve your range of motion and recovery', 'beginner', 4, true, '2025-02-10 00:00:00', '2025-02-10 00:00:00'),
(4, 2, 'My Personal Plan', 'Custom workout plan for my goals', 'intermediate', 6, false, '2025-02-15 00:00:00', '2025-02-15 00:00:00');

-- Insert exercise plan days
INSERT INTO exercise_plan_days (id, exercise_plan_id, name, day_number, is_rest_day, notes, created_at, updated_at) VALUES
-- Beginner Bodyweight Program (Plan 1)
(1, 1, 'Day 1: Full Body Basics', 1, false, 'Focus on form and controlled movements', '2025-02-01 00:00:00', '2025-02-01 00:00:00'),
(2, 1, 'Day 2: Active Recovery', 2, true, 'Light stretching recommended', '2025-02-01 00:00:00', '2025-02-01 00:00:00'),
(3, 1, 'Day 3: Core Focus', 3, false, 'Emphasis on building core stability', '2025-02-01 00:00:00', '2025-02-01 00:00:00'),
(4, 1, 'Day 4: Rest', 4, true, 'Complete rest day', '2025-02-01 00:00:00', '2025-02-01 00:00:00'),
(5, 1, 'Day 5: Full Body Conditioning', 5, false, 'Higher intensity than Day 1', '2025-02-01 00:00:00', '2025-02-01 00:00:00'),
(6, 1, 'Day 6: Light Activity', 6, false, 'Very light activity, focus on recovery', '2025-02-01 00:00:00', '2025-02-01 00:00:00'),
(7, 1, 'Day 7: Rest', 7, true, 'Complete rest day', '2025-02-01 00:00:00', '2025-02-01 00:00:00'),

-- Intermediate Strength Training (Plan 2)
(8, 2, 'Day 1: Upper Body', 1, false, 'Focus on pushing movements', '2025-02-05 00:00:00', '2025-02-05 00:00:00'),
(9, 2, 'Day 2: Lower Body', 2, false, 'Emphasis on leg strength', '2025-02-05 00:00:00', '2025-02-05 00:00:00'),
(10, 2, 'Day 3: Rest', 3, true, 'Active recovery optional', '2025-02-05 00:00:00', '2025-02-05 00:00:00'),
(11, 2, 'Day 4: Pull Focus', 4, false, 'Emphasis on pulling movements', '2025-02-05 00:00:00', '2025-02-05 00:00:00'),
(12, 2, 'Day 5: Core & Cardio', 5, false, 'Balanced session for core strength and conditioning', '2025-02-05 00:00:00', '2025-02-05 00:00:00'),
(13, 2, 'Day 6: Full Body', 6, false, 'Comprehensive workout targeting all major muscle groups', '2025-02-05 00:00:00', '2025-02-05 00:00:00'),
(14, 2, 'Day 7: Rest', 7, true, 'Complete rest day', '2025-02-05 00:00:00', '2025-02-05 00:00:00');

-- Insert exercise plan items
INSERT INTO exercise_plan_items (exercise_plan_day_id, exercise_id, sets, reps, duration, "order", notes, created_at, updated_at) VALUES
-- Day 1: Full Body Basics (Plan 1)
(1, 2, 3, 10, NULL, 1, 'Focus on depth and knee alignment', '2025-02-01 00:00:00', '2025-02-01 00:00:00'),
(1, 1, 3, 8, NULL, 2, 'Modify on knees if needed', '2025-02-01 00:00:00', '2025-02-01 00:00:00'),
(1, 3, 3, NULL, '30 seconds', 3, 'Keep core engaged throughout', '2025-02-01 00:00:00', '2025-02-01 00:00:00'),
(1, 9, 2, NULL, '45 seconds', 4, 'Focus on pace rather than speed', '2025-02-01 00:00:00', '2025-02-01 00:00:00'),

-- Day 3: Core Focus (Plan 1)
(3, 3, 3, NULL, '45 seconds', 1, 'Progress from previous session', '2025-02-01 00:00:00', '2025-02-01 00:00:00'),
(3, 8, 3, NULL, '45 seconds', 2, 'Control the movement', '2025-02-01 00:00:00', '2025-02-01 00:00:00'),
(3, 9, 3, NULL, '30 seconds', 3, 'Quick pace but maintain form', '2025-02-01 00:00:00', '2025-02-01 00:00:00'),

-- Day 5: Full Body Conditioning (Plan 1)
(5, 2, 3, 12, NULL, 1, 'Increase reps from Day 1', '2025-02-01 00:00:00', '2025-02-01 00:00:00'),
(5, 1, 3, 10, NULL, 2, 'Progress from Day 1', '2025-02-01 00:00:00', '2025-02-01 00:00:00'),
(5, 3, 3, NULL, '45 seconds', 3, 'Longer hold than Day 3', '2025-02-01 00:00:00', '2025-02-01 00:00:00'),
(5, 8, 3, NULL, '45 seconds', 4, 'Control the movement', '2025-02-01 00:00:00', '2025-02-01 00:00:00'),
(5, 9, 3, NULL, '45 seconds', 5, 'Increase duration from Day 3', '2025-02-01 00:00:00', '2025-02-01 00:00:00'),

-- Day 6: Light Activity (Plan 1)
(6, 10, 1, NULL, '10 minutes', 1, 'Light stretch and mobility', '2025-02-01 00:00:00', '2025-02-01 00:00:00'),
(6, 7, 1, NULL, '15 minutes', 2, 'Light jog or brisk walk', '2025-02-01 00:00:00', '2025-02-01 00:00:00'),

-- Day 1: Upper Body (Plan 2)
(8, 1, 4, 12, NULL, 1, 'Controlled tempo', '2025-02-05 00:00:00', '2025-02-05 00:00:00'),
(8, 5, 4, 8, NULL, 2, 'Use appropriate weight', '2025-02-05 00:00:00', '2025-02-05 00:00:00'),
(8, 3, 3, NULL, '60 seconds', 3, 'Full tension throughout', '2025-02-05 00:00:00', '2025-02-05 00:00:00'),

-- Day 2: Lower Body (Plan 2)
(9, 2, 4, 15, NULL, 1, 'Full range of motion', '2025-02-05 00:00:00', '2025-02-05 00:00:00'),
(9, 6, 4, 6, NULL, 2, 'Focus on form over weight', '2025-02-05 00:00:00', '2025-02-05 00:00:00'),
(9, 7, 1, NULL, '10 minutes', 3, 'Cooldown cardio', '2025-02-05 00:00:00', '2025-02-05 00:00:00');

-- Insert nutrition plans
INSERT INTO nutrition_plans (id, user_id, name, description, duration_days, is_public, created_at, updated_at) VALUES
(1, 3, 'Balanced Nutrition Starter', 'A well-balanced nutrition plan for beginners', 7, true, '2025-02-15 00:00:00', '2025-02-15 00:00:00'),
(2, 3, 'Muscle Building Plan', 'High protein nutrition plan for muscle growth', 7, true, '2025-02-20 00:00:00', '2025-02-20 00:00:00'),
(3, 3, 'Weight Loss Program', 'Calorie-controlled plan for healthy weight loss', 14, true, '2025-02-25 00:00:00', '2025-02-25 00:00:00'),
(4, 2, 'My Custom Diet', 'Personalized nutrition based on my preferences', 7, false, '2025-03-01 00:00:00', '2025-03-01 00:00:00');

-- Insert nutrition plan days
INSERT INTO nutrition_plan_days (id, nutrition_plan_id, day_number, notes, created_at, updated_at) VALUES
-- Balanced Nutrition Starter (Plan 1)
(1, 1, 1, 'Focus on protein at breakfast to kickstart metabolism', '2025-02-15 00:00:00', '2025-02-15 00:00:00'),
(2, 1, 2, 'Emphasize complex carbs for sustained energy', '2025-02-15 00:00:00', '2025-02-15 00:00:00'),
(3, 1, 3, 'Include extra vegetables today', '2025-02-15 00:00:00', '2025-02-15 00:00:00'),
(4, 1, 4, 'Healthy fats focus day', '2025-02-15 00:00:00', '2025-02-15 00:00:00'),
(5, 1, 5, 'Higher protein day', '2025-02-15 00:00:00', '2025-02-15 00:00:00'),
(6, 1, 6, 'Balanced macronutrients', '2025-02-15 00:00:00', '2025-02-15 00:00:00'),
(7, 1, 7, 'Flexible day - adjust based on the week\'s progress', '2025-02-15 00:00:00', '2025-02-15 00:00:00'),

-- Muscle Building Plan (Plan 2)
(8, 2, 1, 'Focus on post-workout nutrition', '2025-02-20 00:00:00', '2025-02-20 00:00:00'),
(9, 2, 2, 'Higher carb day for energy', '2025-02-20 00:00:00', '2025-02-20 00:00:00'),
(10, 2, 3, 'Increase protein intake', '2025-02-20 00:00:00', '2025-02-20 00:00:00'),
(11, 2, 4, 'Focus on recovery nutrition', '2025-02-20 00:00:00', '2025-02-20 00:00:00'),
(12, 2, 5, 'Higher calorie day', '2025-02-20 00:00:00', '2025-02-20 00:00:00'),
(13, 2, 6, 'Nutrient timing focus', '2025-02-20 00:00:00', '2025-02-20 00:00:00'),
(14, 2, 7, 'Recovery nutrition day', '2025-02-20 00:00:00', '2025-02-20 00:00:00');

-- Insert nutrition plan meals
INSERT INTO nutrition_plan_meals (nutrition_plan_day_id, meal_id, meal_type, notes, "order", created_at, updated_at) VALUES
-- Day 1 of Balanced Nutrition Starter (Plan 1)
(1, 1, 'breakfast', 'Start your day with high protein', 1, '2025-02-15 00:00:00', '2025-02-15 00:00:00'),
(1, 2, 'lunch', 'Balanced midday meal', 2, '2025-02-15 00:00:00', '2025-02-15 00:00:00'),
(1, 4, 'snack', 'Afternoon energy boost', 3, '2025-02-15 00:00:00', '2025-02-15 00:00:00'),
(1, 3, 'dinner', 'Nutrient-rich dinner', 4, '2025-02-15 00:00:00', '2025-02-15 00:00:00'),

-- Day 2 of Balanced Nutrition Starter (Plan 1)
(2, 1, 'breakfast', 'Consistent protein breakfast', 1, '2025-02-15 00:00:00', '2025-02-15 00:00:00'),
(2, 5, 'lunch', 'Plant-based lunch option', 2, '2025-02-15 00:00:00', '2025-02-15 00:00:00'),
(2, 4, 'snack', 'Healthy afternoon snack', 3, '2025-02-15 00:00:00', '2025-02-15 00:00:00'),
(2, 3, 'dinner', 'Omega-rich dinner', 4, '2025-02-15 00:00:00', '2025-02-15 00:00:00'),

-- Day 1 of Muscle Building Plan (Plan 2)
(8, 1, 'breakfast', 'High protein breakfast', 1, '2025-02-20 00:00:00', '2025-02-20 00:00:00'),
(8, 2, 'lunch', 'Protein and complex carbs', 2, '2025-02-20 00:00:00', '2025-02-20 00:00:00'),
(8, 6, 'snack', 'Post-workout nutrition', 3, '2025-02-20 00:00:00', '2025-02-20 00:00:00'),
(8, 3, 'dinner', 'Protein-rich dinner', 4, '2025-02-20 00:00:00', '2025-02-20 00:00:00');

-- Insert nutrition plan food items (custom additions to meal plans)
INSERT INTO nutrition_plan_food_items (nutrition_plan_day_id, food_id, meal_type, quantity, quantity_unit, notes, "order", created_at, updated_at) VALUES
-- Additional items for Day 1 of Balanced Nutrition Starter (Plan 1)
(1, 10, 'breakfast', 1, 'cup', 'Drink with breakfast', 5, '2025-02-15 00:00:00', '2025-02-15 00:00:00'),
(1, 9, 'snack', 30, 'g', 'Mid-morning snack', 6, '2025-02-15 00:00:00', '2025-02-15 00:00:00'),

-- Additional items for Day 2 of Balanced Nutrition Starter (Plan 1)
(2, 10, 'breakfast', 1, 'cup', 'Morning antioxidants', 5, '2025-02-15 00:00:00', '2025-02-15 00:00:00'),
(2, 7, 'lunch', 0.5, 'whole', 'Add to lunch for healthy fats', 6, '2025-02-15 00:00:00', '2025-02-15 00:00:00'),

-- Additional items for Day 1 of Muscle Building Plan (Plan 2)
(8, 5, 'snack', 250, 'g', 'Mid-morning protein boost', 5, '2025-02-20 00:00:00', '2025-02-20 00:00:00'),
(8, 4, 'pre-workout', 1, 'medium', 'Eat 30 min before workout', 6, '2025-02-20 00:00:00', '2025-02-20 00:00:00');