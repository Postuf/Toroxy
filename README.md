
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

Just type: `sudo ./install.sh` in project root

## How to use?

After installation new systemd service **toroxy** appear in local system.  
It will be enabled by default. Here is how to manage it:

- `service toroxy stop`  - Stop toroxy (disable proxy)
- `service toroxy reload` - Change identity (switch proxy)
