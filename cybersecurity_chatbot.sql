CREATE DATABASE IF NOT EXISTS cybersecurity_chatbot;
USE cybersecurity_chatbot;

CREATE TABLE IF NOT EXISTS tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    reminder_date DATETIME NULL,
    is_completed BOOLEAN DEFAULT FALSE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO tasks (title, description, reminder_date)
VALUES 
('Enable two-factor authentication', 'Set up 2FA for important accounts.', DATE_ADD(NOW(), INTERVAL 3 DAY));

SELECT * FROM tasks;
