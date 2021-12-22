##var=`hostname -I`
#myip=$var:8080
#myip1="$var:8080"

#echo $var
#echo $myip
#echo $myip1
#echo "$var:abc"

#######################################################
######################################################

var=`hostname -I`
new_var=`echo $var | sed -e 's/^[[:space:]]*//'`
myip="$new_var:8080"
echo "localhost address: $myip"

echo "testing deployment...."
curl -v $myip

######################################################
################ resources ####################
## https://kb.vmware.com/s/article/2097039
## https://linuxhint.com/trim_string_bash/
