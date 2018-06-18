#!/bin/bash

IMAGE="$HOME/tmp/i3lock.png"
import -window root $IMAGE
convert $IMAGE -blur 2x3 $IMAGE
i3lock -i $IMAGE

