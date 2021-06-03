@echo off
	
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

goto checkServer
pause



:checkServer
tasklist /fi "imagename eq %MyGameServerExecutable%" 2>NUL | find /i /n "%MyGameServerExecutable%">NUL
if "%ERRORLEVEL%"=="0" goto loopServer
cls
echo Server is not running, taking care of it..
timeout 2 >nul
goto killServer



:loopServer
FOR /L %%s IN (30,-1,0) DO (
	cls
	echo Server is running. Checking again in %%s seconds.. 
	timeout 1 >nul
)
goto checkServer



:killServer
taskkill /f /im %MyGameServerExecutable%
goto updateServer



:updateServer
cls
echo Updating Server.
timeout 1 >nul

cls
echo Updating Server..
timeout 1 >nul

cls
echo Updating Server...
cd "%MySteamCMDPath%"

start /wait steamcmd.exe +login %MySteamLogin% +force_install_dir %MyGameServerPath% +app_update %MySteamAppID% +quit
goto startServer



:startServer
cls
echo Starting Server.
timeout 1 >nul

cls
echo Starting Server..
timeout 1 >nul

cls
echo Starting Server...
cd "%MyGameServerPath%"

start %Bin64_dedicated%%MyGameServerExecutable% %MyGameServerArguments%
timeout 1 >nul
goto checkServer