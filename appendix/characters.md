---
layout: page
title: "Characters"
permalink: /appendix/characters/
order: -1
---
# Appendix: Characters
## ZPD Colleagues

<table>
    <thead>
        <tr>
            <th>Rank</th>
            <th>Name</th>
            <th>Species</th>
            <th>Role</th>
        </tr>
    </thead>
    <tbody>
        {% assign police = site.data.charactersZPD | sort: "rank" %}
        {% for zpd in police %}
<tr>
    <td>{{ zpd.rank }}</td>
    <td><nobr>{{ zpd.name }}</nobr></td>
    <td><nobr><em>{{ zpd.species }}</em></nobr></td>
    <td>{{ zpd.role }}</td>
</tr>
        {% endfor %}
    </tbody>
</table>


## Known Hopps Children
Only those litters and children are listed that are mentioned in the story.

{% assign children = site.data.charactersHopps | sort: "litter" %}
{% assign prevLitter = 0 %}
{% for kid in children %}
    {% if prevLitter != kid.litter %}
        {% if prevLitter != 0 %}
    </ul>
</div>
        {% endif %}
<div class="col-lg-3 col-md-3 col-sm-3 gallery">
    {% capture litterKey %}L{{kid.litter}}{% endcapture %}
    <strong>Litter #{{ kid.litter }} ({{ site.data.hoppsLitters[litterKey].age }} years):</strong>
    <ul>
    {% endif %}
<li>{{ kid.name }}{% if kid.hasFamily %} <sup>1</sup>{% endif %}</li>
    {% if prevLitter != kid.litter %}
        {% assign prevLitter = kid.litter %}
    {% endif %}
{% endfor %}
    </ul>
</div>
<div class="clearfix"></div>

## Other residents of Bunnyburrow

<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Species</th>
            <th>Role</th>
        </tr>
    </thead>
    <tbody>
        {% assign bunnyburrow = site.data.charactersBunnyburrow | sort: "name" %}
        {% for citizen in bunnyburrow %}
<tr>
    <td><nobr>{{ citizen.name }}</nobr></td>
    <td><nobr><em>{{ citizen.species }}</em></nobr></td>
    <td>{{ citizen.role }}</td>
</tr>
        {% endfor %}
    </tbody>
</table>


## Other minor characters

<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Species</th>
            <th>Role</th>
        </tr>
    </thead>
    <tbody>
        {% assign minorChars = site.data.charactersMinor | sort: "name" %}
        {% for other in minorChars %}
<tr>
    <td><nobr>{{ other.name }}</nobr></td>
    <td><nobr><em>{{ other.species }}</em></nobr></td>
    <td>{{ other.role }}</td>
</tr>
        {% endfor %}
    </tbody>
</table>


## Footnotes

1: Has a family on his/her own, not living at home anymore.