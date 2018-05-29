---
layout: page
title: Archive
permalink: /blog/archive/
hide: true
---

You can find my posts for Astrobites <a
href="https://astrobites.org/author/shamilton/"
target="_blank">here</a> and my posts for the Michigan Science Writers <a
href="https://misciwriters.com/tag/stephaniehamilton/"
target="_blank">here</a>!

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
