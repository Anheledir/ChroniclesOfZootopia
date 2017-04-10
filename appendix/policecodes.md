---
layout: page
title: "Police Radio Codes"
permalink: /appendix/radiocodes/
order: -1
---
# Appendix: Police Radio Codes
The ZPD uses similiar radio codes as the police in the USA. There are a few differences, though. You can find a list of the used codes and their meaning within this story.

{% assign codes = site.data.policecodes | sort: "code" %}
<dl class="mc">
{% for code in codes %}
    <dt>{{ code.code }}</dt>
    <dd>{{ code.description }}</dd>
{% endfor %}
</dl>
<div class="clearfix"></div>