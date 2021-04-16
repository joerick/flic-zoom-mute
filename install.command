#!/usr/bin/python3

import subprocess, os, sys, shutil
from pathlib import Path

plugins_dir = Path.home() / 'Library/Application Scripts/com.shortcutlabs.FlicMac'

print()

if not plugins_dir.exists():
    sys.exit("Couldn't find the Flic app's plugin dir. Do you have the Flic app installed? https://flic.io/mac-app")

plugin_name = 'co.nordprojects.flic-zoom-mute'
installed_plugin_path = plugins_dir / plugin_name


if installed_plugin_path.exists():
    print('Removing existing install...')
    shutil.rmtree(installed_plugin_path)

print('Installing...')

local_plugin_path = Path(__file__).parent / plugin_name

shutil.copytree(local_plugin_path, installed_plugin_path)

print('Done. \n\nLaunch Flic.app and choose Plugins > Reload plugins from the menu bar to use!')
print()
