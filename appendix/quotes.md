---
layout: page
title: "Quotes"
permalink: /appendix/quotes/
order: -1
---
# Appendix: Chapter-Quotes
Starting with 1x10, every chapter is introduced with a quote. You can find a complete list here.


{% assign quotes = site.chapters | where_exp: "item", "item.status != 'planned'" | where_exp: "item", "item.quote" | sort: 'chapter' %}
{% for quote in quotes %}
<blockquote>
  <p>{{ quote.quote["text"] }}</p>
  <footer>
    <cite>{{ quote.quote["source"] }} <a href="{{ quote.url }}"><i class="fa fa-bookmark" aria-hidden="true"></i></a></cite>
  </footer>
</blockquote>
{% endfor %}