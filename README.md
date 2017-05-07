# The LinuxCNC config for milling machine M4 production Dcs<br>
Extract sources achives directory ~/linuxcnc/configs <br>
Copy the file *.desktop from the directory "./Desktop" on your desktop. <br>

Установка основной ветки с помощью git:<br>
git clone git://github.com/torvn77/LinuxCNC_Dcs_M4.git ~/linuxcnc/configs/LinuxCNC_Dcs_M4-master <br>
Установка дополнительной ветки:<br>
git clone --origin branch_name git://github.com/torvn77/LinuxCNC_Dcs_M4.git ~/linuxcnc/configs/LinuxCNC_Dcs_M4-master <br>

Обновление с помощью git:<br>
cd ~/linuxcnc/configs/LinuxCNC_Dcs_M4-master <br>
git pull git://github.com/torvn77/LinuxCNC_Dcs_M4.git <br>

Краткая справка по командам git <br>
http://www.opennet.ru/tips/info/2179.shtml <br>
http://habrahabr.ru/company/mailru/blog/267595/ <br>
Хоорошая документация по Git: <br>
http://git-scm.com/docs <br>
https://githowto.com/ru <br>

ssh-keygen -t rsa -C "torvn77@github.com" <br>
git clone git@github.com:torvn77/LinuxCNC_SUDA-ST7080.git Git/test <br>
cd Git/test <br>
echo gggg >test.txt <br>
git add .  <br>
git commit -a -m "test commit" <br>
git push <br>
exit <br>

В папке https://github.com/torvn77/LinuxCNC_SUDA-ST7080/tree/master/src/Devices/Primary есть симлинк Select
для выбора используемого устройства. <br>
Он не всегда копируется правильно и если linuxcnc не может найти файлы в папке Devices/Primary то вам надо будет его поправить. <br>
