#!../login/loggedin --query /bin/csh -f
source ../setses
source ../setcan
xmlsql -C -d "$DB" head.html - foot.html << 'END'
<p>Solar System access control cloud service.</p>
<sql table=site WHERE="site=$SESSION_SITE">
<if not alarm=""><p><b>Alarm: <output name=alarm></b></p></if>
<if else not alarmed=""><p>Alarmed: <output name=alarm></p></if>
<if armed=""><p>Armed: <output name=armed></p></if>
<if faulted=""><p>Fault: <output name=faulted></p></if>
<if tampered=""><p>Tamper: <output name=tampered></p></if>
<if engineer=""><p>Engineering mode set: <output name=engineer></p></if>
</sql>
<ul>
<if USER_ADMIN=true><li><a href="editorganisation.cgi/0">New organisation</a></li></if>
<if SESSION_ORGANISATION AND CANEDITORGANISATION><li><a href="editorganisation.cgi/$SESSION_ORGANISATION">Edit organisation</a></li></if>
<if SESSION_ORGANISATION AND CANEDITUSER><li><a href="edituserorganisation.cgi">Edit users</a></li></if>
<hr>
<if SESSION_ORGANISATION AND USER_ADMIN=true><li><a href="editsite.cgi/0">New site</a></li></if>
<if SESSION_SITE CANEDITSITE><li><a href="editsite.cgi/$SESSION_SITE">Edit site</a></li></if>
<if SESSION_SITE CANEDITAREA><li><a href="editarea.cgi">Edit area</a></li></if>
<if SESSION_ORGANISATION AND ADMINORGANISATION><li><a href="editaid.cgi">Edit AID</a></li></if>
<hr>
<if SESSION_ORGANISATION AND ADMINORGANISATION><li><a href="editaccess.cgi">Edit Access classes</a></li></if>
<if SESSION_SITE CANEDITFOB><li><a href="editfob.cgi">Edit fobs</a></li></if>
<if USER_ADMIN=true><sql table=device where="online is not null AND nfctrusted='true'" limit=1><li><a href="provisionfob.cgi">Provision new fob</a></li></sql></if>
<hr>
<IF USER_ADMIN=true><sql table=pending limit=1 WHERE="online<NOW()"><li><a href="provisiondevice.cgi">Provision new device</a></li></sql></if>
<if SESSION_SITE CANEDITDEVICE><li><a href="editdevice.cgi">Edit devices</a></li></if>
<if USER_ADMIN=true><li><a href="editpcb.cgi">Edit PCB</a></li></if>
</ul>
<pre>
'END'
