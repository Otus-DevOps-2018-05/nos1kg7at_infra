# Выполнено ДЗ №11

 - [x] Основное ДЗ
 - [x] Задание со *

## В процессе сделано:
 - Установил vagrant, описали Vagrantfile
 - Переработал роли packer для vagrant
 - Установил окружение для тестирования molecule
 - Добавлен тест для проверки открытого порта MongoDB
 - Использованы базовые тесты для ролей db
 
Как запустить проект:
Запускаем после формирования структуры с описанием ролей и зависимостей
 - #cd ansible;vagrant up;pip install -r requirements.txt 
 - задаем стандартную структуру
   #cd ansible/roles/db; molecule init scenario --scenario-name default -r db -d vagrant
   #molecule create;molecule list;molecule login -h instance;molecule converge;molecule verify
 - Travis integration
   #cd ~/.ssh
   #ssh-keygen -t rsa -f google_compute_engine -C 'travis' -q -N ''
   #ls -la ~/.ssh/google_compute_engine{,.pub}
   - описание https://cloud.google.com/compute/docs/instances/adding-removing-ssh-keys
   #gcloud iam service-accounts create travis --display-name travis
   #gcloud iam service-accounts keys create ./credentials.json --iam-account travis@infra-xxxxxx.iam.gserviceaccount.com
   - created key [xxx] of type [json] as [./credentials.json] for [travis@infra-xxxxxx.iam.gserviceaccount.com]
   #gcloud projects add-iam-policy-binding infra-xxxxxx --member serviceAccount:travis@infra-xxxxxx.iam.gserviceaccount.com --role roles/editor
 - Запуск тестов:
   #cd ~/nos1kg7at_infra/ansible/roles/db
   #export P_ID=infra-xxxxxx
   #USER=travis GCE_SERVICE_ACCOUNT_EMAIL=travis@${P_ID}.iam.gserviceaccount.com GCE_CREDENTIALS_FILE=~/.ssh/credentials.json GCE_PROJECT_ID=${P_ID} molecule test
 - По окончании удаляем окружение с помощью vagrant destroy -f;molecule destroy
 Как проверить работоспособность:
 - #curl -v http://10.10.10.20:9292/

## Как запустить проект:
 - #ansible-playbook -i environments/prod/inventory playbooks/site.yml

## Как проверить работоспособность:
 - Тесты в Travis CI

## PR checklist
 - [x] Выставил label с номером домашнего задания
 - [x] Выставил label с темой домашнего задания

# Выполнено ДЗ №10

 - [x] Основное ДЗ
 - [x] Задание со *

## В процессе сделано:
 - Переопределена структура
 - Использованы файлы environments db и app
 - Использована роль nginx из community
 - Применён ansible vault 
 - Настроен lint

## Как запустить проект:
 - #ansible-playbook -i environments/prod/inventory playbooks/site.yml

## Как проверить работоспособность:
 - Тесты в Travis CI

## PR checklist
 - [x] Выставил label с номером домашнего задания
 - [x] Выставил label с темой домашнего задания
# Выполнено ДЗ №9

 - [x] Основное ДЗ
 - [x] Задание со *

## В процессе сделано:
 - Переделана первая лаба по ansible для работы через gce.py
 - Переопределена структура

## Как запустить проект:
 - # Запускаем playbook

## Как проверить работоспособность:
 - Тесты в Travis CI

## PR checklist
 - [x] Выставил label с номером домашнего задания
 - [x] Выставил label с темой домашнего задания

# Выполнено ДЗ №8

 - [x] Основное ДЗ
 - [x] Задание со *

## В процессе сделано:
 - Создал stage-окружение с помощью terraform из прошлого ДЗ
 - Установил Ansible
 - Познакомился с базовыми функциями и инвентори
 - Выполнил различные модули на подготовленной в прошлых ДЗ инфраструктуре
 - Написал простой плейбук: разница в выполнении ansible-playbook clone.yml второй раз клонирует репозиторий, удаленный ранее
Сделан файл inventory.json ./inventory2json.sh --list

## Как запустить проект:
 - #ansible all -m ping

## Как проверить работоспособность:
 - Тесты в Travis CI

## PR checklist
 - [x] Выставил label с номером домашнего задания
 - [x] Выставил label с темой домашнего задания

# Выполнено ДЗ №7

 - [x] Основное ДЗ
 - [x] Задание со *

## В процессе сделано:
 - Переопределена структура папок для деплоя прода и стейдж
 - Backend.tf определен и протестирован
 - Чтение документации по backend
 - Изучение документации по созданию своих providers

## Как запустить проект:
 - #terraform plan && terraform apply

## Как проверить работоспособность:
 - Тесты в Travis CI

## PR checklist
 - [x] Выставил label с номером домашнего задания
 - [x] Выставил label с темой домашнего задания

# Выполнено ДЗ №6

 - [x] Основное ДЗ
 - [x] Задание со *
 - [x] Задание со **

## В процессе сделано:
 - Настроен и проверен терраформ вручную
 - Настраиваем деплой приложения
 - Далее используем параметризацию с выводом внешнего IP
 - Создаем правило фаервола для 9292 порта пумы и вешаем на вм с тэгом "reddit-app"
 - Используем переменные для задания зоны, ключей
 - Проверяем форматирование #terraform fmt
 - .gitignore добавлены файлы терраформа: для проверки создаем файла example
 - Масштабируем решения для двух пользователей, чтобы использовать их публичные ключи
 - Настраиваем балансировщик с проверкой http и переменной для указания внешного адреса форвардера
 - Добавляем параметр для изменения количества вм #count

## Как запустить проект:
 - #terraform plan && terraform apply

## Как проверить работоспособность:
 - Проверяем что приложение открывается через http

## PR checklist
 - [x] Выставил label с номером домашнего задания
 - [x] Выставил label с темой домашнего задания

