- `printk`
  `printk` messages go to the kernel log message buffer, which can be exposed in a variety of ways depending on system configuration.  
  - The shell command `dmesg` will show them  
  - They should also be being copied to files in /var/log by the syslog daemon.  
