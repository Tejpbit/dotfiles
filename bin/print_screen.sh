#!/bin/bash
img=$(mktemp '/tmp/img-XXXXXX.png')
import -window root $img && cat $img | xclip -selection clipboard -t image/png 
