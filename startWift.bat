echo off
echo.Starting hostednetwork
echo.Id: MyWifi
netsh wlan set hostednetwork mode=allow ssid=MyWifi key=123456 ::你可以在这里修改Wifi名称或Wifi密码
netsh wlan start hostednetwork
echo.Start success.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v wkdxz /t reg_sz /d %0 /f ::每次开机都自动启动，若不想每次开机都启动，请删掉此行
