@ECHO OFF

TITLE Scrcpy

ECHO ~: Scrcpy :~
ECHO.
ECHO.

::cmd /c "arp -a"

SET Lipadr="192.168.1."

SET /p ans=Do you want to enable tcpip mode? (y/n):

ECHO.

if %ans%==y (	

	ECHO Connect the device via USB
	ECHO.
	PAUSE
	ECHO.

	cmd /c "D:\scrcpy\adb.exe tcpip 5555"
	
	ECHO You can now disconnect USB
	ECHO.
	PAUSE
	ECHO.

)

SET /p Ripadr=Complete the ip address 192.168.1.?:

::SET /p Ripadr=192.168.1.?:

cmd /c "adb connect %Lipadr% %Ripadr%"

ECHO Initialising Scrcpy...
ECHO.

cmd /c "D:\scrcpy\scrcpy.exe --tcpip=%Lipadr%%Ripadr%"

ECHO If it doesn't close automatically. Press Ctrl+C