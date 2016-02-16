# RPi_ping

 - do not forget to create ~/.netrc file with:
```
machine github.com
       login <user>
       password <password>
```
 - and crone job
```
	1 * * * * /home/komissar/Scripts/RPi_ping/check_IP.sh
```
- and symlink in /etc/init.d
```
	sudo ln -s /home/komissar/Scripts/RPi_ping/check_IP.sh /etc/init.d/check_IP.sh
```
