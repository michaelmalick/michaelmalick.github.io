---
layout: default
title: Michael Malick | Research
category: research
---

{% for post in site.categories[page.category] %}
<article class="post">
  <a href="{{ post.url | absolute_url }}">
    <img src="{{ site.baseurl }}/assets/research/{{ post.image }}"
         class="img_research" align="left"/>
  </a>
  <h3>
    <a href="{{ post.url | absolute_url }}">
      {{ post.title }}
    </a>
  </h3>
  {{ post.excerpt }}
</article>
{% endfor %}
