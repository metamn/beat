<div class="notice notice-start">
<span class="text">
u p d a t e &mdash; u p d a t e &mdash; u p d a t e &mdash; u p d a t e &mdash; u p d a t e &mdash; u p d a t e &mdash; u p d a t e &mdash; u p d a t e &mdash; u p d a t e &mdash; u p d a t e &mdash;  u p d a t e &mdash;  u p d a t e &mdash;
</span>
</div>
<div>
This article is about the <i>web front-end</i> stack.
There is another article about the full stack &mdash; from servers to various clients.
</div>
<div class="notice notice-end">
<span class="text">/ u p d a t e</span>
</div>

{% markdown %}

## History

I've been creating websites since 2006. When responsive web design was introduced in 2009 I was fascinated. The good old web now can support all modern devices and will support any upcoming device. I've put a bet on it and built a carrier in web design and development.

During the decade I've always walked on the edge. Finding and integrating only the best methodologies, technologies, tools and aesthetics available which still support the experience for the widest audience possible.

I've created my own stack. With concerns fully separated and each of the layers optimized.

Content was treated as data (JSON, Markdown); structure was semantic (microformats, accessibility, W3C validations) &mdash; understandable by both people with disabilities and machines; styling and tooling was always a struggle but manageable (Compass, SASS, Atomic design, BEM, Gulp, Webpack, Styleguides, Design systems). And the new aesthetics &mdash; _award-winning_.

Proud come every year when checking webdev surveys: my stack is at least on par or slightly ahead of current best practices.

No more problems on the front-end <sup id="footnote--1">[1](#footnotes--1)</sup> I wrote in 2015. And that was right except for performance and Javascript.

## Performance

SASS and mixins are perhaps the most elegant way to compose style. They have a minimal cognitive load, and they are free of strict rules found in CSS-in-JS.

Development experience is high &mdash; so page load times due to the large CSS file generated.

No matter the tooling for optimization (minify css, uncss, etc.) SASS by nature it keeps adding large chunks of code to the final CSS file <sup id="footnote--2">[2](#footnotes--2)</sup>.

That makes it unsustainable on long term. One has to think about using this technology with care and constraints in mind.

## Designer and developer experience

In my stack Javascript was the main pain point during development. I've been always struggling to keep up with the latest libraries and frameworks &mdash; then went back to vanilla.

A big relief. But I still felt unsafe with Javascript. It was like a stepchild compared to back-end languages / template engines (PHP, Ruby, Twig, etc.), and even to HTML and CSS.

It was hard to wire behavior into structure and style &mdash; classnames and IDs to connect them all, right? &mdash; and to maintain it. It took me so many resources I needed to step up ... and deliberately designing interface parts which require no, or as less possible Javascript.

Design thinking constrained by unusable technology, again, is not sustainable on long term.

## Component frameworks

To the rescue.

By definition they treat Javascript as first class citizen in the `HTML + CSS + JS` triumvirate. More they add an explicit data layer (GraphQL) and ... and ... all the benefits a _real_ programming language offers: like testing.

Now the stack is `data + structure + style + behavior + tests` === wooow!!

Making a programming language the main artifact in the web user interface development process &mdash; I guess &mdash; is one of the greatest things ever happened to this industry.

It gives you an all-in-one feeling. Nothing is missing. All pain points solved. Everything is at your fingertips, from data to testing, in one screen.

Performance is legendary. Just check a Gatsby site. It detects cursor movement on the screen, and preloads what's behind when you hover a link.

Creativity is high. All constraints are removed. In fact, now you can do whatever you wish on the front-end. Nothing stays in your way.

{% endmarkdown %}
