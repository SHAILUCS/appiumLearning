# SOURCES:
https://www.youtube.com/watch?v=R48_UFeY0cM
https://www.youtube.com/watch?v=i1tQ1pjEFWw
http://www.automationtestinghub.com/apppackage-and-appactivity-name/
http://www.automationtestinghub.com/install-additional-android-sdk-tools/

# Steps to setup Appium on Ubuntu 18.04 LTS

## Prerequisite for Appium setup
  - Install open JDK on ubu 1.8 version & 64/32 bit, based on the OS Arch type
    - Follow Google for how to install Java
    - Set path for Java >> If path is set correctly It should display below output 
    - On terminal
    ```shell
    $ echo $JAVA_HOME
    /usr/lib/jvm/java-1.8.0-openjdk-amd64
    ```
  - Install Android SDK
    - Download the tar.gz ball from Android SDK Site(https://developer.android.com/studio)
    - Unzip the tar file, and follow the instructions written inside the readme file
    - Open Terminal in {unzipped android sdk}/bin folder
    - Run the following command to open the Android SDK
    ```shell
    $ ./studio.sh
    ```
    - Let it download all the required files {All the files will be downloaded in /home/user/Android/sdk}
    ```shell
    $ echo $HOME
    /home/user
    ```
    - Setup Path for Android SDK(ANDROID_HOME, Platform-tools, and Tools)
    - On terminal
    ```shell
    $ export ANDROID_HOME=$HOME/Android/sdk
    $ export PATH=$PATH:$ANDROID_HOME/build-tools
    ```
    - Check the Path is displaying in the output of below command 
    ```shell
    $ echo $PATH
    ```
    
    - Setting path of Android sdk permanently
    ```shell
    $ gedit ~/.bashrc
    ```
    
      - Add below lines at the bottom of the file and save and close
      ```shell
      export ANDROID_HOME=$HOME/Android/Sdk
      export PATH=$PATH:$ANDROID_HOME/build-tools
      ```
    
# Starting Emulator using Android SDK    
### Open Android SDK
  - To open Android SDK, go to extracted android-studio/bin folder and open terminal
  - Run below command
  ```shell
  $ ./studio.sh
  ```

### Create a Blank Android Project

### Press ctrl + shift + A >> type AVD Manager >> Hit Enter key
  - Create a "new virtual device"
  - Select any android device 
  - Now let the files download(Approx file size is 1.1 GB)

### Grant current user access to /dev/kvm
  - Open Terminal
  - Run below command
  ```shell
  $ su
  Enter Password
  cd /dev
  ls -l | grep kvm
  sudo chmod guo+rwx kvm
  Enter Password
  ```


# Android Debug Bridge (adb)
https://mobikul.com/install-external-app-android-emulator/
### Install the adb to Install the .Apk File On The Emulator
  ```shell
  sudo apt install adb
  adb kill-server
  ```

  - To install the .apk file on Emulator
  ```shell
  /home/Android/sdk/platform-tools $ ./adb install App.apk
  ```

  - To view the logs of the Emulator
  ```shell
  adb logcat > logfile.txt
  ```

# UIAutomation Viewer
### To Install UIAutomation Viewer on Ubuntu
  ```shell
  sudo apt-get update
  sudo apt-get install androidsdk-uiautomatorviewer
  ```

 

  
  
  
    
Download and run the Appium Server    
