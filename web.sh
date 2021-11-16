#!/bin/sh
sudo apt update -y
sudo apt install apache2 -y
cat <<EOF > /var/www/html/index.html
<html>
<body>
<p>hostname is: $(hostname)</p>
</body>
</html>
EOF