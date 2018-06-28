# nos1kg7at_infra
nos1kg7at Infra repository
+# Выполнено ДЗ №3
+
+ - [x] Основное ДЗ
+ - [x] Задание со *
+
+## В процессе сделано:
+ - Пункт 1
ssh -t -A noskov@35.228.195.42 ssh 10.166.0.3
cat << EOF >> ~/.ssh/config
Host bastion
  Hostname 35.228.195.42
  User noskov
Host someinternalhost
  Hostname 10.166.0.3
  User noskov
  ProxyJump bastion
EOF
+ - Пункт 2
#OVPN task for GCP
bastion_IP = 35.228.195.42
someinternalhost_IP = 10.166.0.3

+
+## Как запустить проект:
+ - n/a
+
+## Как проверить работоспособность:
+ - n/a
+
+## PR checklist
+ - [x] Выставил label с номером домашнего задания
+ - [x] Выставил label с темой домашнего задания
