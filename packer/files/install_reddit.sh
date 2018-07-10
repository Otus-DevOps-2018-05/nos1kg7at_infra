#/bin/sh
git clone -b monolith https://github.com/express42/reddit.git 
cd reddit
bundle install
#create puma service
cat <<EOF> /etc/systemd/system/puma.service
[Unit]
Description=Puma Server on 9292
After=network.target

[Service]
Type=simple
User=noskov
WorkingDirectory=/home/noskov/reddit/
ExecStart=/usr/local/bin/puma --pidfile /tmp/puma.pid
ExecStop=/usr/local/bin/pumactl --pidfile /tmp/puma.pid stop
Restart=always

[Install]
WantedBy=multi-user.target
EOF
#puma service activation
systemctl daemon-reload
systemctl enable puma.service && systemctl start puma.service

