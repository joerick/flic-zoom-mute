# flic-zoom-mute

## Control Zoom mute with a Flic button!

This is a [plugin] for the [Flic Mac app][flic-mac] that lets you control the Zoom mute setting. No more hunting for the Zoom window when you want to say something!

![Tutorial GIF](./tutorial.gif)

[plugin]: http://macplugins.flic.io/
[flic-mac]: https://flic.io/mac-app

It works through the macOS Accessibility APIs, even when Zoom is in the background. 

The plugin provides 3 actions - Mute, Unmute, and Toggle. You can assign these to buttons as you wish!

## Installation

Download this repo and run 'Install.command' to install. You can **right-click Install.command and choose Open**, or run it from the command line.

Then go to the Flic app and choose 'Reload plugins' from the 'Plugins' menu.

On the first use, you'll have to accept a security dialog, and give the Flic app the ability to control your computer using the Accessibility API - head to the Security & Privacy pane of System Preferences, find Accessibility, and check 'Flic.app'.

## Known issues

- Right now I think it'll only work when your computer's language is set to English, because it's selecting Zoom menu items by name. PRs welcome to add some more languages!
