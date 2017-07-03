#!/bin/bash
# Usage:
#   curl https://raw.githubusercontent.com/linhua55/lkl_study/master/get-rinetd.sh | bash

export RINET_URL="https://drive.google.com/uc?id=0B0D0hDHteoksVW5CemJKZVcyN1E"

if [ "$(id -u)" != "0" ]; then
    echo "ERROR: Please run as root"
    exit 1
fi

for CMD in curl iptables grep cut xargs systemctl
do
	if ! type -p ${CMD}; then
		echo -e "\e[1;31mtool ${CMD} is not installed, abort.\e[0m"
		exit 1
	fi
done

echo "1. Download rinetd-bbr from $RINET_URL"
curl -L "${RINET_URL}" >/usr/bin/rinetd-bbr
chmod +x /usr/bin/rinetd-bbr

echo "2. Generate /etc/rinetd-bbr.conf"
cat <<EOF > /etc/rinetd-bbr.conf
# bindadress bindport connectaddress connectport
0.0.0.0 443 0.0.0.0 443
0.0.0.0 80 0.0.0.0 80
EOF

echo "3. Generate /etc/systemd/system/rinetd-bbr.service"
cat <<EOF > /etc/systemd/system/rinetd-bbr.service
[Unit]
Description=rinetd with bbr
Documentation=https://github.com/linhua55/lkl_study

[Service]
ExecStart=/usr/bin/rinetd-bbr -f -c /etc/rinetd-bbr.conf raw venet0:0
Restart=always

[Install]
WantedBy=multi-user.target
EOF

echo "4. Enable rinetd-bbr Service"
systemctl enable rinetd-bbr.service

echo "5. Start rinetd-bbr Service"
systemctl start rinetd-bbr.service

if systemctl status rinetd-bbr >/dev/null; then
	echo "rinetd-bbr started."
else
	echo "rinetd-bbr failed."
fi
