# Finder Toolbar Shortcuts

A collection of shortcuts for the Finder toolbar.

<div style="text-align: center; width: 100%; max-width: 900px"><img src="https://github.com/steveruizok/finder-toolbar-shortcuts/blob/master/images/screenshot.png?raw=true"/></div>

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Support](#support)
- [Contributing](#contributing)

## Installation

Download this repository, unzip and open the folder. In the folder, you'll find two applications, `open_terminal.app` and `open_vscode.app`. These apps are designed to be run from the Finder toolbar.

To add these apps to the Finder toolbar:

- Move the apps to the Applications folder.
- Open the Applications folder.
- Press and hold the Command key, then drag each app to the Finder toolbar until you see a green plus sign.

If you'd like to remove these shortcuts:

- Press and hold the Command key, then drag the item you wish to remove out of the toolbar.
- Delete the app if desired.

## Usage

- In Finder, navigate to the folder you wish to open (in Terminal or Visual Studio Code).
- Click the `>_` shortcut to open the current folder in Terminal.
- Or Click the `</>` shortcut to open the current folder in Visual Studio Code.

⚠️ Depending on your security preferences, you may have to explicitly give these applications permission to run. In the Applications folder, select the app and press Command + O (or File > Open) to manually open the application, then select Open in the following dialog. You will only have to do this once for each app.

⚠️ The first time you run each shortcut, you'll be asked to give permission for certain automation tasks. If you have concerns about security, feel free to inspect and compile your own copies from the provided scripts.

⚠️ Opening a folder in Visual Studio Code requires first installing Visual Studio Code's [shell command](https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line).

## Extension

Feel free to contribute other shortcuts to this project or suggest them on this project's [issues](https://github.com/steveruizok/toolbar-code-shortcuts/issues/new) page.

The scripts behind each app are available in the `scripts` folder. They are written in [JSA](https://github.com/JXA-Cookbook/JXA-Cookbook) and may be compiled using the Script Editor app (in `⁨Applications⁩ ▸ ⁨Utilities⁩`).

Icons are available in the `icons` folder, along with the Sketch file used to create them. Follow [this guide](https://support.apple.com/kb/PH25383?locale=en_US) to add your icon to your application, or to change the icon for the apps in this repo.

## Support

Please [open an issue](https://github.com/steveruizok/toolbar-code-shortcuts/issues/new) for support.

## Contributing

Please contribute using [Github Flow](https://guides.github.com/introduction/flow/). Create a branch, add commits, and [open a pull request](https://github.com/steveruizok/toolbar-code-shortcuts/compare/).
