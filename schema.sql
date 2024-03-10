CREATE TABLE product (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT(255),
    SKU  VARCHAR(255),
    category_id INT,
    inventory_id INT,
    price DECIMAL(5,2),
    discount_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    -- Added foreign key
    FOREIGN KEY (category_id) REFERENCES product_category(id),
    FOREIGN KEY (inventory_id) REFERENCES product_inventory(id),
    FOREIGN KEY (discount_id) REFERENCES discount(id)
);

CREATE TABLE product_category( 
id INT PRIMARY KEY,
name VARCHAR(255),
description TEXT(255),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
deleted_at TIMESTAMP
)

CREATE TABLE product_inventory(
id INT PRIMARY KEY,
quantity INT,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
deleted_at TIMESTAMP
)

CREATE TABLE discount(
id INT PRIMARY KEY,
name VARCHAR(255),
description TEXT(255),
discount_percent DECIMAL(5,2),
active BOOLEAN,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
deleted_at TIMESTAMP
)
