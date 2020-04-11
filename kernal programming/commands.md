- `printk`  
  `printk` messages go to the kernel log message buffer, which can be exposed in a variety of ways depending on system configuration.  
  - The shell command `dmesg` will show them  
  - They should also be being copied to files in `/var/log` by the syslog daemon.  

- `system()`  
  This is essentially a wrapper around `fork()` and `execv()`  
  e.g.:  
  ```c
  system("pwd");  // this has the same effect of typing "pwd" in console
  ```
- command for finding out addresses(i.e. function pointers) of system function "pages_rw", "pages_ro" and "sys_call_table":  
  ```bash
  sudo cat /boot/System.map-*-*-generic | grep -e set_pages_rw -e set_pages_ro -e sys_call_table
  ```
- `strace`  
  inspect the system calls that are made by a command using the “strace” UNIX command, e.g. `strace ls`  
