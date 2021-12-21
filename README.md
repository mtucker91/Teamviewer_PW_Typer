# Team Viewer Password Typer 

PLEASE NOTE: this program has been tested on Windows OS only

This program was made so that a user can "paste" a password into Windows Login screen when navigating to it through Teamviewer.  What the program actually does is utilize a python library to "type" out the contents in the user's clipboard before then closing itself out (as per v1.0)


## Installation For Regular Users

1.  Download the .zip file folder named "pw_typer_installer.zip"
2.  Extract the contents
3.  Run the batch inside labled "RUNASADMIN_installer.bat"

NOTE: at this point the batch will prompt you to confirm you are running as admin before pressing any key to continue.

4.  Press any key to have the batch complete its job.

NOTE: at the end, the batch is supposed to put the shortcut on the current user's taskbar.  It has been noted for some users that this portion does not appear immediately, so a shortcut has been made to populate on the desktop as well.  This can be dragged to the taskbar to create the 'visible' icon for ease-of-access.

## Usage For Regular Users:
1.  Open the system you are trying to login to through TeamViewer.
2.  Copy the password you want to use for sign-in to your clipboard.
3.  Start the program
4.  Confirm your cursor is inside of the password field in your teamviewer window
5.  Press the CTRL key (doesn't matter which side)
6.  Confirm password types out and the program stops running.


## Installation For Programmers

The only edits made in pw_typer.py  Compiled using pyinstaller library

### Libraries Used:
```python
import pyautogui
import os
import pyperclip
import keyboard
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
