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


