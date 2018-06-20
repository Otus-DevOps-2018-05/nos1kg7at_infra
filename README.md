# nos1kg7at_infra
nos1kg7at Infra repository
#self-check task
ssh -t -A noskov@35.228.195.42 ssh 10.166.0.3 
#OVPN task
bastion_IP = 35.228.195.42
someinternalhost_IP = 10.166.0.3
cat << EOF >> ~/.ssh/config
Host bastion
  Hostname 35.228.195.42
  User noskov
Host someinternalhost
  Hostname 10.166.0.3
  User noskov
  ProxyJump bastion
EOF

