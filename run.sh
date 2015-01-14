# ~/Downloads/QEMU-0.14.1-GNS3-OSX/install/bin/qemu-system-x86_64 -m 512 -cdrom core_remaster_2014dec22.iso -boot d
# ~/Downloads/QEMU-0.14.1-GNS3-OSX/install/bin/qemu-system-x86_64 \
qemu-system-x86_64 \
-m 512 \
-kernel /Users/chrissmith/tinycore/qemu/core/core_git_vim_python/bin/newiso/boot/vmlinuz \
-initrd core.gz \
-append "quiet"
