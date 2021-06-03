<h1 align="center" id="top">Steam Server Start Scripts</h1>

<p align="center">
  
  <img alt="maintained" src="https://img.shields.io/badge/Maintained%3F-yes-green.svg"/>
  
  <img alt="repo-size" src="https://img.shields.io/github/last-commit/Kamiikaze/Steam-Server-Start-Scripts"/>
  
  <img alt="issues" src="https://img.shields.io/github/issues/Kamiikaze/Steam-Server-Start-Scripts"/>
  
  <img alt="downloads-total" src="https://img.shields.io/github/downloads/Kamiikaze/Steam-Server-Start-Scripts/total"/>
  
  <img alt="repo-size" src="https://img.shields.io/github/repo-size/Kamiikaze/Steam-Server-Start-Scripts"/>

  <img alt="release-version" src="https://img.shields.io/github/v/release/Kamiikaze/steam-server-start-scripts">

</p>

<p align="center">
  
  <img alt="discord" src="https://img.shields.io/badge/Discord-Kamikaze%230264-blue.svg"/>
  
  <img alt="ask-me" src="https://img.shields.io/badge/Ask%20me-anything-56BEB8.svg"/>

  <img alt="license" src="https://img.shields.io/github/license/Kamiikaze/steam-server-start-scripts?color=56BEB8">
</p>

<!-- Status -->

<h4 align="center"> 
	Startup Script for self-hosted Steam Dedicated Servers
</h4>

<hr>

<p align="center">
  <a href="#about">About</a> &#xa0; | &#xa0; 
  <a href="#features">Features</a> &#xa0; | &#xa0;
  <a href="#starting">Starting</a> &#xa0; | &#xa0;
  <a href="#settings">Settings</a> &#xa0; | &#xa0;
  <a href="#license">License</a> &#xa0; | &#xa0;
  <a href="https://github.com/Kamiikaze" target="_blank">Author</a>
</p>

<hr>


## About ##

Enhaced batch script for starting Steam self-hosted Dedicated Servers. I suspect some Gameservers will need modifications of the script. If there are I will upload them in this repo into subfolder (a.e. /Miscreated/_start-server.bat)

If you have any Issues or suggestions, feel free to contact me via Discord or create a [New Issue](https://github.com/Kamiikaze/Steam-Server-Start-Scripts/issues/new).



## Features ##

:heavy_check_mark: Checking every 30sec if server executable is running
:heavy_check_mark: Restarts Server if not running
:heavy_check_mark: Updating Server from Steam before starting server

### Tested Games
A list Gameserver I've tested with this script. Tell me if your game isn't listed but works.
<details>
<summary>List of Games</summary>

#### List of Games
- Ark: Survival Evolved
- DayZ Standalone
- Miscreated
</details>

## Starting ##

Edit the `_start-server.bat` to match your server setup details in the following section:

```batch
:: DEFINE the following variables where applicable to your install
	TITLE SteamGame Dedicated Server
	COLOR 0A
	
	SET MySteamAppID=302200
	SET MySteamLogin=anonymous
	SET MySteamCMDPath=D:\Server Tools\SteamCmd
	
	SET MyGameServerPath=D:\Server\SteamGameServerFolder
	SET MyGameServerPathToExecutable=path\to\executable\
	SET MyGameServerExecutable=GameServer.exe
	SET MyGameServerArguments=+sv_maxplayers 50 +map islands +sv_servername "My Awesome Gameserver" -sv_port 32000
	
:: _______________________________________________________________
```


### Settings
| Option 	| Example 	| Description 	|
|-	|-	|-	|
| TITLE 	| Ark Dedicated Server 	| Sets the title of the CMD-Window. 	|
| COLOR 	| [See here for details](https://www.robvanderwoude.com/ntcolor.php) 	| Sets the color of the CMD-Window. 	|
| MySteamAppID 	| 376090 - for Ark 	| SteamAppID of the GameServer. Needed to update the Gameserver on restart. 	|
| MySteamLogin 	| anonymous 	| SteamCMD Username: Some Games need a valid useraccount or an useraccount where you own the game. If you have issues downloadig it change it, else use the default 'anonymous'. 	|
| MySteamCMDPath 	| C:\ServerTools\SteamCMD 	| Absolute Path to SteamCMD Folder (not the .exe). To start SteamCMD and the update of the Gameserver. 	|
| MyGameServerPath 	| C:\Server\SteamGameServerFolder 	| Absolute Path to the Gameserver Folder. 	|
| MyGameServerPathToExecutable 	| path\to\executable<b>\\</b> 	| Realtive Path to the Server-Executable. Leave blank if its located in the root folder of the Gameserver. <br><b>Important: Don't forget to add a backslash '\\' at the end of the path!</b> 	|
| MyGameServerExecutable 	| GameServer.exe 	| Name of the Server-Executable. 	|
| MyGameServerArguments 	| +sv_maxplayers 50 +map islands +sv_servername "My Awesome Gameserver" -sv_port 32000 	| Gameserver launch arguments. Differs by game, check the corresponding manual. 	|


## License ##

This project is under license from MIT. For more details, see the [LICENSE](LICENSE.md) file.


Made with :heart: by <a href="https://github.com/Kamiikaze" target="_blank">Kamikaze</a>

&#xa0;

<a href="#top">Back to top</a>