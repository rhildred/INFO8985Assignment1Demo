#!/bin/sh
if [ ! -d "wp-content/index.php" ]; then
    cp -r wp-content.bak/* wp-content/
    curl -L https://github.com/WordPress/sqlite-database-integration/archive/refs/heads/develop.zip -o /tmp/sqlite.zip
    mkdir -p wp-content/mu-plugins/sqlite-database-integration
    unzip /tmp/sqlite.zip -d wp-content/mu-plugins/sqlite-database-integration
fi
php -S 0.0.0.0:8000