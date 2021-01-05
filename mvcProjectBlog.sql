CREATE TABLE categories(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    categoryName VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE authors(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    authorName VARCHAR(100) NOT NULL,
    authorEmail VARCHAR(100) NOT NULL,
    created DATETIME NOT NULL,
    updated DATETIME NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE posts(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    authorID INT UNSIGNED NOT NULL,
    categoryID INT UNSIGNED NOT NULL,
    created DATETIME NOT NULL,
    updated DATETIME NULL,
    published BOOLEAN DEFAULT FALSE,
    FOREIGN KEY fk_category(categoryID)
        REFERENCES categories(id)
            ON UPDATE RESTRICT
            ON DELETE RESTRICT,
    FOREIGN KEY fk_author(authorID)
        REFERENCES authors(id)
            ON UPDATE RESTRICT
            ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE comments(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    postID INT UNSIGNED NOT NULL,
    created DATETIME NOT NULL,
    updated DATETIME NULL,
    email VARCHAR(100) NOT NULL,
    ip VARCHAR(200) NULL,
    url VARCHAR(200) NULL,
    agent VARCHAR(200) NULL,
    website VARCHAR(200) NULL,
    approuved BOOLEAN DEFAULT FALSE,
    FOREIGN KEY fk_post(postID)
        REFERENCES posts(id)
            ON UPDATE CASCADE
            ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE roles(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    roleName VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE users(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    userName VARCHAR(100) NOT NULL,
    firstName VARCHAR(100) NOT NULL,
    lastName VARCHAR(100) NOT NULL,
    passwword VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    website VARCHAR(100) NULL,
    created DATETIME NOT NULL,
    updated DATETIME NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;