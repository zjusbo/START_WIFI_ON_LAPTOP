rem start wifi on your lapto automatically.
rem Win 7 version 
rem email:sbo at zju.edu.cn
echo off
echo.Starting hostednetwork
echo.Id: MyWifi
netsh wlan set hostednetwork mode=allow ssid=MyWifi key=12345678
rem 
netsh wlan start hostednetwork
echo.Start success.
rem reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v wkdxz /t reg_sz /d %0 /f 
