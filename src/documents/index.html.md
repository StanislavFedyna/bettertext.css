---
title: "Типографика для сайтов"
layout: default
description: "Улучшенная типографика для голого HTML и Markdown"
styles:
    'vendor/youtube/embed-youtube.css'
scripts:
    'vendor/youtube/embed-youtube.js'
---

# Типографика для сайтов bettertext.css

[![npm version](https://badge.fury.io/js/bettertext.css.svg)](http://badge.fury.io/js/bettertext.css) [![bower version](https://badge.fury.io/bo/bettertext.css.svg)](http://badge.fury.io/bo/bettertext.css)

Делает текст опрятным, а структуру страницы легко различимой, предотвращает распространенные баги. Легко настраивается, не содержит классов и не мешает стилям шаблона. Используйте в готовом виде или как конструктор для собственной типографики.

<nav class="row">
    <div class="col-xs-shrink">
        <p>
        **Документация**  
        [Установка и подключение](#install)  
        [Настройка LESS-версии](#settings)  
        [Параметры по-умолчанию](#defaults)  
        [Кастомизация](#customization)  
        [Настроить онлайн][codepen]
        </p>
    </div>
    <div class="col-xs-shrink">
        <p>
        **О проекте**  
        [Как bettertext.css делает текст лучше](#features)  
        [Из чего состоит bettertext.css](story/)  
        [Шаблоны для дизайнеров](#templates)  
        [Ответы на вопросы](#faq)  
        [Демо-страница](testpage/)
        </p>
    </div>
</nav>

<figure class="" style="max-width: 1440px; margin: 0 calc(-10px - 4vw) 3em calc(-10px - 4vw)">
<div class="youtube-player" data-id="acVBLst3QQc">
<img srcset="
img/bettertext-demo@0.25x.png 360w,
img/bettertext-demo@0.5x.png 720w,
img/bettertext-demo@1x.png 1440w,
img/bettertext-demo@1.5x.png 2160w,
img/bettertext-demo@2x.png 2880w
" src="img/bettertext-demo@0.5x.png" alt="bettertext.css demo">
<a href="https://www.youtube.com/watch?v=acVBLst3QQc" target="_blank" class="youtube-player-play"><span>Посмотреть демонстрацию</span></a>
</div>
</figure>

<figure class="row">
<div class="col-xs-shrink">
<a class="github-button" href="https://github.com/paulradzkov/bettertext.css/releases" data-icon="octicon-cloud-download" data-size="large" aria-label="Download paulradzkov/bettertext.css on GitHub">Скачать с ГитХаба</a>
</div>
<div class="col-xs-shrink">
<a class="github-button" href="https://github.com/paulradzkov/bettertext.css/issues" data-icon="octicon-issue-opened" data-size="large" data-show-count="true" data-count-aria-label="# issues on GitHub" aria-label="Issue paulradzkov/bettertext.css on GitHub">Сообщить о баге</a>
</div>
<div class="col-xs-shrink">
<a class="github-button" href="https://github.com/paulradzkov/bettertext.css" data-icon="octicon-star" data-size="large" data-show-count="true" data-count-aria-label="# issues on GitHub" aria-label="Issue paulradzkov/bettertext.css on GitHub">Звёзды на GitHub</a>
</div>
</figure>

<a name="install" id="install"></a>

## Установить и подключить

Подключается после normalize.css и веб-шрифтов.

**Подключить через CDN**  
[`https://unpkg.com/bettertext.css@latest/bettertext.css`](https://unpkg.com/bettertext.css@latest/bettertext.css) <small>(1.7KB gzip)</small>  
[`https://unpkg.com/bettertext.css@latest/bettertext.min.css`](https://unpkg.com/bettertext.css@latest/bettertext.min.css) <small>(1.5KB gzip)</small>  
[`https://unpkg.com/bettertext.css@latest/bettertext.min.css.map`](https://unpkg.com/bettertext.css@latest/bettertext.min.css.map)

**Установить через NPM**  
`npm install bettertext.css --save-dev`

**Установить через Bower**  
`bower install bettertext.css --save`

Npm и Bower пакеты не имеют зависимостей.

<a name="features" id="features"></a>

## Как bettertext.css делает текст лучше

Bettertext.css создан для того, чтобы решить типичные проблемы дефолтных стилей браузера, предотвратить распространенные баги и подготовить качественную основу для собственной типографики.

<div class="row" style="max-width: calc(50rem + 30px);">
    <div class="col-xs-12 col-sm-6">
        <p>
        **Соблюдаются классические пропорции и теория близости**  
        Размеры заголовков вычисляются по классическим печатным пропорциям из размера основного текста и вертикального ритма. Верхние и нижние отступы подобраны с учетом теории близости. Это визуально подчеркивает структуру страницы и облегчает ориентирование по разделам страницы.
        </p>
    </div>
    <div class="col-xs-12 col-sm-6">
        <p>
        **Адаптивные размеры для заголовков**  
        Чтобы заголовки аккуратно выглядели на маленьких экранах и не было проблем с длинными словами, в типографике предусмотрен отдельный набор размеров для экранов меньше 768px.
        </p>
    </div>
    <div class="col-xs-12 col-sm-6">
        <p>
        **Правильное обтекание картинок и списков**  
        Вёрстка содержит исправления для типичных багов обтекания текстом: никаких разрывов текста из-за длинных слов, а буллиты списков не налезут на картинку. Умные отступы предотвратят проблемы с многоколоночным текстом.
        </p>
    </div>
    <div class="col-xs-12 col-sm-6">
        <p>
        **Не содержит классов и не мешает стилям шаблона**  
        CSS написан так, чтобы верстальщику не приходилось ничего обнулять и переопределять в коде шаблона. Стили для структурных тегов section, article, figure, а также для списков ul, ol и таблиц применяются только когда на тегах нет классов.
        </p>
    </div>
</div>

## Настроить под свой дизайн

Bettertext.css написан на LESS и настраивается при помощи 11 переменных. Остальные 40 вычисляются по формулам, но их тоже можно переопределить.

Если вы не используете LESS, [настройте типографику онлайн][codepen] и пользуйтесь скомпилированной версией:

* настройте переменные по вашему вкусу;
* протестируйте на вашем HTML или Markdown коде;
* нажмите "View Compiled" и заберите скомпилированный CSS к себе в проект.

<a name="settings" id="settings"></a>

<a name="templates" id="templates"></a>

## Шаблоны для дизайнеров

В шаблонах типографики для Скетча и Фотошопа текстовые стили соответствуют стилям по-умолчанию из bettertext.css.
Используйте эти шаблоны для быстрой настройки типографики в графическом редакторе.

1. [Настройте][codepen] типографику в браузере;
2. Скачайте шаблон для вашего графического редактора;
3. Обновите текстовые стили шаблона в соответствии со сгенерированной в браузере типографикой.

<figure class="row">
    <div class="col-xs-shrink">
        <img srcset="
            img/sketch-typography-kit@0.5x.png 456w,
            img/sketch-typography-kit@1x.png 912w,
            img/sketch-typography-kit@1.5x.png 1368w,
            img/sketch-typography-kit@2x.png 1824w
            " src="img/sketch-typography-kit@1x.png" width="912" height="660" alt="Скриншот шаблона типографики для Sketch" style="margin: 0  0 -4% -6.14%">
    </div>
    <figcaption class="col-xs-12">
        <p><a href="downloads/bettertext-typography-kit.sketch">Скачать bettertext-typography-kit.sketch</a></p>
    </figcaption>
</figure>
<figure class="row">
    <div class="col-xs-shrink">
        <img srcset="
            img/photoshop-typography-kit@0.5x.png 456w,
            img/photoshop-typography-kit@1x.png 912w,
            img/photoshop-typography-kit@1.5x.png 1368w,
            img/photoshop-typography-kit@2x.png 1824w
            " src="img/photoshop-typography-kit@1x.png" width="912" height="660" alt="Скриншот шаблона типографики для Photoshop" style="margin: 0  0 -4% -6.14%">
    </div>
    <figcaption class="col-xs-12">
        <p><a href="downloads/bettertext-typography-kit.psd">Скачать bettertext-typography-kit.psd</a></p>
    </figcaption>
</figure>

## Подключить и настроить LESS-версию

Подключите bettertext.less к стилям вашего проекта.

```less
@import (less) "node_modules/bettertext.css/bettertext.less";
```

или

```less
@import (less) "bower_components/bettertext.css/bettertext.less";
```

<a name="defaults" id="defaults"></a>

### Парамерты по-умолчанию

У компонента есть глобальный миксин с настройками:

```less
.bettertext-settings() {

    //settings
    @fz: 16px;                         // default font-size in px
    @rythm: 24px;                      // vertical rythm = line-height in pixels
    @fz-small: 12px;                   // smaller font-size (px)
    @linel: 50rem;                     // max-width for text (any css value)
    @font-body: sans-serif;            // body
    @font-headers: sans-serif;         // headers
    @font-code: monospace, monospace;  // code (duplication is intentional)
    @scale1: 1.125;                    // header size multiplier for small screens
    @scale2: 1.250;                    // header size multiplier for large screens

    // margin for body, articles and sections (any css value)
    @structure-margin: ~"calc(24px + 3vw)" 5vw;

    // breakpoint to switch from 'mobile' to 'desktop'
    @bettertext-breakpoint: ~"(min-width: 768px)";
}
```

<a name="customization" id="customization"></a>

### Собственные настройки

Вы можете настроить типографику через переменные. Например, поменять размер шрифта основного текста, шрифты:

```less
@import (less) "node_modules/bettertext.css/bettertext.less";

.bettertext-settings() {

    //settings
    @fz: 14px;                          // default font-size
    @font-body: 'Arial', sans-serif;    // body
    @font-headers: 'Georgia', serif;    // headers

    @bettertext-breakpoint: ~"(min-width: 50em)"; // large screens starts from that value

}
```

Если базовых настроек не достаточно, вы можете переписать любую формулу из миксина `bettertext-calculations` внутри миксина `bettertext-settings` (см. [исходный код][source]).
Например, поменять верхний отступ у заголовков (можно использовать готовые значения и формулы):

```less
@import (less) "node_modules/bettertext.css/bettertext.less";

.bettertext-settings() {

    //settings
    @fz: 14px;                          // default font-size
    @font-body: 'Arial', sans-serif;    // body
    @font-headers: 'Georgia', serif;    // headers

    @bettertext-breakpoint: ~"(min-width: 50em)"; // large screens starts from that value

    //redefining header margin-top
    @h1-mt: 3em;
    @h2-mt: 2.5em;
    @h3-mt: 2em;
    @h4-mt: 1.5em;
    @h5-mt: unit((2 * @lh * @fz / @h5-fz), em);
    @h6-mt: unit((2 * @lh * @fz / @h6-fz), em);
}
```

<a name="faq" id="faq"></a>

## Ответы на вопросы

**— Что такое «типографика»?**

— Это набор стилей для текста. Задача типографики — сделать текст красивее и удобнее для восприятия. Лучше, чем с браузерными стилями по-умолчанию.

**— Зачем мне это нужно?**

— Bettertext.css cэкономит время верстальщика, избавит от рутины: на каждом проекте нужно написать стили для заголовков, абзацев, списков, цитат, таблиц. Обычно у верстальщиков со временем появляется своя заготовка для типографики, которая переходит из проекта в проект с незначительными изменениями.

Bettertext.css — настраиваемая заготовка, которая позволяет при помощи 11 переменных задать базовую типографику сайта.

**— Будет ли версия bettertext нa SASS и Stylus?**

— Пока нет таких планов, потому что я не использую SASS или Stylus. Но если вы хотите помочь мне портировать на SASS или Stylus, пишите на почту radzkov@gmal.com.

**— Почему размер шрифта и высота строки задаются в пикселях?**

— Для удобства настройки. В графических редакторах размеры задаются в пикселях. Вы берёте значения в пикселях из исходника дизайна, а bettertext самостоятельно пересчитывает размеры шрифтов из px в em, а высоту строки в безразмерную величину. По-умолчанию 1em = 16px.

**— Что делать, если я хочу изменить размер шрифта root элемента и 1rem ≠ 16px?**

Если вы пользуетесь техникой «62.5%» и у вас 1rem = 10px, то в настройках bettertext надо переопределить скрытую переменную `@onerem: 10px`. [Пример на codepen](http://codepen.io/paulradzkov/pen/ObMgbd).

---

<small>Автор [Павел Радьков][paulradzkov], [GitHub проекта][github], MIT License</small>

<p class="likely">
    <span class="facebook">Поделиться</span>
    <span class="twitter">Твитнуть</span>
    <span class="gplus">Плюсануть</span>
    <span class="vkontakte">Поделиться</span>
    <span class="telegram">Телеграмнуть</span>
</p>

[paulradzkov]: http://paulradzkov.com
[github]: https://github.com/paulradzkov/bettertext.css
[releases]: https://github.com/paulradzkov/bettertext.css/releases
[issues]: https://github.com/paulradzkov/bettertext.css/issues
[codepen]: http://codepen.io/paulradzkov/pen/Mygdrb
[source]: https://github.com/paulradzkov/bettertext.css/blob/master/bettertext.less
[sketch]: downloads/bettertext-typography-kit.sketch
[photoshop]: downloads/bettertext-typography-kit.psd
