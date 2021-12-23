#!/bin/bash

### 
## test_deployment commnand : curl 
var=`hostname -I`
new_var=`echo $var | sed -e 's/^[[:space:]]*//'`
myip="$new_var:8080"

result=`curl $myip | grep -n "<title>"`

echo $result

condition="website hosted using virtual hosts"

if [[ "$result" =~ .*"$condition".* ]]; then
	echo all running fine
else
	sudo mv /var/www/html/vhost/index.html /var/www/html/vhost/index_1.html
	sudo mv /var/www/html/vhost/index_2.html /var/www/html/vhost/index.html
fi 






############################ resources ###########################
# https://linuxize.com/post/how-to-check-if-string-contains-substring-in-bash/ 
# https://stackoverflow.com/a/31195882/8595790
# https://www.thegeekstuff.com/2009/03/15-practical-unix-grep-command-examples/
