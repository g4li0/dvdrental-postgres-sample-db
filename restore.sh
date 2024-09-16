set -e

# Restore the database from the backup file
echo "Restoring database from backup file..."
pg_restore -U "$POSTGRES_USER" -d "$POSTGRES_DB" -w /var/backups/dvdrental.tar > restore_log.txt
cat restore_log.txt
echo "Database restored successfully"