#
# /usr/local/bin/torstatus.sh
#
#!/bin/bash
#

if cmp "/home/eyestrain/.arm/tor_log" "/home/eyestrain/.arm/tor_log_old"; then

    #	mail -s "Arch1 Tor log for $(date)" m.krzystek@gmail.com < "/home/eyestrain/.arm/noreport"

    exit
    
else

	diff "/home/eyestrain/.arm/tor_log" "/home/eyestrain/.arm/tor_log_old" > "/home/eyestrain/.arm/tor_log_updates"
	echo >> "/home/eyestrain/.arm/tor_log_updates"
	echo $(acpi) >> "/home/eyestrain/.arm/tor_log_updates"
	echo >> "/home/eyestrain/.arm/tor_log_updates"
	echo $(sensors -f) >> "/home/eyestrain/.arm/tor_log_updates"
	mail -s "Arch1 Tor log for $(date)" m.krzystek@gmail.com < "/home/eyestrain/.arm/tor_log_updates"
	cp "/home/eyestrain/.arm/tor_log" "/home/eyestrain/.arm/tor_log_old"
	
fi

exit
