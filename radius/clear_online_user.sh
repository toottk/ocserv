Use crond to clear online user every night
crontab -e
add
59 23 * * * /usr/bin/mysql -uradius -pp0radius_0p -e "DELETE FROM radius.radacct WHERE AcctStopTime='0000-00-00 00:00:00' OR AcctStopTime IS NULL;"
exit
service crond restart
