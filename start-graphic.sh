# you need to set
# your-kernel-dir
# your-root-disk-file
sudo qemu-system-x86_64 -M pc -m 512M -smp 2 \
-enable-kvm -cpu host \
-kernel your-kernel-dir/arch/x86/boot/bzImage \
-append "root=/dev/vda" \
-drive file=your-root-disk-file,if=virtio \
-net nic,model=e1000 -net tap,name=vif0,ifname=tap0,downscript=no \
-vga std
