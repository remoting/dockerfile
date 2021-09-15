cat <<EOF > /etc/apt/sources.list
deb http://mirrors.163.com/debian/ bullseye main
deb-src http://mirrors.163.com/debian/ bullseye main
deb http://security.debian.org/debian-security bullseye-security main
deb-src http://security.debian.org/debian-security bullseye-security main
deb http://mirrors.163.com/debian/ bullseye-updates main
deb-src http://mirrors.163.com/debian/ bullseye-updates main
EOF

# 基础工具
apt install apt-transport-https ca-certificates curl wget vim gnupg2