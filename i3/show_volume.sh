#!/bin/bash

notify-send "volume "`amixer | grep Playback | awk 'NR==3 {print $5}'`
