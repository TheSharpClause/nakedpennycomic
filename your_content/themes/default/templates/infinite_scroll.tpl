{# This template extends the base.tpl template, meaning that base.tpl provides a large framework
   that this template then adds to. See base.tpl for more information. #}
{% extends "base.tpl" %}
{# This is the start of the `content` block. It's part of the <body> of the page. This is where all the visible
   parts of the website after the links bar and before the "Powered by comic_git" footer go. #}
{% block content %}
    <div id="jump-to">
        <h1 id="page-title">Jump to...</h1>
        {# For loops let you take a list of a values and do something for each of those values. In this case,
           it runs through list of all the storylines in the comic (Chapter 1, Chapter 2, etc.) it generates a link
           for each of those them connecting to the first page in that storyline. #}
		{%- for volume_name, chapters in storylines.items() %}
            {%- if volume_name != "Extras" %}
			<div class="dropdown">
				<button class="dropbtn">{{volume_name}}</button>
				<div id="myDropdown-{{volume_name | replace(' ', '-')}}" class="dropdown-content">
					{%- for chapter_name, pages in chapters.items() %}
						<a class="chapter-links" href="#{{ pages[0].page_name }}"
							{# `| replace(" ", "-")` takes the value in the variable, in this case `name`, and replaces all
							   spaces with hyphens. This is important when building links to other parts of the site. #}
							id="infinite-scroll-{{ chapter_name | replace(' ', '-') }}">
							{{ chapter_name }}
						</a>
					{%- endfor %}
				</div>
			</div>
            {%- endif %}
        {%- endfor %}
	</div>
    <div id="load-older" hidden>
        <button id="load-older-button">Load Previous</button>
    </div>
    <div id="loading-infinite-scroll"><p>Loading comics...</p></div>
    <div id="infinite-scroll"></div>
    <div id="load-newer">
        <button id="load-newer-button">Load Newer</button>
    </div>
    <div id="caught-up-notification" hidden>
        <h2>You're all caught up!</h2>
    </div>
{% endblock %}
{% block script %}
<script type="module">
    import { load_page } from "/your_content/themes/default/js/infinite_scroll.js";
    load_page();
</script>
{% endblock %}
