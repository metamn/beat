{% markdown %}

## History

I've been creating websites since 2006. When responsive web design was introduced in 2009 I was fascinated. The good old web now can support all modern devices and will support any upcoming device. I've put a bet on it and built a carrier in web design and development.

During the decade I've always walked on the edge. Finding and integrating only the best methodologies, technologies, tools and aesthetics available which still support the experience for the widest audience possible.

I've created my own stack. With concerns fully separated and each of the layers optimized.

Content was treated as data (JSON); structure was semantic and also understandable by machines (microformats, accessibility, W3C validations); styling and tooling was always a struggle but manageable (Compass, SASS, Atomic design, BEM, Gulp, Webpack, Styleguides, Design systems). And the new aesthetics &mdash; _award winning_.

Proud come every year when checking webdev surveys: my stack is at least on par or slightly ahead of current best practices.

No more problems on the front-end <sup id="footnote--1">[1](#footnotes--1)</sup> I wrote in 2015. And that was right except for performance and Javascript.

## Performance

SASS and mixins are still the most elegant way to compose style. They have a minimal cognitive load and they are free of strict rules found in CSS-in-JS.

Development experience is high &mdash; so page load times due to the large CSS file generated.

No matter the tooling for optimization (minify css, uncss, etc.) SASS by nature it keeps adding large chunks of code to the final CSS file <sup id="footnote--2">[2](#footnotes--2)</sup>.

That makes it unsustainable on long term. One has to think about using the technology with care and constraints in mind.

## Designer and developer experience

In my stack Javascript was the main pain point during development. I've been always struggling to keep up with the latest libraries and frameworks &mdash; then went back to vanilla.

A big relief. But I still felt unsafe with Javascript. It was like a stepchild compared to back-end languages / template engines (PHP, Ruby, Twig, etc.), to HTML and CSS.

It was hard to wire behavior into structure and style &mdash; classnames to connect them all, right? &mdash; and to maintain it. It took me so much resources I needed to step up ... and deliberately designing interface parts which require no, or as less possible Javascript.

Design thinking constrained by unusable technology, again, is not sustainable on long term.

## Component frameworks

To the rescue.

By definition they treat Javascript as first class citizen in the `HTML + CSS + JS` triumvirate. More they add a data layer (GraphQL) and ... and ... all the benefits a _real_ programming language offers: like testing.

Now the stack is `data + structure + style + behavior + tests` === wooow!!

Making a (browser native) programming language the main artifact in the user interface development process &mdash; I guess &mdash; is the greatest thing ever happened to this industry.

It gives you an all-in-one feeling. Nothing is missing. All pain points solved. Everything is at your fingertips, from data to testing, in one screen.

Performance is legendary. Just remember, Gatsby detects cursor movement on the screen, and preloads stuff when you hover a link.

Creativity is high. All constraints are removed. In fact, now you can do whatever you wish in the browser. Nothing stays in your way.

{% endmarkdown %}
