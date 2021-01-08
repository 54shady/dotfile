#!/bin/bash

notify-send "brightness "`xbacklight | awk '{print int($0)}'`
