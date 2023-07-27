# kontol
sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl unzip && wget https://raw.githubusercontent.com/Andyyuda/kontol/main/testsetup.sh && chmod +x testsetup.sh && sed -i -e 's/\r$//' testsetup.sh && screen -S testsetup ./testsetup.sh
