title: "Blog posts"
layout: default.liquid
---
{% for post in collections.posts.pages %}
#### [{{ post.title }}]({{ post.permalink }}) / {{ post.published_date | slice: 0, 16}}

{% endfor %}
