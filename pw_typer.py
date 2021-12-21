import pyautogui
#import time
#import sys
import os
import pyperclip
import keyboard


#def countdown(t):
#    while t:
#        mins, secs = divmod(t, 60)
#        timer = '{:02d}:{:02d}'.format(mins, secs)
#        print(timer, end="\r")
#        time.sleep(1)
#        t -= 1

if __name__ == "__main__":
    os.system('mode con: cols=55 lines=5')
    pyautogui.FAILSAFE = False
    #f = open("C:\\Users\\mtucker\\Documents\\Matt_Files\\custom_coding\\python\\pw_typer\\pw_file.txt", "r")
    #passw = f.readline()
    #f.close()
    passw = pyperclip.paste()
    print("Current clipboard content: " + passw)
    #print("waiting three seconds before typing the PW")
    #countdown(int(10))
    #pste = input("Press Ctrl+V to activate the auto-typing")
    #if keyboard.is_pressed('v'):
    while True:
        if keyboard.is_pressed('ctrl'):
            #keyboard.press('backspace')
            keyboard.write(passw)
            #input("Press Enter to continue...")
            quit()
    #keyboard.add_hotkey('ctrl+v', lambda: pyautogui.write(passw))
        #pyautogui.write(passw)
        #pyautogui.typewrite(passw,3)

    