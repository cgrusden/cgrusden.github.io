---
title: "Quotes I live by"
---

{% for entry in site.data.quotes %}

"{{ entry.quote }}" -_{{ entry.author }}_

{% endfor %}

