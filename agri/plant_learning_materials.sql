CREATE DATABASE IF NOT EXISTS plant_learning_materials;

USE plant_learning_materials;

CREATE TABLE videos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    embed_code TEXT NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO videos (title, embed_code, description) VALUES
    ('Introduction to Python Programming', '<iframe width="560" height="315" src="https://www.youtube.com/embed/VIDEO_ID_1" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>', 'Learn the basics of Python programming language.'),
    ('Web Development Crash Course', '<iframe width="560" height="315" src="https://www.youtube.com/embed/VIDEO_ID_2" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>', 'A comprehensive guide to web development.'),
    ('Data Science Fundamentals', '<iframe width="560" height="315" src="https://www.youtube.com/embed/VIDEO_ID_3" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>', 'Explore the world of data science and analytics.');



CREATE TABLE images (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    path VARCHAR(255) NOT NULL,
    alt VARCHAR(255) NOT NULL,
    description TEXT
);



INSERT INTO images (title, path, alt, description) VALUES
    ('Image 1', 'images/image1.jpg', 'Image 1 Alt Text', 'Description for Image 1'),
    ('Image 2', 'images/image2.jpg', 'Image 2 Alt Text', 'Description for Image 2'),
    ('Image 3', 'images/image3.jpg', 'Image 3 Alt Text', 'Description for Image 3'),
    ('Image 4', 'images/image4.jpg', 'Image 4 Alt Text', 'Description for Image 4'),
    ('Image 5', 'images/image5.jpg', 'Image 5 Alt Text', 'Description for Image 5');



CREATE DATABASE IF NOT EXISTS plant_learning_materials;

USE plant_learning_materials;

CREATE TABLE IF NOT EXISTS plants (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    topic VARCHAR(255) NOT NULL,
    short_info VARCHAR(255) NOT NULL,
    description TEXT NOT NULL
);

INSERT INTO plants (name, topic, short_info, description) VALUES
('Rose', 'Botany', 'The rose is a woody perennial flowering plant.', 'The rose is a woody perennial flowering plant of the genus Rosa, in the family Rosaceae, or the flower it bears.'),
('Sunflower', 'Botany', 'The sunflower is an annual plant in the family Asteraceae.', 'The sunflower is an annual plant in the family Asteraceae, native to the Americas.'),
('Tulip', 'Botany', 'Tulips are spring-blooming perennials.', 'Tulips are spring-blooming perennials that grow from bulbs.'),
('Lavender', 'Botany', 'Lavenders are aromatic perennial plants.', 'Lavenders are aromatic perennial plants of the genus Lavandula, in the mint family Lamiaceae.'),
('Daisy', 'Botany', 'Daisies are herbaceous perennial plants.', 'Daisies are herbaceous perennial plants in the family Asteraceae.'),
('Orchid', 'Botany', 'Orchids are a diverse and widespread family of flowering plants.', 'Orchids are a diverse and widespread family of flowering plants, with blooms that are often colorful and fragrant.'),
('Cactus', 'Botany', 'Cacti are succulent plants.', 'Cacti are succulent plants that are adapted to survive in dry and arid conditions.'),
('Bamboo', 'Botany', 'Bamboo is a fast-growing and versatile plant.', 'Bamboo is a fast-growing and versatile plant that is used for various purposes, including construction, furniture, and food.'),
('Fern', 'Botany', 'Ferns are vascular plants.', 'Ferns are vascular plants that reproduce via spores and have neither seeds nor flowers.'),
('Palm', 'Botany', 'Palms are a diverse group of plants.', 'Palms are a diverse group of plants, ranging from small shrubs to tall trees, and are found in various habitats around the world.');
