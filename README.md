# Bad Zone-AntiDDoS (Stop bad ASN attack your server)
Little bash script, for block ip/subnet of bad ASN (What using Stressers)
> Me are happy if you want to help me with this script! Or any fork, are encouraged

⚠️ Beta version are not accurate

* Blocked stresser's ASN Zone
* Firewall Protocol Authorization <b>in BETA only</b>
* Firewall Request Reason <b>in BETA only</b>
* Spookey Ports <b>in BETA only</b>

* Some hotfixes (IMAP, Bad packets, bad query) <b>in OLD/Legacy only [EOL]</b>

Supported OS:
| Status | Name |
| ------- | ----- |
| ✔️ | Red Hat 8.X [Recommended]
| ⚠️ | Debian 7 and lower 
| ✔️ | Debian 8 
| ✔️ | Debian 10 
| ❌ | Ubuntu 14.04 and lower
| ✔️ | Ubuntu 16.04
| ✔️ | Ubuntu 18.04
| ✔️ | Ubuntu 20.04
| ❌ | Ubuntu Centos6 and lower
| ✔️ | Ubuntu Centos7
| ✔️ | Ubuntu Centos8

 ✔️ - Full support/tested
 ⚠️ - Requires additional packages
 ❌ - Doesn't work at all

Installation
1. Download script_antistresser.sh 
2. Give +x permissions for bash script
3. Start script

Installation <b>in commands</b>
1. wget https://github.com/Rezanans-wow/antiddos/releases/latest/download/script_antistresser-linux64.sh
2. chmod +x script_antistresser.sh
3. ./script_antistresser.sh

Installation <b>in commands Classic</b>
1. (Can use curl, yum) wget https://raw.githubusercontent.com/Rezanans-wow/antiddos/main/script_antistresser.sh
2. chmod +x script_antistresser.sh
3. ./script_antistresser.sh

Installation if have issues
1. Download safemode_antistresser.sh
2. Give +x permissions for bash script
3. Start script

<h3>At the moment, this mini-script is not a way to protect against DDoS attacks. And only a way to block the "Bad" ASN providers, which are used by ip stressers</h3>
