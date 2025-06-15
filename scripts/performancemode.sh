#! /bin/sh
sed -i 's/options nvidia "NVreg_DynamicPowerManagement=0x02"/options nvidia "NVreg_DynamicPowerManagement=0x00"/g' /etc/modprobe.d/mhwd-gpu.conf

sed -i 's/options nvidia "NVreg_DynamicPowerManagement=0x02"/options nvidia "NVreg_DynamicPowerManagement=0x00"/g' /etc/modprobe.d/nvidia-pm.conf

systemctl enable --now nvidia-powerd.service

sed -i 's/decoration:blur:enabled = false/decoration:blur:enabled = true/g' /home/mariofan/.config/hypr/hyprland.conf
sed -i 's/decoration:shadow:enabled = false/decoration:shadow:enabled = true/g' /home/mariofan/.config/hypr/hyprland.conf

powerprofilesctl set performance
