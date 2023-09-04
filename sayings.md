---
title: "Sayings I've heard that I like"
---

{% for entry in site.data.sayings %}

"{{ entry.saying }}" -_{{ entry.author }}_ 

[{{entry.url_title}}]({{entry.url}})

{% endfor %}
