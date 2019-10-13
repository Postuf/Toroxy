
```
 _____                       
|_   _|__  _ __ _____  ___   _ 
  | |/ _ \| '__/ _ \ \/ / | | |
  | | (_) | | | (_) >  <| |_| |
  |_|\___/|_|  \___/_/\_\\__, |
                         |___/ 
```

Tor-based TCP-proxy for linux.   
Traffic won`t leave the system without Tor network.

## How it works?

Runs as systemd service, watches traffic rules violations and IP cnanges.  
Immediatelly notifies via UI if any changes detected.

All TCP traffic redirects to Tor. UDP traffic just blocks. 

![Ip Changed](meta/screens/ip_changed.png?raw=true "Ip Changed")
![Rules Violation](meta/screens/rule_violation.png?raw=true "Rules Violation")

UI tested on:

 - Ubuntu 12+
 - Ubuntu Parallels
 - Debian 7+

Installation workflow:  
1. Install dependencies  
2. Run Tor service  
3. Run Toroxy as watcher service which starts on any system boot  

## Dependencies

 - systemd
 - iptables
 - iptables-persistent
 - python3
 - pip3
 - tor

## How to install?

1. `git clone https://github.com/Postuf/Toroxy.git`
2. `cd Toroxy`
3. `sudo ./install.sh`

## How to check?

`curl ident.me`

## How to uninstall?

Run `sudo ./uninstall.sh` in Toroxy root

## How to use?

After installation new systemd service **toroxy** appear in local system.  
It will be enabled by default. Here is how to manage it:

- Stop toroxy (disable proxy): `toroxy stop` OR `service toroxy stop`
- Change identity (switch proxy): `toroxy switch` OR `service toroxy reload` 
