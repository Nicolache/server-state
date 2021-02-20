#!/bin/bash

folderprfix="server-state-"
name=`hostname`
mkdir -p "$folderprfix""$name"

uptime > "$folderprfix""$name"/uptime.txt
df -h > "$folderprfix""$name"/df_h.txt
docker ps > "$folderprfix""$name"/docker_ps.txt
ip a > "$folderprfix""$name"/ip_a.txt
ip r > "$folderprfix""$name"/ip_r.txt
ps ax > "$folderprfix""$name"/ps_ax.txt
sudo iptables-save > "$folderprfix""$name"/iptables-save.txt
sudo iptables -L -t nat --line-numbers -v > "$folderprfix""$name"/iptables-L-nat.txt
sudo iptables -L --line-numbers -v > "$folderprfix""$name"/iptables-L-nat.txt
