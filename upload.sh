#!/bin/bash


if [ -e root/kernel/out/arch/arm64/boot/Image.gz-dtb ]; then
	target=root/kernel/out/arch/arm64/boot/Image.gz-dtb;
	echo
	echo "File Found";
	echo
	echo "Uploading File Now"
	echo
	
curl --upload-file root/kernel/out/arch/arm64/boot/Image.gz-dtb https://filepush.co/upload/Image.gz-dtb
echo
curl -F "file=@root/kernel/out/arch/arm64/boot/Image.gz-dtb" https://file.io
echo
echo
curl -F'file=@root/kernel/out/arch/arm64/boot/Image.gz-dtb' https://0x0.st
echo
echo "File Uploaded Successfully"
else
	echo "File Not Found";

fi
