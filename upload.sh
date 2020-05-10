#!/bin/bash

#Fire-Fox-Send Setup

if [ -e /usr/local/bin/ffsend ]; then
	target=/usr/local/bin/ffsend;
	echo
	echo "Fire Fox Send Already Installed";
else

echo
echo "Installing Fire Fox Send";
echo
wget https://raw.githubusercontent.com/usmanmughalji/build-scripts/master/ffsend
chmod a+x ./ffsend
sudo mv ./ffsend /usr/local/bin/

fi

if [ -e kernel/out/arch/arm64/boot/Image.gz-dtb ]; then
	target=kernel/out/arch/arm64/boot/Image.gz-dtb;
	echo
	echo "File Found In Respective Path";
	echo
	echo "Uploading File Now";
	echo
	
echo "Uploading To Fire Fox Send";
echo
ffsend upload kernel/out/arch/arm64/boot/Image.gz-dtb
echo
echo "Uploading Complete On Fire Fox Send";
echo
echo "Uploading To File Push"
echo
curl --upload-file kernel/out/arch/arm64/boot/Image.gz-dtb https://filepush.co/upload/Image.gz-dtb
echo
echo "Uploading Complete On File Push";
echo
echo "Uploading To File.io"
echo
curl -F "file=@kernel/out/arch/arm64/boot/Image.gz-dtb" https://file.io
echo
echo
echo "Uploading Complete on File.io";
echo
echo "File Successfully Uploaded To All Respective File Hosting Servers"
else
	echo "File Not Found";

fi
