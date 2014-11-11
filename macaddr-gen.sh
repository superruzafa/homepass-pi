#!/bin/bash

seq 0 255 | xargs -L 1 printf "4E:53:50:4F:4F:%02X\n"
