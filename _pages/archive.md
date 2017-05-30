---
layout: page
title: Archive
permalink: /blog/archive/
---

<section class="archive-post-list">

   {% for post in site.posts %}
       {% assign currentDate = post.date | date: "%Y" %}
       {% if currentDate != myDate %}
           {% unless forloop.first %}</ul>{% endunless %}
           <h1>{{ currentDate }}</h1>
           <ul>
           {% assign myDate = currentDate %}
       {% endif %}
       <li><span>{{ post.date | date: "%-d %B" }}</span>:  <a href="{{ post.url }}">{{ post.title }}</a></li>
       {% if forloop.last %}</ul>{% endif %}
   {% endfor %}

</section>
