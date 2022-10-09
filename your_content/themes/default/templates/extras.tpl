{# This template extends the base.tpl template, meaning that base.tpl provides a large framework
   that this template then adds to. See base.tpl for more information. #}
{% extends "base.tpl" %}
{# This is the start of the `content` block. It's part of the <body> of the page. This is where all the visible
   parts of the website after the links bar and before the "Powered by comic_git" footer go. #}
{% block content %}
	<h1 id="page-title">EXTRAS</h1>
	<div class="castBorder">
		<table class="castpage">
			<tr>
				<td class="image">
					<img class = "castImage extras" src="/your_content/images/MusicToMyFearsLogo.png">
				</td>
				<td class="description background">
						<h2>Music to My Fears</h2>
						<p><i>When Terra, Marie, Ackerley, and Laz get separated from their Trick-or-Treating group, they must figure out how to combat the spirits of the dead that rise from the forest around them!</i></p>
						<p>Script by: Ari "Metajoker" Borhanian</p>
						<p>Art by: Caitlyn Vilbrandt, IzzySqueakzy, Leah Briere, and Michael "Neon Noble" Nicolosi</p>
						<a class = "ref" href="/extras/music_to_my_fears/comic/001">Read it here!</a>
				</td>
			</tr>
		</table>
	</div>
{% endblock %}
{% block script %}
{% endblock %}`
