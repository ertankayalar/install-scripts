


cd ~/Downloads
sudo tar xvjf firefox-latest.tar.bz2 -C /opt
# sudo nano /usr/share/applications/firefox-stable.desktop


# Adding firefox-stable.desktop to Lightdm xsessions directory
cat > ./temp << "EOF"
[Desktop Entry]
Name=Firefox Stable
Comment=Web Browser
Exec=/opt/firefox/firefox %u
Terminal=false
Type=Application
Icon=/opt/firefox/browser/chrome/icons/default/default128.png
Categories=Network;WebBrowser;
MimeType=text/html;text/xml;application/xhtml+xml;application/xml;application/vnd.mozilla.xul+xml;application/rss+xml;application/rdf+xml;image/gif;image/jpeg;image/png;x-scheme-handler/http;x-scheme-handler/https;
StartupNotify=true
Actions=Private;
[Desktop Action Private]
Exec=/opt/firefox/firefox --private-window %u
EOF
sudo cp ./temp /usr/share/applications/firefox-stable.desktop;rm ./temp

sudo ln -s /opt/firefox/firefox /usr/local/bin/firefox
