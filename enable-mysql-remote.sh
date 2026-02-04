#!/bin/bash

set -e

CONF_FILE="/etc/mysql/mysql.conf.d/mysqld.cnf"
BACKUP_FILE="/etc/mysql/mysql.conf.d/mysqld.cnf.bak.$(date +%F-%H%M%S)"

echo "Backing up MySQL config to $BACKUP_FILE"
sudo cp "$CONF_FILE" "$BACKUP_FILE"

echo "Updating bind-address setting..."

# Comment out any existing bind-address lines
sudo sed -i \
  -e 's/^[[:space:]]*bind-address[[:space:]]*=/#bind-address =/g' \
  "$CONF_FILE"

# Add bind-address = 0.0.0.0 if not already present
if ! grep -q "^bind-address = 0.0.0.0" "$CONF_FILE"; then
  echo "bind-address = 0.0.0.0" | sudo tee -a "$CONF_FILE" > /dev/null
fi

echo "Restarting MySQL service..."
if command -v systemctl >/dev/null 2>&1; then
  sudo systemctl restart mysql
else
  sudo service mysql restart
fi

echo "Done. MySQL is now listening on 0.0.0.0"
