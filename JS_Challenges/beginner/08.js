import { employees } from "../dataset.js";

function countEmployeesInDepartment(department) {
  let count = 0;
  for (let i = 0; i < employees.length; i++) {
    if (employees[i].department === department) {
      count++;
    }
  }
  return count;
}

console.log(countEmployeesInDepartment("Développement"));
