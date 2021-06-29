#!../login/loggedin /bin/csh -f
if($?PATH_INFO) then
	setenv device "$PATH_INFO:t"
endif
can --redirect --device='$device' editdevice
if($status) exit 0

if($?UPGRADE) then
	setenv RESTART
	sql "$DB" 'UPDATE device SET upgrade=NOW() WHERE device="$device"'
endif
if($?RESTART) then
	setenv MSG `message --device="$device" --command=restart`
	if(! $status) setenv MSG "Restarting"
	unsetenv device
	goto done
endif
if($?DELETE || $?FACTORY) then
	if(! $?SURE) then
		setenv MSG "Tick to say you are sure"
		goto done
	endif
	if($?FACTORY)	then
		setenv MSG `message --device="$device" --command=factory '"'"$device"'SS"'`
		if($status) goto done
	else
		setenv MSG `message --device="$device" --command=restart`
	endif
	sql "$DB" 'DELETE FROM devicegpio WHERE device=$device'
	setenv C `sql -c "$DB" 'DELETE FROM device WHERE device=$device'`
	if("$C" == "" || "$C" == "0") then
		setenv MSG "Cannot delete as in use"
		goto done
	endif
	setenv MSG Deleted
	unsetenv device
	goto done
endif
if($?devicename) then # save
	if(! $?door) setenv door false
	setenv pcb `sql "$DB" 'SELECT pcb FROM device WHERE device="$device"'`
	if($?pcb) then
		setenv nfc `sql "$DB" 'SELECT IF(nfctx="-","false","true") FROM pcb WHERE pcb=$pcb'`
	endif
	if($?nfc && ! $?nfcadmin) setenv nfcadmin false
	if($?nfc && ! $?nfctrusted) setenv nfctrusted false
	setenv allow "devicename area nfc nfcadmin door aid site"
	if($?USER_ADMIN) setenv allow "$allow nfctrusted"
	sqlwrite -v -o -n "$DB" device $allow
	setenv MSG Updated
	unsetenv device
	goto done
endif
done:
source ../types
xmlsql -C -d "$DB" head.html - foot.html << END
<h1>Device</h1>
<if not device>
<table border=1>
<tr><th>Device</th><th>Online</th><th>IP</th><th>Version</th><th>PCB</th><th>Name</th></tr>
<sql where="organisation=$SESSION_ORGANISATION" table="device LEFT JOIN pcb USING (pcb)" order=device.devicename WHERE="site=\$SESSION_SITE"><set found=1>
<tr>
<td><output name=device href="/editdevice.cgi/\$device"></td>
<td><if online><output name=online></if><if else>Last online <output name=lastonline missing="never"></if></td>
<td><output name=address></td>
<td><output name=version><if upgrade> (upgrade scheduled)</if></td>
<td><output name=pcbname></td>
<td><output name=devicename blank="Unspecified" missing="Unnamed"></td>
<td><if door=true>Door </if><if nfc=true>NFC reader </if><if nfcadmin=true> (admin)</if><if nfctrusted=true><b> (trusted)</b></if></td>
</tr>
</sql>
</table>
<if not found><p>No devices found.</p></if>
</if><if else>
<form method=post action=/editdevice.cgi><input type=hidden name=device>
<sql table=device KEY=device>
<table>
<tr><td>PCB</td><td><output name=pcbname></td></tr>
<tr><td>Name</td><td><input name=devicename ize=40 autofocus></td></tr>
<tr><td>Site</td><td><select name=site><sql table=site where="organisation=$SESSION_ORGANISATION"><option value='\$S'><output name=sitename></option></sql></select></td></tr>
<if nfc=true><tr><td>AID</td><td><select name=aid><sql table=aid where="site=\$site"><option value="\$aid"><output name=aidname></option></sql></select></td></tr></if>
<tr><td>Online</td><td><if online><output name=online></if><if else>Last online <output name=lastonline missing="never"></if><if upgrade> (upgrade scheduled)</if></td></tr>
<sql table=pcb where="pcb=\$pcb">
<if nfc=true><tr><td>Area</td><td><sql select="tag" table=area where="site=\$site"><label for=\$tag><output name=tag>:</label><input id=\$tag name=area type=checkbox value=\$tag></sql></td></tr></if>
<if nfc=true><tr><td><label for=door>Door control</label></td><td><input type=checkbox id=door name=door value=true></td></tr></if>
<if nfc=true><tr><td><label for=nfcadmin>Admin NFC reader</label></td><td><input type=checkbox id=nfcadmin name=nfcadmin value=true></td></tr></if>
<if USER_ADMIN nfc=true><tr><td><label for=nfctrusted>Trusted NFC reader</label></td><td><input type=checkbox id=nfctrusted name=nfctrusted value=true></td></tr></if>
</sql>
<sql table="device JOIN gpio USING (pcb) LEFT JOIN devicegpio ON (devicegpio.device=device.device AND devicegpio.gpio=gpio.gpio)" WHERE="device.device='\$device'">
<tr><td><output name=pinname href="/editgpio.cgi/\$device/\$gpio"></td>
<if type><td><b><output name=type $GPIOTYPEOUT><if invert=true> (inverted)</if></b><for space S="$STATELIST"><if not "\$S"=''> <output name=S></if></for></td></if>
<if not type><td><b><output name=io $GPIOIOOUT></td></if>
</tr>
</sql>
</table>
<input type=submit value="Update">
<if online><input type=submit value="Restart" name=RESTART></if>
<if not upgrade><input type=submit value="Upgrade" name=UPGRADE></if>
<input type=submit value="Delete" name=DELETE>
<if online><input type=submit value="Factory Reset" name=FACTORY></if>
<input type=checkbox name=SURE title='Tick this to say you are sure'>
</sql>
</form>
</if>
END
