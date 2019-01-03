dd if=/dev/zero of=scratch.ext4 bs=1M count=128
mkfs.ext4 -F scratch.ext4
mkdir tmpfolder
sudo mount scratch.ext4 tmpfolder -o loop
sudo cp ./overflow_write.sh tmpfolder/overflow_write.sh
docker run --rm -v "$(pwd)"/tmpfolder:/home/app -it quota_test /bin/bash
