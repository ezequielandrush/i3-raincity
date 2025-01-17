#!/bin/sh

BLANK='#191a2299'
CLEAR='#de533a80'
DEFAULT='#87483480'
TEXT='#ecac8580'
WRONG='#880000bb'
VERIFYING='#9c6b3c80'

i3lock \
--insidever-color=$CLEAR     \
--ringver-color=$VERIFYING   \
\
--insidewrong-color=$CLEAR   \
--ringwrong-color=$WRONG     \
\
--inside-color=$BLANK        \
--ring-color=$DEFAULT        \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
\
--verif-color=$TEXT          \
--wrong-color=$TEXT          \
--time-color=$TEXT           \
--date-color=$TEXT           \
--layout-color=$TEXT         \
--keyhl-color=$WRONG         \
--bshl-color=$WRONG          \
\
--screen 1                   \
--blur 9                     \
--clock                      \
--radius=200                 \
--indicator                  \
--time-str="%H:%M:%S"        \
--time-size=35              \
--time-font=Ubuntu \
--time-pos="ix:iy-35" \
--date-str="%A, %Y-%m-%d"       \
--date-size=35  \
--date-font=Ubuntu \
--date-pos="tx:iy+35" \
--keylayout 1                \
--layout-size=20               \
--layout-font=Ubuntu            