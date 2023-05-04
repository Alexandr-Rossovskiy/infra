# Infra - Инфраструктурный репозиторий

## Папка Packer:

Создание образов ОС Linux для Google Cloud Platform

## Папка Terraform:

Шаблон создания инфраструктуры из нескольких instances для Google Cloud Platform.
Использование переменных (inputs/outputs), подключение по SSH, правила firewall

## Папка Ansible:
Playbooks – сценарии настройки и установки ПО для нескольких instances Google Cloud Platform. 
- Playbook1 – ping серверов
- Playbook2 – установка web-сервера Apache
- Playbook3 – установка web-сервера Apache и копирование на сервер тестового кода (расчет факториала числа)
- Playbook4 – установка web-сервера Apache и копирование на сервер тестового кода (расчет факториала числа) с помощью написанной роли
