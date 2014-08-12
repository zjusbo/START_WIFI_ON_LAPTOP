::start wifi on your lapto automatically.
::Win 7 version 
::author: Song Bo, Eagle, Zhejiang University
::email:sbo@zju.edu.cn
echo off

echo.Starting hostednetwork
echo.Id: MyWifi
netsh wlan set hostednetwork mode=allow ssid=MyWifi key=12345678
::你可以在上一行修改Wifi名称或Wifi密码
netsh wlan start hostednetwork
echo.Start success.
::reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v wkdxz /t reg_sz /d %0 /f 
::若想每次开机自动开启Wifi，请将上面一行开头的"::"删去，保存运行即可
