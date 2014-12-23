#!/bin/sh
mkdir -p ./bin/overlays
mkdir -p ./bin/packages
cd ./src/packages
set $FILES = ls ./src/packages/
for f in *.tcz
do
	echo $f
	unsquashfs -f $f
	cd squashfs-root
	if [ $f = "python.tcz" ]; then
		echo "*** python found: special handling:"
		echo "untar: files.tar.gz ..."
		tar xzf usr/local/share/python/files/files.tar.gz -C .
		# ln -sf usr/local/bin/python2.7 usr/bin/python
		echo "symlink: python2.7 to python ..."
		ln -sf usr/local/bin/python2.7 usr/local/bin/python
		echo "copy squashfs-root to cls_packages ..."
		cp -rf /home/cleesmith/tinycore_scripted_remaster_2/src/packages/squashfs-root /home/cleesmith/tinycore_scripted_remaster_2cls_packages/
	fi
	find | cpio -o -H newc | gzip -2 > ../../../bin/overlays/$f.gz
	cd ..
	rm -r squashfs-root
done
