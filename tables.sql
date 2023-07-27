use shop;
CREATE TABLE IF NOT EXISTS `t_order_line_items` (
    `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
    `skuCode` VARCHAR(255) NOT NULL,
    `price` DECIMAL(10, 2) NOT NULL,
    `quantity` INT NOT NULL
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS `t_orders` (
    `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
    `orderNumber` VARCHAR(255) NOT NULL,
    `orderLineItemsList` JSON,
    CONSTRAINT `json_check` CHECK (JSON_VALID(`orderLineItemsList`))
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `inventory` (
    `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
    `skuCode` VARCHAR(255) NOT NULL,
    `quantity` INT NOT NULL
) ENGINE=InnoDB;