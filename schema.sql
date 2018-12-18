USE join_us;
CREATE TABLE users (
  email VARCHAR(255) PRIMARY KEY,
  created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO users (email) VALUES
('Katie32@yahoo.com', 'genzorg@gmail.com ')
