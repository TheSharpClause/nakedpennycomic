{# This template extends the base.tpl template, meaning that base.tpl provides a large framework
   that this template then adds to. See base.tpl for more information. #}
{% extends "base.tpl" %}
{# This is the start of the `content` block. It's part of the <body> of the page. This is where all the visible
   parts of the website after the links bar and before the "Powered by comic_git" footer go. #}
{% block content %}
	<h1 id="page-title">Meet the Cast</h1>
	<div class="castBorder">
		<table class="castpage">
			<tr>
				<td class="image">
					<img class = "castImage" src="/your_content/images/castAva.png">
                    <a class = "ref" href="../your_content/images/sheets/avaRef.png">Ava's Reference Sheet</a><br>
					<a class = "ref" href="http://www.mothorialcomic.com/tagged/Ava/">Pages Ava Appears On</a>
				</td>
				<td class="description info">
						<h2>Name</h2>
						<p>Ava</p>
						<h2>Species</h2>
						<p>Fruit Bat</p>
						<h2>Occupation</h2>
						<p>Perpetual Student and Budding Adventurer</p>
						<h2>Age</h2>
						<p>19 (and a half!)</p>
						<h2>Pronouns</h2>
						<p>She/Her</p>
				</td>
				<td class="description background">
						<h2>Background</h2>
						<p>Little is known about Ava's background. The earliest thing she can remember is being found by Ackerley on the outskirts of the Grey Pines 10 years ago, with a mysterious wand in her grip. Since then, she's been studying magic (or trying to) with Ackerley and dreaming of a life outside her rather droll life in the sleepy town of Mosswood. She once hung out with a group of friends, but ever since an incident three years ago, she's been mostly on her own, spending her time with Ackerley in the Mosswood Library (their home), or at the Hillandale Tavern, keeping an eye out for the occasional adventurer and exciting tale. Bold and defensive of those she loves, Ava has a tendency to bite off more than she can chew (much to Ackerley's chagrine) and wants to be treated like an adult, even though she still has a lot to learn about the wide world.</p>
				</td>
			</tr>
			<tr>
				<td class="image">
					<img class = "castImage" src="/your_content/images/castAckerley.png">
                    <a class = "ref" href="../your_content/images/sheets/ackerleyRef.png">Ackerley's Reference Sheet</a><br>
					<a class = "ref" href="http://www.mothorialcomic.com/tagged/Ackerley/">Pages Ackerley Appears On</a>
				</td>
				<td class="description info">
						<h2>Name</h2>
						<p>Ackerley</p>
						<h2>Species</h2>
						<p>Goose-Pheasant (in that order)</p>
						<h2>Occupation</h2>
						<p>Librarian and Semi-Retired Bard</p>
						<h2>Age</h2>
						<p>35</p>
						<h2>Pronouns</h2>
						<p>He/Him</p>
				</td>
				<td class="description background">
						<h2>Background</h2>
						<p>Ackerley has tended to the Mosswood library for eleven long years, and has enjoyed a relatively simple and peaceful life among his books. His quiet life was interrupted by the sudden arrival of Ava, who he has taken care of ever since. While he has been her caretaker for a decade, he doesn't like to talk to her about his life before becoming a librarian very much. He was born in Sorelia, the capital of Mothorial, and studied music in the magical city of Janlea. Once a bard who performed in taverns across Mothorial, he now prefers the quiet of the library. Shy, anxious, and occasionally quite irritable, Ackerley nevertheless cares deeply about Ava, and will do a lot in order to keep her safe.</p>
				</td>
			</tr>
			<tr>
				<td class="image">
					<img class = "castImage" src="/your_content/images/castVex.png">
					<a class = "ref" href="http://www.mothorialcomic.com/tagged/Vex/">Pages Vex Appears On</a>
				</td>
				<td class="description info">
						<h2>Name</h2>
						<p>Vex</p>
						<h2>Species</h2>
						<p>Gecko/Bearded Dragon</p>
						<h2>Occupation</h2>
						<p>Errand-Runner</p>
						<h2>Age</h2>
						<p>18</p>
						<h2>Pronouns</h2>
						<p>She/They</p>
				</td>
				<td class="description background">
						<h2>Background</h2>
						<p>Born into a troubled home in Mosswood, Vex has lived their entire life within the town limits. Deeply insecure about their upbringing, they became close friends with Ava when the bat arrived in town ten years ago, and soon with Cori and Raiona. Unfortunately, an event which took place a few years ago ended Ava's friendship with Vex and the others, and Vex spends their days hanging out with Cori and Raiona, occasionally antagonizing Ava over the events of the past. As someone who has experienced a great deal of pain, Vex tends to disassociate rather than confront their issues with their family head-on. While they've got a lot of growing up to do, Vex is deeply passionate and driven, and will do anything to protect those they care about, even when it means neglecting themself.</p>
				</td>
			</tr>
			<tr>
				<td class="image">
					<img class = "castImage" src="/your_content/images/castCori.png">
					<a class = "ref" href="http://www.mothorialcomic.com/tagged/Coriander/">Pages Cori Appears On</a>
				</td>
				<td class="description info">
						<h2>Name</h2>
						<p>Coriander</p>
						<h2>Species</h2>
						<p>Reindeer</p>
						<h2>Occupation</h2>
						<p>Clothing Designer/Model</p>
						<h2>Age</h2>
						<p>19</p>
						<h2>Pronouns</h2>
						<p>She/Her</p>
				</td>
				<td class="description background">
						<h2>Background</h2>
						<p>Cori lives with her single mother, by far the richest hewan in Mosswood, and has grown up under a lot of pressure to live up to her expectations. While her passion for fashion, from her custom outfits to her hair and fur dyes, has always lined up well with her mother's hopes for her, this inability to separate her hobbies from her mother's watchful eye leaves her feeling as though she has no real say in her life. At first, her friendship with Ava, Vex, and Raiona allowed her some degree of escape, but as the group has gotten older and circumstances changed, Cori's internal fears and insecurities have begun to affect her relationship with those close to her. Despite her outer confidence, Cori struggles to define herself, and her desire to make something of herself makes her perhaps more similar to Ava than she is comfortable admitting.</p>
				</td>
			</tr>
			<tr>
				<td class="image">
					<img class = "castImage" src="/your_content/images/castRaiona.png">
					<a class = "ref" href="http://www.mothorialcomic.com/tagged/Raiona/">Pages Raiona Appears On</a>
				</td>
				<td class="description info">
						<h2>Name</h2>
						<p>Raiona</p>
						<h2>Species</h2>
						<p>Lion</p>
						<h2>Occupation</h2>
						<p>Caretaker</p>
						<h2>Age</h2>
						<p>20</p>
						<h2>Pronouns</h2>
						<p>She/Her</p>
				</td>
				<td class="description background">
						<h2>Background</h2>
						<p>Raiona was born in the small town of Dustedge to two loving parents. This seemingly idyllic childhood would end in tragedy, however, when the Dustedge was attacked by members of the Cult of the Younger. Her father and mother, driven to protect their home, decided to stay, but sent their daughter to live with her Grandfather in safety. Despite her hardship, she has made a life for herself in Mosswood, becoming friends with Ava, Cori, and Vex, and with their support and that of her grandfather, she was able to come out and openly express her identity as a woman in her early teens. As her grandfather has grown older, Raiona has taken on the task of taking care of him as he once took care of her, and unlike her friends, the lion has found a degree of peace in her relatively quiet life, though she always wonders about the eventual fate of her parents, who she hasn't seen in so many years, despite her continued attempts to contact them.</p>
				</td>
			</tr>
			<tr>
				<td class="image">
					<img class = "castImage" src="/your_content/images/castCort.png">
					<a class = "ref" href="http://www.mothorialcomic.com/tagged/Cort/">Pages Cort Appears On</a>
				</td>
				<td class="description info">
						<h2>Name</h2>
						<p>Cort</p>
						<h2>Species</h2>
						<p>Tortoise</p>
						<h2>Occupation</h2>
						<p>Retired</p>
						<h2>Age</h2>
						<p>119</p>
						<h2>Pronouns</h2>
						<p>He/Him</p>
				</td>
				<td class="description background">
						<h2>Background</h2>
						<p>Prior to his close friend Ackerley's arrival in Mosswood, Cort was the sole owner and caretaker of the Mosswood Library. Over the course of his long life he has had many odd jobs, from carrying mail by cart to working in a tavern, before finally settling as a farmer in Mosswood for over fifty years. Having seen his fair share in his travels, Cort spends his latter days enjoying the sunshine, playing board games with Ackerley, and dispensing wisdom and stories. Still, there might be more to this tortoise than meets the eye...</p>
				</td>
			</tr>
		</table>
	</div>
{% endblock %}
{% block script %}
{% endblock %}`
