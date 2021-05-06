require('dotenv').config();

module.exports = {
  migrationsDirectory: 'migrations',
  driver: 'pg',
  connectionString:
    process.env.NODE_ENV === 'development'
      ? process.env.DB_URL
      : process.env.TEST_DATABASE_URL
};
