{# This template extends the base.tpl template, meaning that base.tpl provides a large framework
   that this template then adds to. See base.tpl for more information. #}
{% extends "base.tpl" %}
{# `block head` means that the next two lines go where the `head` block is defined in base.tpl #}
{%- block head %}
    {# `super()` means that everything that's currently in the `head` block in base.tpl is added first, and then the
       next line is added to the end. #}
    {{- super() }}
    <link rel="next" href="{{ comic_base_dir }}/comic/{{ next_id }}/">
{%- endblock %}
{# This is the start of the `content` block. It's part of the <body> of the page. This is where all the visible
   parts of the website after the links bar and before the "Powered by comic_git" footer go. #}
{%- block content %}
    {%- if "music" in _tags %}
    <div id="music-player">
        <audio controls autoplay class="audio">
        <source src="{{_music_file}}" type="audio/mpeg">
        Your browser does not support the audio element.
        </audio>
    </div>
    {%- endif %}
    <div id="comic-page">
        {% if _on_comic_click == "overlay" %}
        <a id="click-for-overlay">
        {% elif _on_comic_click == "open image" %}
        <a id="open-image" href="{{ base_dir }}/{{ comic_path }}">
        {% elif _on_comic_click == "open image window" %}
        <a id="open-image-winow" href="{{ base_dir }}/{{ comic_path }}" target="_blank">
        {% else %}
        <a href="{{ comic_base_dir }}/comic/{{ next_id }}/#comic-page">
        {% endif %}
            <img id="comic-image" src="{{ base_dir }}/{{ comic_path }}" title="{{ escaped_alt_text }}"/>
        </a>
        {% if _on_comic_click == "overlay" %}
        <div id="click-here-to-zoom-text">Click page<br>to zoom!</div>
        {% endif %}
    </div>

    <div id="comic-page-overlay" hidden>
        <img id="comic-overlay-image" src="{{ base_dir }}/{{ comic_path }}" title="{{ escaped_alt_text }}"/>
    </div>

    {# If blocks let you check the value of a variable and then generate different HTML depending on that variable.
       The if block below will generate non-functioning links for `First` and `Previous` if the current page is the
       first page in the comic, and functioning links otherwise. #}
    <div id="navigation-bar">
    {% if first_id == current_id %}
        <a class="navigation-button-disabled first">‹‹ First</a>
        <a class="navigation-button-disabled previous">‹ Previous</a>
    {% else %}
        <a class="navigation-button first" href="{{comic_base_dir}}/comic/{{ first_id }}/#comic-page">‹‹ First</a>
        <a class="navigation-button previous" href="{{comic_base_dir}}/comic/{{ previous_id }}/#comic-page">‹ Previous</a>
    {% endif %}
    {# The block below is the same as the one above, except it checks if you're on the last page. #}
    {% if last_id == current_id %}
        <a class="navigation-button-disabled next">Next ›</a>
        <a class="navigation-button-disabled last">Last ››</a>
    {% else %}
        <a class="navigation-button next" href="{{comic_base_dir}}/comic/{{ next_id }}/#comic-page">Next ›</a>
        <a class="navigation-button last" href="{{comic_base_dir}}/latest/#comic-page">Last ››</a>
    {% endif %}
    </div>
    <div class = "support">
        <div class = "supportButtons">
            <div class="patreon-button buttons" id="patreon-button"><a class="patreon" href="https://www.patreon.com/bePatron?u=355259" target="_blank">Become a Patron</a></div>
            <div class="patreon-button buttons" id="kofi-button"><a class="kofi" href="https://ko-fi.com/izzybrownie" target="_blank">Buy Us a Coffee!</a></div>
            <div class="patreon-button buttons" id="share-button" onclick="copyToClipboard()"><div class="share">Share the Comic</div></div>
        </div>
    </div>
    <div id="copy-modal" class="">
        <p id="copy-info">Copied URL!</p>
    </div>

    <div id="blurb">
        <h1 id="page-title">{{ _title }}</h1>
        <h3 id="post-date">Posted on: {{ _post_date }}</h3>
        <div id="post-body">
        {{ post_html }}
        </div>
        <hr id="post-body-break">
        {%- if _storyline %}
            <div id="storyline">
                {# `| replace(" ", "-")` takes the value in the variable, in this case `storyline`, and replaces all
                   spaces with hyphens. This is important when building links to other parts of the site. #}
                Chapter: <a href='{{ comic_base_dir }}/archive/#{{ _storyline | replace(" ", "-") }}'>{{ _storyline }}</a>
            </div>
        {%- endif %}
        {%- if _characters %}
            <div id="characters">
            Characters:
            {# For loops let you take a list of a values and do something for each of those values. In this case,
               it runs through list of all the characters in this page, as defined by your info.ini file for this page,
               and it generates a link for each of those characters connecting to the `tagged` page for that
               character. #}
            {%- for character in _characters %}
                {# The `if not loop.last` block at the end of the next line means that the ", " string will be added
                   after every character link EXCEPT the last one. #}
                <a href="/tagged/{{ character }}/">{{ character }}</a>{% if not loop.last %}, {% endif %}
            {%- endfor %}
            </div>
        {%- endif %}
        {%- if _tags %}
            <div id="tags">
            Tags:
            {%- for tag in _tags %}
                <a class="tag-link" href="/tagged/{{ tag }}/">{{ tag }}</a>{% if not loop.last %}, {% endif %}
            {%- endfor %}
            </div>
        {%- endif %}
        {% if transcripts %}
        <table id="transcripts-container" border>
            <tr>
                <td id="transcript-panel">
                    <h3>Transcript</h3>
                    <div id="active-transcript">
                    {% for language, transcript in transcripts.items() %}
                        <div class="transcript" id='{{ language }}-transcript'>
                        {{ transcript }}
                        </div>
                    {% endfor %}
                    </div>
                </td>
                {% if transcripts|length > 1 %}
                <td id="language-list">
                    <label for="language-select">Languages</label>
                    <select id="language-select" size="7">
                        {% for language in transcripts.keys() %}
                        <option>{{ language }}</option>
                        {% endfor %}
                    </select>
                </td>
                {% endif %}
            </tr>
        </table>
        {% endif %}
    </div>
{%- endblock %}
{%- block script %}
<script type="module">
    import { init_overlay } from "{{ base_dir }}/comic_git_engine/js/comic.js";
    init_overlay();
{% if transcripts %}
    import { init_transcript } from "{{ base_dir }}/comic_git_engine/js/transcript.js";
    init_transcript();
{% endif %}
</script>
{%- endblock %}
