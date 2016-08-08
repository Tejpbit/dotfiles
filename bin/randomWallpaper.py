#!/usr/bin/python

import os
from os import listdir
from os.path import isfile, join
import random
from subprocess import call

import argparse



wallpapersdir= os.path.expanduser('~') + '/wallpapers'

files = [f for f in listdir(wallpapersdir)]

call(['feh', '--bg-scale', wallpapersdir + '/' + random.choice(files)])