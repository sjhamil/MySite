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

I've also written some guest posts:
* <a
  href="https://blog.ucsusa.org/science-blogger/bringing-communication-back-into-science-incentivizing-scicomm-efforts-for-early-career-scientists"
  target="_blank">"Bringing Communication Back Into Science: Incentivizing
  #scicomm Efforts for Early Career Scientists"</a>, The Science Network, August
  2018.
* <a
  href="http://www.planetary.org/blogs/guest-blogs/2017/1030-planet-nine-debate-history.html"
  target="_blank">"Then vs. Now: How the Debate Over a Distant Planet in the
  Solar System Has Evolved"</a>, The Planetary Society, November 2017.


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
