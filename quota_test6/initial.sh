mkdir scratch
sudo mount -t tmpfs -o size=128M tmpfs scratch
sudo cp ./overflow_write.sh scratch/overflow_write.sh
docker run --rm -v "$(pwd)"/scratch:/home/app -it quota_test6 /bin/bash
