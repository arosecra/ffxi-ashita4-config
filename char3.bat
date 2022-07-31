set PLAYONLINE_HOME=D:\Software\SteamLibrary\steamapps\common\FFXINA\SquareEnix\PlayOnlineViewer
set ASHITA_HOME=D:\Software\Ashita4
copy "%PLAYONLINE_HOME%\usr\all\login_w_char3.bin" "%PLAYONLINE_HOME%\usr\all\login_w.bin"
#del /Q %ASHITA_HOME%\config\boot\*
#mkdir %ASHITA_HOME%\config\boot\
#copy "%ASHITA_HOME%\config\bootChars1\*" "%ASHITA_HOME%\config\boot"
D:
cd %ASHITA_HOME%
%ASHITA_HOME%\Ashita-cli.exe char3.ini