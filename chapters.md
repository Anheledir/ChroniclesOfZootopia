---
layout: chapterlist
title: Chapter Overview
permalink: /chapter/
order: 10
---

# Story Summary #
{{ site.storySummary }}

{% assign seasons = site.chapters | group_by: "season" %}
{% for season in seasons %}
  {% assign chapters = season.items | sort: "chapter" %}
    {% capture seasonDataKey %}S{{ season.name }}{% endcapture %}
<section id="season{{ season.name }}"></section>

## Season {{ season.name }}: {{ site.data.seasons[seasonDataKey].title }}
### (Chapter {{ chapters.first.chapter }}-{{ chapters.last.chapter }})
{{ site.data.seasons[seasonDataKey].summary }}
    {% assign plannedChapters = "" | split: "," %}
    {% for chapter in chapters %}
        {% if chapter.status != 'planned' %}
{% include chapterImgLink.html season=chapter.season episode=chapter.episode %}
        {% else %}
            {% assign plannedChapters = plannedChapters | push: chapter %}
        {% endif %}
    {% endfor %}
    {% if plannedChapters.size > 0 %}

<div class="col-lg-4 col-md-4 col-sm-4 gallery centered">
    <p><br><br><br><br><b>{{ plannedChapters.size }} more chapters planned!</b></p>
</div>

    {% endif %}

<div class="clearfix"></div>

{% endfor %}

<script type="text/javascript">
    var sourceSwap = function () {
    var $this = $(this);
    var newSource = $this.data('alt-src');
    $this.data('alt-src', $this.attr('src'));
    $this.attr('src', newSource);
        }

        $(function() {
                $('img[data-alt-src]').each(function() { 
                        new Image().src = $(this).data('alt-src'); 
                }).hover(sourceSwap, sourceSwap); 
    });
</script>