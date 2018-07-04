# nos1kg7at_infra
nos1kg7at Infra repository
Выполнено ДЗ №5
  Основное ДЗ
Создал образ "reddit-base"
  Задания со звёздочкой
Переработал файл ubuntu16.json, чтобы брать переменные из variables
Создал образ на основе immutable.json "reddit-full" 
Для запуска приложения при старте инстанса использую systemd unit.
Создал create-redditvm.sh, чтобы запустить ВМ на основе reddit-full

Как проверить работоспособность:
Проверка, что открывается реддит после деплоя образа reddit-full

PR checklist
  Выставил label с номером домашнего задания
  Выставил label с темой домашнего задания
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


