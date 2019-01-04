sudo cp ./overflow_write.sh scratch/overflow_write.sh
docker run --rm -v "$(pwd)"/scratch:/home/app -it quota_logic /bin/bash
