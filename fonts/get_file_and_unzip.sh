#! /bash/sh
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1S5r0kX2g07PHPSPI1_2LunXhF9YqhDrY' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1S5r0kX2g07PHPSPI1_2LunXhF9YqhDrY" -O fonts.zip && rm -rf /tmp/cookies.txt
echo "get fonts.zip successful"
unzip fonts.zip
echo "unzip fonts successful"

