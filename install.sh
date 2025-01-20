#!/bin/bash

# Define backup directory
BACKUP_DIR="$HOME/i3wm-config_backup"

# Create backup directory if it doesn't exist
if [ ! -d "$BACKUP_DIR" ]; then
    mkdir -p "$BACKUP_DIR"
    echo "Created backup directory: $BACKUP_DIR"
fi

# Directories to back up
CONFIG_DIRS=("$HOME/.config/i3" "$HOME/.config/i3blocks" "$HOME/.config/rofi")

# Backup config files
for DIR in "${CONFIG_DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        BASENAME=$(basename "$DIR")
        BACKUP_PATH="$BACKUP_DIR/$BASENAME"
        cp -r "$DIR" "$BACKUP_PATH"
        echo "Backed up $DIR to $BACKUP_PATH"
    else
        echo "Directory $DIR does not exist, skipping."
    fi
done

# Install new configuration files
NEW_CONFIG_DIRS=("./i3" "./i3blocks" "./rofi")
for NEW_DIR in "${NEW_CONFIG_DIRS[@]}"; do
    if [ -d "$NEW_DIR" ]; then
        BASENAME=$(basename "$NEW_DIR")
        TARGET_DIR="$HOME/.config/$BASENAME"
        mkdir -p "$TARGET_DIR"
        cp -r "$NEW_DIR/"* "$TARGET_DIR/"
        echo "Installed $NEW_DIR to $TARGET_DIR"
    else
        echo "Directory $NEW_DIR does not exist, skipping."
    fi
done

# Install fonts
FONTS_SRC="./fonts"
FONTS_DEST="$HOME/.local/share/fonts"
if [ ! -d "$FONTS_DEST" ]; then
    mkdir -p "$FONTS_DEST"
    echo "Created fonts directory: $FONTS_DEST"
fi
if [ -d "$FONTS_SRC" ]; then
    cp -r "$FONTS_SRC/"* "$FONTS_DEST/"
    echo "Installed fonts from $FONTS_SRC to $FONTS_DEST"
    # Refresh font cache
    fc-cache -fv
else
    echo "Fonts directory $FONTS_SRC does not exist, skipping."
fi

echo "Backup and installation completed."

