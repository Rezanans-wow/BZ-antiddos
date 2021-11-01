![](https://i.imgur.com/dlby7pI.png)
# Bad Zone-AntiDDoS (Stop bad ASN attack your server)
Little bash script, for block ip/subnet of bad ASN (What using Stressers)
> Friendly for Forks!

⚠️ Use safemode of stresser, if in process of installation you got conflicts

* Main feature - Bad ASN DB
* Firewall SSDP Protocol killer 
* Firewall UDP Resolver 
* Firewall ICMP Request control
* Spookey Ports 

* Some hotfixes (IMAP, Bad packets, bad query) <b>in OLD/Legacy only [EOL]</b>

Supported OS:
| Status | Name |
| ------- | ----- |
| ✔️ | Debian 10 
| ✔️ | Debian 8 
| ⚠️ | Debian 7 and lower 
| ✔️ | Ubuntu 20.04
| ✔️ | Ubuntu 18.04
| ✔️ | Ubuntu 16.04
| ❌ | Ubuntu 14.04 and lower
| ✔️ | Centos8
| ✔️ | Centos7
| ❌ | Centos6 and lower



 ✔️ - Full support/tested
 ⚠️ - Requires additional packages
 ❌ - Doesn't work at all

Installation
1. Download script_antistresser.sh 
2. Give +x permissions for bash script
3. Start script

Installation <b>in commands - 1 Step [wget/curl]</b>
1. curl -s https://raw.githubusercontent.com/Rezanans-wow/antiddos/main/script_antistresser.sh | bash

1.1 wget -qO - https://raw.githubusercontent.com/Rezanans-wow/antiddos/main/script_antistresser.sh | bash

Installation <b>in commands Classic</b>
1. (Can use curl, yum) wget https://raw.githubusercontent.com/Rezanans-wow/antiddos/main/script_antistresser.sh
2. chmod +x script_antistresser.sh
3. ./script_antistresser.sh

Installation if have issues
1. Download safemode_antistresser.sh
2. Give +x permissions for bash script
3. Start script

[![](https://i.imgur.com/s7SjO6m.png)](https://github.com/Rezanans-wow/BZ-antiddos/wiki/Cron-jobs)

✔️ Best work with CrowdSec
<h3>At the moment, this mini-script is not a way to protect against DDoS attacks. And only a way to block the "Bad" ASN providers, which are used by ip stressers</h3>

[![Bash Shell](https://badges.frapsoft.com/bash/v1/bash.png?v=103)](https://github.com/ellerbrock/open-source-badges/) [![made-with-bash](https://img.shields.io/badge/Made%20with-Bash-1f425f.svg)](https://www.gnu.org/software/bash/)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/Rezanans-wow/BZ-antiddos/graphs/commit-activity)
[![Linux](https://svgshare.com/i/Zhy.svg)](https://svgshare.com/i/Zhy.svg)

Version: [![GitHub release](https://img.shields.io/github/release/Naereen/StrapDown.js.svg)](https://github.com/Rezanans-wow/BZ-antiddos/blob/main/script_antistresser.sh)


![Hits](https://hitcounter.pythonanywhere.com/count/tag.svg?url=https://github.com/Rezanans-wow/BZ-antiddos/)
