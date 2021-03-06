# Socket Chat

  

This is a peer to peer chat and file-sharing app, that connects two deivce on the same network using their IP address and designated port numbers.

  

## Getting Started

  
  

### Prerequisites

  

User's android version needs to be Lolipop(5.0) or higher to run this application. The app requires INTERNAL STORAGE PERMISSION.

  

### Installing

  

Download it from Github and compile the project using Android Studio to run this project in an android device. Additionally, you can produce an apk file for portability by going to , build -> build Bundle(s)/APK (s) -> build APK (s).

  

## Running the application

  

After the Application is launched user will be presented with this screen where it will show the device's IP by default.

  

<p  align="center"  ><img  src="https://github.com/Zeo-shark/Socket-chat/blob/main/assets/Socketchat.png"  width = "200"  height = "400"/></p>

I

This requires user to put the IP address and Port address of other peer and a port address on user's side to be opened for communication. After entering necessary information, user will be taken to the main chat screen. If the app is run for the first time, user will be prompted to grant STORAGE PERMISSION before getting to the chat screen. Without it, no chat history can be stored.
  

#### About Chat Screen

This screen comes with a simple Graphical Interface. On top, the user can see his peer information and the ServerSocket Status of this end. The 'clip' button in the typing field, is used to select file from the storage device,google drive and other available online/offline storage systems. Clicking it opens the default Android File explorer where the user can select any type of files of up (8x16)MB. The received files are stored in the DOWNLOAD folder of the Internal storage.


<p  align="center"  ><img  src="https://i.imgur.com/mXTPAJi.png"  width = "200"  height = "400"/></p>

  
Sender and receiver will both be able to see the File name, after the file has been subsequently sent and received. Image files are shown as thumbnails with filenames on both ends.Audio files can be played from within the chat UI.

<p  align="center"  ><img  src="https://i.imgur.com/wtvZ7xV.png"  width = "200"  height = "400"/></p>

The app comes with a P2P action feature, where changing the background of one peer, causes the same change in the other. The user can choose all shades of the colorpalette and control Opacity accordingly.

<p  align="center"  ><img  src="https://i.imgur.com/YDOoKSU.png"  width = "200"  height = "400"/> <img  src="https://i.imgur.com/gTz7vQb.png"  width = "200"  height = "400"/></p>

On the top menu, the user will also be able to save the current chat history. The history file is stored in the download folder of the internal storage with a date-ip.txt name format. 

<p align="center"><img  src="https://i.imgur.com/3s7tXJh.png"  width = "200"  height = "400"/> 
</figure></p>

## Built With

* <a href="https://docs.oracle.com/javase/7/docs/api/java/net/Socket.html">Java Socket</a>


## Reminder 
* Always double check the ip and port number of the receiver.
* Restart the app if the internet connection is reset.
* You can't send and receive files without granting storage permissions.

## Authors

  
* Sourav Bera 
* A S V K Vinayak 
* Swastik Mishra 
  



