#!/bin/bash
#Установка  Video DownloadHelper Companion App 2.0.10 для Яндекс Браузера
wget https://github.com/aclap-dev/vdhcoapp/releases/download/v2.0.10/vdhcoapp-2.0.10-linux-x86_64.tar.bz2
tar xf vdhcoapp-2.0.10-linux-x86_64.tar.bz2 -C $HOME/.local/share/
$HOME/.local/share/vdhcoapp-2.0.10/vdhcoapp install
if [ -f $HOME/.config/yandex-browser/NativeMessagingHosts/net.downloadhelper.coapp.json ] ; then
 rm $HOME/.config/yandex-browser/NativeMessagingHosts/net.downloadhelper.coapp.json
fi
echo -e '{\n"type": "stdio",\n"allowed_origins": [\n"chrome-extension://lmjnegcaeklhafolokijcfjliaokphfk/",\n"chrome-extension://pfoiagbblcbmognbkekfpodpidedkmcc/",\n"chrome-extension://jmkaglaafmhbcpleggkmaliipiilhldn/",\n"chrome-extension://fojefjolbhfidomcaelhceoldmmpcaga/"\n],\n  "name": "net.downloadhelper.coapp",\n"description": "Video DownloadHelper companion app",\n"path": "'$HOME'/.local/share/vdhcoapp-2.0.10/vdhcoapp"\n}' >> $HOME/.config/yandex-browser/NativeMessagingHosts/net.downloadhelper.coapp.json
