CREATE SCHEMA `employee_cms_hw` ;

-- Create departments table

CREATE TABLE `employee_cms_hw`.`departments` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id`));

--   Create roles table

CREATE TABLE `employee_cms_hw`.`roles` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(30) NOT NULL,
  `salary` DECIMAL NULL DEFAULT 0,
  `department_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`));
--   `department_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
--   PRIMARY KEY (`id`, `department_id`));

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
  `first_name` VARCHAR(30) NOT NULL,
  `last_name` VARCHAR(30) NOT NULL,
  `role_id` INT UNSIGNED NOT NULL,
  `manager_id` INT UNSIGNED NULL,
  PRIMARY KEY (`id`));

-- 
  ALTER TABLE `employee_cms_hw`.`employees` 
ADD INDEX `fk_emplopyees_1_idx` (`role_id` ASC) VISIBLE,
ADD INDEX `fk_employees_2_idx` (`manager_id` ASC) VISIBLE;
;
ALTER TABLE `employee_cms_hw`.`employees` 
ADD CONSTRAINT `fk_emplopyees_1`
  FOREIGN KEY (`role_id`)
  REFERENCES `employee_cms_hw`.`roles` (`id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_employees_2`
  FOREIGN KEY (`manager_id`)
  REFERENCES `employee_cms_hw`.`employees` (`id`)
  ON DELETE SET NULL
  ON UPDATE NO ACTION;