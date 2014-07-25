echo off
echo.Starting hostednetwork
echo.Id: MyWifi
netsh wlan set hostednetwork mode=allow ssid=MyWifi key=123456
netsh wlan start hostednetwork
echo.Start success.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v wkdxz /t reg_sz /d %0 /f
