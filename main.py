import os

# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.


def print_hi(name):
    # Use a breakpoint in the code line below to debug your script.
    print(f'Hi, {name}')  # Press Ctrl+F8 to toggle the breakpoint.


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    print_hi('PyCharm')

    """
    
    Start Emulator
    emulator -avd Pixel_3a_Android9
    emulator -avd Pixel_3a_Android10

    
    Start Appium Server with below command
    appium -p 4723 -dc {\"adbPort\":5037,\"systemPort\":8201,\"newCommandTimeout\":0,\"automationName\":\"UiAutomator2\",\"udid\":\"emulator-5554\"}
    appium -p 4724 -dc {\"adbPort\":5038,\"systemPort\":8202,\"newCommandTimeout\":0,\"automationName\":\"UiAutomator2\",\"udid\":\"emulator-5556\"}    
    
    """




    # os.system("robot -d output --loglevel TRACE tests-included/")
    os.system("pabot --processes 2 --outputdir ParallelOutput tests-included/")


# See PyCharm help at https://www.jetbrains.com/help/pycharm/
