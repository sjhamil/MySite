---
layout: page
title: Blog Archive
permalink: /blog/archive/
icon: "fa-archive"
---

**I am currently a Technical Communications Associate for the MIT School of Engineering. Find my bylines for MIT News [here](https://www.google.com/search?sxsrf=ALeKk01k15I_0ckKKk1BdQnM9YpdtyTi-A%3A1588041192383&ei=6JWnXqnwFo3RtAaWobf4Bg&q=%22stephanie+hamilton%22+site%3Anews.mit.edu&oq=%22stephanie+hamilton%22+site%3Anews.mit.edu&gs_lcp=CgZwc3ktYWIQA1Df2wNYiO8DYK_1A2gAcAB4AIABmAKIAZ8FkgEFMy4xLjGYAQCgAQGqAQdnd3Mtd2l6&sclient=psy-ab&ved=0ahUKEwiphKS5iorpAhWNKM0KHZbQDW8Q4dUDCAw&uact=5)!**

### <span style="font-variant:small-caps;">Miscellaneous Posts</span>
* I have written several posts for <a
href="https://astrobites.org/author/shamilton/"
target="_blank">Astrobites</a> and the <a
href="https://misciwriters.com/tag/stephaniehamilton/"
target="_blank">Michigan Science Writers</a>.
* Through the [RELATE](https://learntorelate.org) organization at UMich, I wrote
and edited [graduate student profile
pieces](https://sites.google.com/search/umich.edu/grad-ed-studentstories?query=Stephanie%20Hamilton&scope=site).
* I've also written some guest posts:
  * <a
  href="https://blog.ucsusa.org/science-blogger/bringing-communication-back-into-science-incentivizing-scicomm-efforts-for-early-career-scientists"
  target="_blank">"Bringing Communication Back Into Science: Incentivizing
  #scicomm Efforts for Early Career Scientists"</a>, The Science Network, August
  2018.
  * <a
  href="http://www.planetary.org/blogs/guest-blogs/2017/1030-planet-nine-debate-history.html"
  target="_blank">"Then vs. Now: How the Debate Over a Distant Planet in the
  Solar System Has Evolved"</a>, The Planetary Society, November 2017.
* Finally, I was a 2019 AAAS Mass Media Fellow at the Indianapolis Star -- you
can find my clips <a
href="https://www.aaas.org/programs/mass-media-fellowship/stephanie-hamilton" target="_blank">here.</a>


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
