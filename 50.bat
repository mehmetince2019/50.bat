@echo off
chcp 65001
cls

:: Renk Ayarı: Yeşil
color 0A

:: Başlık
echo ****************************************
echo    HIZLI YARDIM ARACI - 
echo ****************************************

:MENU
echo 1. Bilgisayar Seri Numarasını, Adını, Marka ve Modelini Göster
echo 2. IP Adresini Görüntüle
echo 3. Windows Lisans Durumunu Göster
echo 4. Sistem Bilgilerini Görüntüle
echo 5. Windows Sürüm Bilgisi (winver)
echo 6. Son Format Tarihini Göster
echo 7. Disk Durumunu Kontrol Et
echo 8. Windows Güncelleme Durumunu Göster
echo 9. CPU Bilgilerini Göster
echo 10. Bellek (RAM) Kullanımını Göster
echo 11. Grup Politikalarını Güncelle (gpupdate /force)
echo 12. Kullanıcı Hesaplarını Listele
echo 13. Depolama Alanı Durumunu Göster
echo 14. Sabit Diski Tarama (chkdsk)
echo 15. Güvenlik Duvarını Kapat
echo 16. Güvenlik Duvarını Aç
echo 17. Windows Sistem Dosyalarını Onar
echo 18. Disk Temizliği Başlat (cleanmgr)
echo 19. Tüm Programları Güncelle
echo 20. Windows Store Uygulamalarını Güncelle
echo 21. Ağ DNS Önbelleğini Temizle (flushdns)
echo 22. Gereksiz Dosyaları Temizle (temp)
echo 23. RAM Optimizasyonu Yap
echo 24. Ping Testi Yap
echo 25. Tracert (Yol İzleme) Yap
echo 26. Nslookup (DNS Sorgulaması) Yap
echo 27. Netstat (Bağlantı Durumu) Göster
echo 28. ARP (Adres Çözümleme Protokolü) Tablosunu Göster
echo 29. Route (Yönlendirme Tablosu) Göster
echo 30. Nbtstat (NetBIOS Durumu) Göster
echo 31. IP Yapılandırmasını Görüntüle (all)
echo 32. IP Yapılandırmasını Serbest Bırak (release)
echo 33. IP Yapılandırmasını Yenile (renew)
echo 34. Wi-Fi Şifresini Göster
echo 35. Ağ Bağlantı Durumunu Göster
echo 36. Windows Hizmetlerini Listele
echo 37. BIOS Sürümünü Göster
echo 38. Sistem Saatini ve Tarihini Göster
echo 39. Hızlı Sistem Performans Testi
echo 40. Oturum Açmış Kullanıcıları Göster
echo 41. Mevcut Çalışan Uygulamaları Listele
echo 42. Boşta Kalan Bağlantıları Göster
echo 43. Ağ Trafiğini İzle
echo 44. Kullanıcı Yetkilerini Göster
echo 45. Bilgisayar Uptime'ını Görüntüle
echo 46. Açılış Programlarını Listele
echo 47. Kurulu Yazılımları Listele
echo 48. Çık

set /p choice=Bir seçenek girin (1-48): 

if "%choice%"=="1" goto COMPUTER_INFO
if "%choice%"=="2" goto IP
if "%choice%"=="3" goto LICENSE
if "%choice%"=="4" goto SYSINFO
if "%choice%"=="5" goto WINVER
if "%choice%"=="6" goto LAST_FORMAT_DATE
if "%choice%"=="7" goto DISK
if "%choice%"=="8" goto WINDOWSUPDATE
if "%choice%"=="9" goto CPUINFO
if "%choice%"=="10" goto MEMORY
if "%choice%"=="11" goto GPUPDATE
if "%choice%"=="12" goto USERS
if "%choice%"=="13" goto STORAGE
if "%choice%"=="14" goto CHKDSK
if "%choice%"=="15" goto DISABLE_FIREWALL
if "%choice%"=="16" goto ENABLE_FIREWALL
if "%choice%"=="17" goto SFC
if "%choice%"=="18" goto CLEANUP
if "%choice%"=="19" goto UPDATE_PROGRAMS
if "%choice%"=="20" goto UPDATE_STORE_APPS
if "%choice%"=="21" goto CLEAR_DNS
if "%choice%"=="22" goto CLEAN_TEMP_FILES
if "%choice%"=="23" goto OPTIMIZE_RAM
if "%choice%"=="24" goto PING_TEST
if "%choice%"=="25" goto TRACERT_TEST
if "%choice%"=="26" goto NSLOOKUP_TEST
if "%choice%"=="27" goto NETSTAT_TEST
if "%choice%"=="28" goto ARP_TEST
if "%choice%"=="29" goto ROUTE_TEST
if "%choice%"=="30" goto NBTSTAT_TEST
if "%choice%"=="31" goto IPCONFIG
if "%choice%"=="32" goto RELEASE_IP
if "%choice%"=="33" goto RENEW_IP
if "%choice%"=="34" goto WIFI_PASSWORD
if "%choice%"=="35" goto NETWORK_STATUS
if "%choice%"=="36" goto LIST_SERVICES
if "%choice%"=="37" goto BIOS_VERSION
if "%choice%"=="38" goto SHOW_DATE_TIME
if "%choice%"=="39" goto PERFORMANCE_TEST
if "%choice%"=="40" goto LOGGED_USERS
if "%choice%"=="41" goto LIST_PROCESSES
if "%choice%"=="42" goto IDLE_CONNECTIONS
if "%choice%"=="43" goto NETWORK_TRAFFIC
if "%choice%"=="44" goto USER_PRIVILEGES
if "%choice%"=="45" goto UPTIME
if "%choice%"=="46" goto STARTUP_PROGRAMS 
if "%choice%"=="47" goto LIST_INSTALLED_PROGRAMS
if "%choice%"=="48" goto CLS
if "%choice%"=="49" exit
goto MENU

:: Bilgisayar Seri Numarası, Bilgisayar Adı, Marka ve Modelini Göster
:COMPUTER_INFO
cls
echo wmic bios get serialnumber
pause
wmic bios get serialnumber
pause
echo hostname
hostname
pause
echo wmic computersystem get manufacturer, model
wmic computersystem get manufacturer, model
pause
goto MENU

:: IP Adresini Görüntüle
cls
:IP
CLS
pause
echo "ipconfig | findstr /i "IPv4""
pause
ipconfig | findstr /i "IPv4"
pause
goto MENU

:: Windows Lisans Durumunu Göster
:LICENSE
cls
echo slmgr /xpr
pause
slmgr /xpr
pause
echo wmic path softwarelicensingservice get OA3xOriginalProductKey
wmic path softwarelicensingservice get OA3xOriginalProductKey
pause
goto MENU

:: Sistem Bilgilerini Görüntüle
:SYSINFO
cls
echo systeminfo
pause
systeminfo
pause
goto MENU

:: Windows Sürüm Bilgisi Göster (winver)
:WINVER
cls
echo winver
pause
winver
pause
goto MENU

:: Son Format Tarihini Göster
:LAST_FORMAT_DATE
cls
echo wmic os get installdate
pause
wmic os get installdate
pause
goto MENU

:: Disk Durumunu Kontrol Et
:DISK
cls
echo wmic logicaldisk get caption, description, freespace, size
pause
wmic logicaldisk get caption, description, freespace, size
pause
goto MENU

:: Windows Güncelleme Durumunu Göster
:WINDOWSUPDATE
cls
echo wmic qfe list brief /format:table
pause
wmic qfe list brief /format:table
pause
goto MENU

:: CPU Bilgilerini Göster
:CPUINFO
cls
echo wmic cpu get caption, deviceid, name, numberofcores, maxclockspeed
pause
wmic cpu get caption, deviceid, name, numberofcores, maxclockspeed
pause
goto MENU

:: Bellek (RAM) Kullanımını Göster
:MEMORY
cls
echo wmic memorychip get capacity, speed, manufacturer
pause
wmic memorychip get capacity, speed, manufacturer
pause
goto MENU

:: Grup Politikalarını Güncelle (gpupdate /force)
:GPUPDATE
cls
echo gpupdate /force
pause
gpupdate /force
pause
goto MENU

:: Kullanıcı Hesaplarını Listele
:USERS
cls
echo net user
pause
net user
pause
goto MENU

:: Depolama Alanı Durumunu Göster
:STORAGE
cls
echo wmic logicaldisk get caption, description, freespace, size
pause
wmic logicaldisk get caption, description, freespace, size
pause
goto MENU

:: Sabit Diski Tarama (chkdsk)
:CHKDSK
cls
echo chkdsk C: /f /r /x
pause
chkdsk C: /f /r /x
pause
goto MENU

:: Güvenlik Duvarını Kapat
:DISABLE_FIREWALL
cls
echo netsh advfirewall set allprofiles state off
pause
netsh advfirewall set allprofiles state off
pause
goto MENU

:: Güvenlik Duvarını Aç
:ENABLE_FIREWALL
cls
echo netsh advfirewall set allprofiles state on
pause
netsh advfirewall set allprofiles state on
pause
goto MENU

:: Windows Sistem Dosyalarını Onar
:SFC
cls
echo sfc /scannow
pause
sfc /scannow
pause
goto MENU

:: Disk Temizliği Başlat
:CLEANUP
cls
echo cleanmgr
pause
cleanmgr
pause
goto MENU

:: Yüklü Programları Güncelle (winget)
:UPDATE_PROGRAMS
cls
echo winget upgrade --all
pause
winget upgrade --all
pause
goto MENU

:: Windows Store Uygulamalarını Güncelle
:UPDATE_STORE_APPS
cls
echo powershell -command "Get-AppxPackage | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register '$($_.InstallLocation)\AppXManifest.xml'}"
pause
powershell -command "Get-AppxPackage | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register '$($_.InstallLocation)\AppXManifest.xml'}"
pause
goto MENU

:: DNS Önbelleğini Temizle
:CLEAR_DNS
cls
echo ipconfig /flushdns
pause
ipconfig /flushdns
pause
goto MENU

:: Geçici Dosyaları Temizle
:CLEAN_TEMP_FILES
cls
echo del /q /f /s %temp%\*
pause
del /q /f /s %temp%\*
pause
goto MENU

:: RAM Optimizasyonu Yap
:OPTIMIZE_RAM
cls
echo "RAM optimize ediliyor..."
pause
echo.
pause
goto MENU

:: Ping Testi Yap
:PING_TEST
cls
echo ping google.com
ping google.com
pause
goto MENU

:: Tracert (Yol İzleme) Yap
:TRACERT_TEST
cls
echo tracert google.com
pause
tracert google.com
pause
goto MENU

:: Nslookup (DNS Sorgulaması) Yap
:NSLOOKUP_TEST
cls
echo nslookup google.com
pause
nslookup google.com
pause
goto MENU

:: Netstat (Bağlantı Durumu) Göster
:NETSTAT_TEST
cls
echo netstat -ano
pause
netstat -ano
pause
goto MENU

:: ARP Tablosunu Göster
:ARP_TEST
cls
echo arp -a
arp -a
pause
goto MENU

:: Route Tablosunu Göster
:ROUTE_TEST
cls
echo route print
pause
route print
pause
goto MENU

:: Nbtstat (NetBIOS Durumu) Göster
:NBTSTAT_TEST
cls
echo nbtstat -n
pause
nbtstat -n
pause
goto MENU

:: IP Yapılandırmasını Görüntüle
:IPCONFIG
cls
echo ipconfig /all
pause
ipconfig /all
pause
goto MENU

:: IP Yapılandırmasını Serbest Bırak
:RELEASE_IP
cls
echo ipconfig /release
pause
ipconfig /release
pause
goto MENU

:: IP Yapılandırmasını Yenile
:RENEW_IP
cls
echo ipconfig /renew
pause
ipconfig /renew
pause
goto MENU

:: Wi-Fi Şifresini Göster
:WIFI_PASSWORD
cls
echo netsh wlan show profiles
pause
netsh wlan show profiles
pause
goto MENU

:: Ağ Bağlantı Durumunu Göster
:NETWORK_STATUS
cls
echo netstat -an
pause
netstat -an
pause
goto MENU

:: Windows Hizmetlerini Listele
:LIST_SERVICES
cls
echo sc query
pause
sc query
pause
goto MENU

:: BIOS Sürümünü Göster
:BIOS_VERSION
cls
echo wmic bios get smbiosbiosversion
pause
wmic bios get smbiosbiosversion
pause
goto MENU

:: Sistem Saatini ve Tarihini Göster
:SHOW_DATE_TIME
cls
echo date /t
pause
date /t
echo time /t
pause
time /t
pause
goto MENU

:: Hızlı Sistem Performans Testi
:PERFORMANCE_TEST
cls
echo winsat formal
pause
winsat formal
pause
goto MENU

:: Oturum Açmış Kullanıcıları Göster
:LOGGED_USERS
cls
echo query user
pause
query user
pause
goto MENU

:: Mevcut Çalışan Uygulamaları Listele
:LIST_PROCESSES
cls
echo tasklist
pause
tasklist
pause
goto MENU

:: Boşta Kalan Bağlantıları Göster
:IDLE_CONNECTIONS
cls
echo netstat -an | find "TIME_WAIT"
pause
netstat -an | find "TIME_WAIT"
pause
goto MENU

:: Ağ Trafiğini İzle
:NETWORK_TRAFFIC
cls
echo netstat -e
pause
netstat -e
pause
goto MENU

:: Kullanıcı Yetkilerini Göster
:USER_PRIVILEGES
cls
echo net user %username%
pause
net user %username%
pause
goto MENU

:: Bilgisayar Uptime'ını Görüntüle
:UPTIME
cls
echo systeminfo | find "System Boot Time"
pause
systeminfo | find "System Boot Time"
pause
goto MENU

:: Açılış Programlarını Listele
:STARTUP_PROGRAMS
cls
echo wmic startup get caption, command
pause
wmic startup get caption, command
pause
goto MENU

:: Kurulu Yazılımları Listele
:LIST_INSTALLED_PROGRAMS
cls
echo wmic product get name, version
pause
wmic product get name, version
pause
goto MENU


:: CLS
:CLS
cls
echo CLS
pause
CLS
pause
goto MENU
