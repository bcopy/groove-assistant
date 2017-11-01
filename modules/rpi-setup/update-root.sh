echo "groove" > $ROOT/etc/hostname
sed -i "s/raspberrypi/groove/" $ROOT/etc/hosts
sed -i "s/country=.*$/country=$WPA_COUNTRY/" $ROOT/etc/wpa_supplicant/wpa_supplicant.conf
echo -e "network={\n   ssid=\"$WPA_SSID\"\n   scan_ssid=1\n   psk=\"$WPA_PSK\"\n   key_mgmt=WPA-PSK\n}" >> $ROOT/etc/wpa_supplicant/wpa_supplicant.conf
echo > $BOOT/boot/ssh
