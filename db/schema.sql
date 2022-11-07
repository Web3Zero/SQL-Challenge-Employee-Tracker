CREATE SCHEMA `employee_cms_hw` ;

-- Create departments table

CREATE TABLE `employee_cms_hw`.`departments` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`));

--   Create roles table

CREATE TABLE `employee_cms_hw`.`roles` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `salary` DECIMAL NULL DEFAULT 0,
  `department_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`, `department_id`));

-- link roles id to department id
ALTER TABLE `employee_cms_hw`.`roles` 
ADD INDEX `fk_roles_1_idx` (`department_id` ASC) VISIBLE;
;
ALTER TABLE `employee_cms_hw`.`roles` 
ADD CONSTRAINT `fk_roles_1`
  FOREIGN KEY (`department_id`)
  REFERENCES `employee_cms_hw`.`departments` (`id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;

  -- employee table
CREATE TABLE `employee_cms_hw`.`employees` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(255) NOT NULL,
  `last_name` VARCHAR(255) NOT NULL,
  `role_id` INT UNSIGNED NOT NULL,
  `manager_id` INT UNSIGNED NULL,
  PRIMARY KEY (`id`));