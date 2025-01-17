#!/usr/bin/env bash

## Author  : Aditya Shakya (adi1090x)
## Github  : @adi1090x
#
## Applets : Favorite Applications

# Import Current Theme
#
#type="$HOME/.config/rofi/themes"
#style='applets.rasi'
#theme="$type/$style"

source ~/.config/rofi/applets/applets_env.sh

# Theme Elements
prompt=' Applications'

list_col='1'
list_row='6'

# CMDs (add your apps here)
term_cmd='alacritty'
vscode_cmd='code'
steam_cmd='steam'
web_cmd='firefox-esr'
spotify_cmd='spotify'
discord_cmd='discord'

option_1=" Terminal <span weight='light' size='small'><i>($term_cmd)</i></span>"
option_2=" VsCode <span weight='light' size='small'><i>($vscode_cmd)</i></span>"
option_3=" Steam <span weight='light' size='small'><i>($steam_cmd)</i></span>"
option_4=" Browser <span weight='light' size='small'><i>($web_cmd)</i></span>"
option_5=" Spotify <span weight='light' size='small'><i>($spotify_cmd)</i></span>"
option_6=" Discord <span weight='light' size='small'><i>($discord_cmd)</i></span>"


# Rofi CMD
rofi_cmd() {
	rofi -theme-str "listview {columns: $list_col; lines: $list_row;}" \
		-dmenu \
		-p "$prompt" \
		-markup-rows \
		-theme ${theme}
}

# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$option_1\n$option_2\n$option_3\n$option_4\n$option_5\n$option_6" | rofi_cmd
}

# Execute Command
run_cmd() {
	if [[ "$1" == '--opt1' ]]; then
		${term_cmd}
	elif [[ "$1" == '--opt2' ]]; then
		${vscode_cmd}
	elif [[ "$1" == '--opt3' ]]; then
		${steam_cmd}
	elif [[ "$1" == '--opt4' ]]; then
		${web_cmd}
	elif [[ "$1" == '--opt5' ]]; then
		${spotify_cmd}
	elif [[ "$1" == '--opt6' ]]; then
		${discord_cmd}
	fi
}

# Actions
chosen="$(run_rofi)"
case ${chosen} in
    $option_1)
		run_cmd --opt1
        ;;
    $option_2)
		run_cmd --opt2
        ;;
    $option_3)
		run_cmd --opt3
        ;;
    $option_4)
		run_cmd --opt4
        ;;
    $option_5)
		run_cmd --opt5
        ;;
    $option_6)
		run_cmd --opt6
        ;;
esac
