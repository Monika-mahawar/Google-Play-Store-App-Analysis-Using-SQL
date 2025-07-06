-- Schema Cleanup: Dropping Unused Columns
SET SQL_SAFE_UPDATES = 0;
ALTER TABLE googleplaystore
DROP COLUMN Price,
DROP COLUMN Type;