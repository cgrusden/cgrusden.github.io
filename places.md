---
title: "Google Maps links of places i love"
---


<table>
    <tr>
        <th>Area</th>
        <th>Google Maps Link</th>
    </tr>

{% for entry in site.data.places %}
    <tr>
        <td>{{ entry.area }}</td>
        <td><a href="{{ entry.url }}">{{entry.url}}</a></td>
    </tr>

{% endfor %}
</table>
