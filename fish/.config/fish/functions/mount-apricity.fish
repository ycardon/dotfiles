function mount-apricity
	set -l vdi_file "/run/media/ycardon/MicroSSD/VirtualBox/Apricity OS/Apricity OS.vdi"
	set -l vdi_mount /mnt/vdi-apricity
	set -l final_mount /run/media/ycardon/ApricityVM

	if test -d $final_mount
		echo "already mounted on $final_mount"
	else
		sudo mkdir -p $vdi_mount
		sudo vdfuse -r -a -f $vdi_file $vdi_mount
		sudo mkdir -p $final_mount
		sudo mount -o loop $vdi_mount/Partition1 $final_mount
		echo "mounted to $final_mount"
	end
end
