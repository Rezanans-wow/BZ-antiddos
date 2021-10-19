![](https://i.imgur.com/dlby7pI.png)
## Bad Zone-AntiDDoS (Stop Bad ASNs from attacking your server)
#### Little bash script, that blocks ip/subnet of bad ASNs (what Stressers usually use)
> Friendly for Forks!

⚠️ Keep in mind, that this software is currently in Beta, so it doesn't reflect the final product.

### Features:
* Block Stressers ASN Zones
* Firewall Protocol Authorization <b>in BETA only</b>
* Firewall Request Reason <b>in BETA only</b>
* Firewall SSDP Protocol Killer
* Firewall UDP Resolver
* Firewall ICMP Request Control
* Spookey Ports

* Some hotfixes (IMAP, Bad packets, bad query) <b>in OLD/Legacy only [EOL]</b>

### Supported OS:
| Status | Name |
| ------- | ----- |
| ✔️ | Red Hat 8 [Recommended]
| ⚠️ | Debian 7 or lower 
| ✔️ | Debian 8 
| ✔️ | Debian 10 
| ❌ | Ubuntu 14.04 or lower
| ✔️ | Ubuntu 16.04
| ✔️ | Ubuntu 18.04
| ✔️ | Ubuntu 20.04
| ❌ | CentOS 6 or lower
| ✔️ | CentOS 7
| ✔️ | CentOS 8

 ✔️ - Full support/tested
 ⚠️ - Requires additional packages
 ❌ - Does not work at all

#### Installation
1. Download script_antistresser.sh 
2. Give +x permissions for bash script
3. Start script

#### Installation <b>in commands - 1 Step [wget/curl]</b>
1. curl -s https://raw.githubusercontent.com/Rezanans-wow/antiddos/main/script_antistresser.sh | bash

1.1 wget -qO - https://raw.githubusercontent.com/Rezanans-wow/antiddos/main/script_antistresser.sh | bash

#### Installation <b>in commands Classic</b>
1. (Can use curl, yum) wget https://raw.githubusercontent.com/Rezanans-wow/antiddos/main/script_antistresser.sh
2. chmod +x script_antistresser.sh
3. ./script_antistresser.sh

#### Installation if have issues
1. Download safemode_antistresser.sh
2. Give +x permissions for bash script
3. Start script

[![](https://i.imgur.com/s7SjO6m.png)](https://github.com/Rezanans-wow/BZ-antiddos/wiki/Cron-jobs)

✔️ Works best with CrowdSec
<h3>Keep in mind, that this script is not a proper way to secure yourself against DDoS-attacks. This software just blocks "Bad" ASN providers, which are mainly used by IP-Stressers.</h3>

[![Bash Shell](https://badges.frapsoft.com/bash/v1/bash.png?v=103)](https://github.com/ellerbrock/open-source-badges/) [![made-with-bash](https://img.shields.io/badge/Made%20with-Bash-1f425f.svg)](https://www.gnu.org/software/bash/)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/Rezanans-wow/BZ-antiddos/graphs/commit-activity)
[![Linux](https://svgshare.com/i/Zhy.svg)](https://svgshare.com/i/Zhy.svg)
[![GitHub release](https://img.shields.io/github/release/Naereen/StrapDown.js.svg)](https://github.com/Rezanans-wow/BZ-antiddos/blob/main/script_antistresser.sh)
![Hits](https://hitcounter.pythonanywhere.com/count/tag.svg?url=https://github.com/Rezanans-wow/BZ-antiddos/)
