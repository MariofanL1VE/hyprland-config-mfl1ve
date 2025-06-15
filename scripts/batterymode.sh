#! /bin/sh
sed -i 's/options nvidia "NVreg_DynamicPowerManagement=0x00"/options nvidia "NVreg_DynamicPowerManagement=0x02"/g' /etc/modprobe.d/mhwd-gpu.conf

sed -i 's/options nvidia "NVreg_DynamicPowerManagement=0x00"/options nvidia "NVreg_DynamicPowerManagement=0x02"/g' /etc/modprobe.d/nvidia-pm.conf

systemctl disable --now nvidia-powerd.service

sed -i 's/decoration:blur:enabled = true/decoration:blur:enabled = false/g' /home/mariofan/.config/hypr/hyprland.conf
sed -i 's/decoration:shadow:enabled = true/decoration:shadow:enabled = false/g' /home/mariofan/.config/hypr/hyprland.conf

powerprofilesctl set power-saver
