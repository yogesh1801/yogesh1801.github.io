---
layout: page
title: Archive
permalink: /archive/
---

{% assign posts_by_year = site.posts | group_by_exp: "post", "post.date | date: '%Y'" %}
{% for year in posts_by_year %}
  <h2 id="{{ year.name }}">{{ year.name }}</h2>
  <ul class="post-list">
    {% for post in year.items %}
      <li>
        <span class="post-meta">{{ post.date | date: "%b %-d" }}</span>
        &nbsp;
        <a class="post-link" href="{{ post.url | relative_url }}">{{ post.title | escape }}</a>
      </li>
    {% endfor %}
  </ul>
{% endfor %}
