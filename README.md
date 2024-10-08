# Проект: Обеспечение безопасности веб-приложения с помощью IaC

## Описание
Этот проект направлен на развертывание безопасного веб-приложения с использованием Kubernetes и IaC (Terraform, Ansible, Puppet). Веб-приложение будет защищено от сетевых атак, и будет проведено нагрузочное тестирование для проверки безопасности и производительности.

## Структура проекта:
- `terraform/`: Конфигурации для развертывания виртуальной инфраструктуры.
- `ansible/`: Плейбуки для установки и настройки сервисов на серверах.
- `puppet/`: Конфигурации для управления безопасностью и файрволом.
- `load-testing/`: Тесты для нагрузочного тестирования.
- `README.md`: Документация проекта.

## Шаги развертывания:
1. Установите Terraform, Ansible и Puppet.
2. Разверните инфраструктуру:
    ```bash
    cd terraform
    terraform init
    terraform apply
    ```
3. Настройте серверы с помощью Ansible:
    ```bash
    cd ansible
    ansible-playbook playbook.yml
    ```
4. Примените политики безопасности с помощью Puppet:
    ```bash
    puppet apply puppet/firewall.pp
    ```
5. Проведите нагрузочное тестирование:
    Откройте файл `load-testing/jmeter-test.jmx` в Apache JMeter и запустите тест.

## Тестирование безопасности:
- Проведено нагрузочное тестирование с 1000 запросами в секунду.
- Проверена защита от DDoS и SQL-инъекций.
