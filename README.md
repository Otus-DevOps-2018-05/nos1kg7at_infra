# nos1kg7at_infra
nos1kg7at Infra repository
Выполнено ДЗ №4
+ - [x] Основное ДЗ
+ - [x] Задание со *
+## В процессе сделано:
    1. сделаны простые скрипты на sh для инсталяции пререквезитов для проекта
    2. на основе него сделан скрипт для провижининга и старта приложения reddit

	gcloud compute instances create reddit-app\
  --boot-disk-size=10GB \
  --image-family ubuntu-1604-lts \
  --image-project=ubuntu-os-cloud \
  --machine-type=g1-small \
  --tags puma-server \
  --restart-on-failure \
  --metadata startup-script='#!/bin/sh
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
sudo echo -e "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt update
sudo apt install -y ruby-full ruby-bundler build-essential mongodb-org
dpkg -l mongodb-org || {
	true sudo systemctl enable mongod && sudo systemctl start mongo
	}
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install && puma -d'
    3. для доступа к приложению по порту 9292 создано правило через gcloud sdk
        gcloud compute firewall-rules create default-puma-server --allow=tcp:9292 --target-tags=puma-server
	gcloud compute firewall-rules update default-puma-server --allow=tcp:9292 --target-tags=puma-server
	gcloud compute firewall-rules list |grep -i puma
+## Как запустить проект:
+ - n/a
+## Как проверить работоспособность:
#OVPN task for GCP
bastion_IP = 35.228.195.42
someinternalhost_IP = 10.166.0.3
testapp_IP = 35.228.176.76
testapp_port = 9292
+open public browser thru http://35.228.176.76:9292 to test reddit
+
+## PR checklist
+ - [x] Выставил label с номером домашнего задания
+ - [x] Выставил label с темой домашнего задания
