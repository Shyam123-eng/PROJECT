CREATE TABLE anchors (
    anchor_id SERIAL PRIMARY KEY,
    content_id INT REFERENCES content(content_id) ON DELETE CASCADE,
    
    batch_id VARCHAR(100) NOT NULL,
    
    blockchain_tx VARCHAR(42) NOT NULL,
    anchor_hash VARCHAR(255) NOT NULL,
    
    merkle_root VARCHAR(255) NOT NULL,
    irys_tx_id VARCHAR(255),
    content_count INT NOT NULL,
    
    anchored_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);