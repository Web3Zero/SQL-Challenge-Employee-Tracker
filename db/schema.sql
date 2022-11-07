CREATE SCHEMA `employee_cms_hw` ;

-- Create departments table

CREATE TABLE `employee_cms_hw`.`departments` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`));

--   Create roles table

CREATE TABLE `employee_cms_hw`.`roles` (
  `id` INT UNSIGNED NOT NULL,
  `title` VARCHAR(255) NOT NULL,
  `salary` DECIMAL NULL DEFAULT 0,
  `department_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`, `department_id`));

  