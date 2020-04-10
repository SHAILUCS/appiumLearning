https://www.youtube.com/watch?v=R48_UFeY0cM

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
    - Download the tar.gz ball from Android SDK Site
    - Unzip the tar file, and follow the instructions written inside the readme file
    - Setup Path for Android SDK(ANDROID_HOME, Platform-tools, and Tools)
    - On terminal
    ```shell
    $ export ANDROID_HOME=$HOME/usr/Android/sdk
    $ export PATH=$PATH:$ANDROID_HOME/tools
    ```
