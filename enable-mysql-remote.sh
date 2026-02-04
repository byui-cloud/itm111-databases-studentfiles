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

MYSQL_USER="student"

echo "Change MySQL password for user student: $MYSQL_USER"
echo

# Prompt for current password (hidden)
read -s -p "Enter CURRENT MySQL password (it should be student): " CURRENT_PASS
echo

# Prompt for new password (hidden)
read -s -p "Enter NEW MySQL password: " NEW_PASS
echo

# Confirm new password
read -s -p "Confirm NEW MySQL password: " CONFIRM_PASS
echo

if [ "$NEW_PASS" != "$CONFIRM_PASS" ]; then
  echo "❌ Passwords do not match. Exiting."
  exit 1
fi

echo "Updating password..."

mysql -u "$MYSQL_USER" -p"$CURRENT_PASS" <<EOF
ALTER USER '$MYSQL_USER'@'%' IDENTIFIED BY '$NEW_PASS';
FLUSH PRIVILEGES;
EOF

if [ $? -eq 0 ]; then
  echo "✅ Password updated successfully."
else
  echo "❌ Failed to update password. Check credentials or permissions."
  exit 1
fi

