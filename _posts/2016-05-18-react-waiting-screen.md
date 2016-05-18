---
layout: post
title:  "Блок ожидания ответа от сервера на React"
category: post
tags: waiting_screen splash_screen react javascript reflux
comments: true
---

Иначе говоря **waiting screen** или **splash screen**

Имеется компонент в проекте, чтобы впредь не забыть, как его использовать, следует написать маленькую заметку.

Цель компонента:
===

После сабмита формы скрыть форму и, пока не получен ответ от сервера, отображать некоторый текст и анимацию процесса ожидания.

Код формы:
===

{% gist 6b3627cd3c51933c724a73c7c8000ba4 Component.js %}

Все используемые файлы можно найти тут <https://gist.github.com/patgod85/6b3627cd3c51933c724a73c7c8000ba4>

Необходимые действия по интеграции компонента SplashScreen.js:
===

- Подключить модуль с компонентом и модуль-контейнер событий (Reflux подход)
- Обернуть нашу форму, в компонент SplashScreen
- У компонента SplashScreen указать **id** и **message**
- Перед запросом к сервеку инициировать событие show в SplashStore (```splashActions.show(id)```)
- При получении ответа от сервера инициировать событие hide в SplashStore (```splashActions.hide(id)```)


