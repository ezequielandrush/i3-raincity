# i3wm Theme

A custom theme for the [i3 Window Manager (i3wm)](https://i3wm.org/), designed to enhance your workflow and aesthetics. This theme includes a polished color scheme, carefully selected fonts, and custom configurations for a seamless user experience.

## Dependencies

Before installing the theme, ensure you have the following dependencies installed:

- **i3wm**: The window manager itself. Install it via your package manager:
  ```bash
  sudo apt install i3-wm
  ```
- **i3blocks**: For status bar functionality.
  ```bash
  sudo apt install i3blocks
  ```
- **Font Awesome**: For icon support in the status bar.
  ```bash
  sudo apt install fonts-font-awesome/testing
  ```
- **feh**: For setting wallpapers.
  ```bash
  sudo apt install feh
  ```
- **rofi**: For application launching.
  ```bash
  sudo apt install rofi
  ```
- **alacritty**: Recommended terminal emulator.
    ```bash
  sudo apt install alacritty
  ```

## Installation

Follow these steps to install the theme:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/ezequielandrush/i3-raincity.git
   cd i3-raincity
   ```

2. **Run the installer**:
   If you have existing i3wm configurations, it will back them up:
   ```bash
   chmod 755 ./install.sh
   ./install.sh
   ```
   
3. **Reload i3 Configuration**:
   Press `Mod+Shift+R` to reload i3wm with the new configuration.

## Configuration Tweaks

Customize the theme further to suit your needs:

- **Change the Wallpaper**:
  Edit the `feh` command in `~/.config/i3/config`:
  ```bash
  exec --no-startup-id feh --bg-scale /path/to/your/wallpaper.jpg
  ```

- **Modify Keybindings**:
  Update the keybindings section in the `~/.config/i3/config` file to match your preferences. For example:
  ```
  bindsym $mod+Return exec alacritty
  bindsym $mod+d exec dmenu_run
  ```

- **Customize the Status Bar**:
  Edit `~/.config/i3blocks/config` to add/remove widgets or adjust the appearance.

- **Update Font Settings**:
  Modify the font settings in `~/.config/i3/config`:
  ```
  font pango:FontAwesome 10
  ```

## Screenshots

Here are some screenshots:

Background

[Preview](screenshots/screen.jpg)

Login Menu

[Preview](screenshots/power.jpg)

Rofi Theme

[Preview](screenshots/rofi.jpg)

Apps Menu

[Preview](screenshots/apps.jpg)

Gaps config

[Preview](screenshots/gaps.jpg)


## Contributions

Feel free to submit issues or pull requests to improve the theme. Contributions are always welcome!

## License

This theme is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---

Enjoy your new i3wm theme! 😊

