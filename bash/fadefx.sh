#!/usr/bin/env bash

#
# FadeFX - Fading effect text printer
# Bash shell script function
# Copyright (C) 2022 by Ralf Kilian
# Distributed under the MIT License (https://opensource.org/licenses/MIT)
#
# GitHub: https://github.com/urbanware-org/fadefx
# GitLab: https://gitlab.com/urbanware-org/fadefx
#

fadefx() {
    output="$1"
    color_min=$2
    color_max=$3
    fade_delay=$4
    output_left="$5"
    output_right="$6"

    color_number=$color_max
    while true; do
        if [ ${color_number} -le ${color_min} ]; then
            color_fade=0
            color_code=${color_min}
        elif [ ${color_number} -ge ${color_max} ]; then
            color_fade=1
            color_code=${color_max}
        fi

        color_code="\e[38;5;${color_number}m"
        echo -ne \
            "\e[0m${output_left}${color_code}${output}\e[0m${output_right}\r"
        sleep ${fade_delay}

        if [ ${color_fade} -eq 1 ]; then
            color_number=$(( color_number - 1 ))
        else
            color_number=$(( color_number + 1 ))
        fi
    done
}
