# RPi_ping

do not forget to create ~/.netrc file with:

machine github.com
       login <user>
       password <password>

and crone job
	1 * * * * /home/komissar/Scripts/RPi_ping/check.sh


