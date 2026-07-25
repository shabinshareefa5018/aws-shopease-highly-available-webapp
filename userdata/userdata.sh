#!/bin/bash

dnf update -y

dnf install -y httpd php

systemctl enable httpd
systemctl start httpd

TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" \
-H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

INSTANCE_ID=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" \
http://169.254.169.254/latest/meta-data/instance-id)

AZ=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" \
http://169.254.169.254/latest/meta-data/placement/availability-zone)

cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
<title>ShopEase AWS Project</title>
<style>
body{
font-family:Arial;
background:#f4f4f4;
text-align:center;
padding-top:60px;
}
.card{
background:white;
width:600px;
margin:auto;
padding:30px;
border-radius:12px;
box-shadow:0 0 15px rgba(0,0,0,.2);
}
h1{color:#ff9900;}
</style>
</head>
<body>
<div class="card">
<h1>ShopEase AWS Project</h1>
<h2>Web Server is Running Successfully</h2>
<p><b>Instance ID:</b> $INSTANCE_ID</p>
<p><b>Availability Zone:</b> $AZ</p>
<p>Created by Shabin Shareefa</p>
</div>
</body>
</html>
EOF
