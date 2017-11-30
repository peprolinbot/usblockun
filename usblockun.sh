password=""
usb=""
usuario=""
usbreal="/dev/disk/by-label/$usb"
umount1="/media/$usuario"
umount2="/$usb"
umountreal="$umount1$umount2"
while true ;do
   if [ -e "$usbreal" ]
   then
     xdotool type $password
     xdotool key Return     
     while [ -e $usbreal ] ;do
        sleep 2
     done
   fi
done
