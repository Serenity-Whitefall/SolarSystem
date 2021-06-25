#!../login/loggedin --query /bin/csh -f
setenv LINK `weblink --check`
if($status) then
        setenv FAIL "The link you have used is not valid or has expired, sorry"
        source login.cgi
        exit 0
endif
unset user
setenv user "$LINK:e"
setenv USERNAME "$LINK:r"
sql SS 'UPDATE user SET email="$USERNAME" WHERE user=$user'
dologin --force --silent
if($status) then
echo "Location: ${ENVCGI_SERVER}login.cgi"
else
echo "Location: $ENVCGI_SERVER?FAIL=Updated"
endif
echo ""