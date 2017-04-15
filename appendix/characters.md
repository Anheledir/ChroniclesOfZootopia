---
layout: page
title: "Persona"
permalink: /appendix/characters/
order: -1
---
# Appendix: Persona
There are a lot of characters in Chronicles of Zootopia: Officials from the Movie, some with slightly different roles or names (if there is no name at all or at least some part of it unknown within the movie for a character). But there are also a lot of new supporting characters. This is a list of them all with their species and roles in the story.

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
    <td><nobr>{{ zpd.name }}</nobr>{% if zpd.nickname %}<br><sub>also: {{ zpd.nickname }}</sub>{% endif %}</td>
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
<div class="mc">
{% for kid in children %}
    {% if prevLitter != kid.litter %}
        {% if prevLitter != 0 %}
    </ul>
        {% endif %}
    {% capture litterKey %}L{{kid.litter}}{% endcapture %}
    <strong>Litter #{{ kid.litter }} ({{ site.data.hoppsLitters[litterKey].age }} years):</strong>
    <ul>
    {% endif %}
<li>{{ kid.name }}{% if kid.hasFamily %} <sup>1</sup>{% endif %}{% if kid.nickname %}<br><sub>also: {{ kid.nickname }}</sub>{% endif %}</li>
    {% if prevLitter != kid.litter %}
        {% assign prevLitter = kid.litter %}
    {% endif %}
{% endfor %}
    </ul>
</div>

## Other members of the Hopps Family
Relatives and characters related by marriage.

<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Species</th>
            <th>Role</th>
        </tr>
    </thead>
    <tbody>
        {% assign hoppses = site.data.charactersOtherHopps | sort: "name" %}
        {% for char in hoppses %}
<tr>
    <td><nobr>{{ char.name }}</nobr>{% if char.nickname %}<br><sub>also: {{ char.nickname }}</sub>{% endif %}</td>
    <td><nobr><em>{{ char.species }}</em></nobr></td>
    <td>{{ char.role }}</td>
</tr>
        {% endfor %}
    </tbody>
</table>




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
    <td><nobr>{{ citizen.name }}</nobr>{% if citizen.nickname %}<br><sub>also: {{ citizen.nickname }}</sub>{% endif %}</td>
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
    <td><nobr>{{ other.name }}</nobr>{% if other.nickname %}<br><sub>also: {{ other.nickname }}</sub>{% endif %}</td>
    <td><nobr><em>{{ other.species }}</em></nobr></td>
    <td>{{ other.role }}</td>
</tr>
        {% endfor %}
    </tbody>
</table>


## Footnotes

1: Has a family on his/her own, not living at home anymore.