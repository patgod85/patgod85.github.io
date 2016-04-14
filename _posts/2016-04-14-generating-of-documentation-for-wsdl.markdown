---
layout: post
title:  "Генерация документации по WSDL"
date:   2016-04-14 16:00:59 +0300
category: post
tags: cygwin, documentation, wcf, wsdl, xsl
comments: true
---

В проекте на php имею WCF веб-сервис. Хочу для него сгенерировать документацию для программиста. Окружение - Windows.

Полезные ссылки:

- <http://tomi.vanek.sk/index.php?page=wsdl-viewer>
- <https://github.com/onesto/wsdl-viewer>

Алгоритм:

 1. В своём Cygwin устанавливаем пакет **libxslt**. После этого станет доступна команда **xsltproc**.
 1. Скачиваем наш wsdl файл.
 1. Далее клонируем вышеприведённый проект
 1. Используем файл wsdl-viwer.xsl из полученного проекта выполняем команду:
    
    ```xsltproc wsdl-viewer.xsl your.wsdl > your.html```
