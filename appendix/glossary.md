---
layout: page
title: "Glossary"
permalink: /appendix/glossary/
order: -1
---
# Appendix: Glossary
Not every word or idiom from our world is appropriate in the antropomorphic world of Zootopia. Most business names are furthermore based on real brands, but slightly changed for the movie and this story. This is a glossary with those terms to help you better understand the story of Chronicles of Zootopia.

## Terms
{% assign terms = site.data.glossar | where_exp: "item", "item.isBrand == false" | sort: "term" %}
<dl>
{% for term in terms %}
    <dt>{{ term.term }}</dt>
    <dd>{{ term.description }}</dd>
{% endfor %}
</dl>


## Brands
{% assign brands = site.data.glossar | where_exp: "item", "item.isBrand == true" | sort: "term" %}
<dl>
{% for term in brands %}
    <dt>{{ term.term }}</dt>
    <dd>{{ term.description }}</dd>
{% endfor %}
</dl>
