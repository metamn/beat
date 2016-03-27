{% markdown %}

This is a technical article accompanying it's theoretical sibling [Ideally](http://metamn.io/beat/ideally).
In fact these two articles are one. They share the same sections but present them differently.

Ideally is theory and meant to be a thought provoking reading for web industry professionals.

This counterpart is pure practice. It's an overview of the technologies and tools one can use today to make a 'perfect' website.
It's an offer for my next clients, a checklist of what they'll get working with me, and a tutorial how they can contribute to the design and development process to make the outcome ... perfect.


## Content

Defines everything. Your audience, your market position, who do you commission to turn it into a web product, and how successful your product can become.

Our task as designers and developers is to make your content work best on the web.
For that, first of all, your content needs to be transformed into data and metadata.
Content has a meaning for human audience. Machines don't understand content but data. When your content is transformed into data machines can *reason* about it and make it work better.

The first phase of every new project I'm working on is to transform content into JSON.

JSON is a database without database. It's a plain text file describing data and metadata together. It's English for Data.
It's human readable and de-facto standard for machine communication.

{% endmarkdown %}
<script src="https://gist.github.com/metamn/6c3b0b03a7dd3400607b.js"></script>
{% markdown %}

Converting content into JSON has another advantage. Monolithic information (like an entire article or blog post) is split into small standalone chunks. These chunks can be combined together in multiple ways for multiple purposes.

For example, with the help of this technique I've managed to have an article split into two independent, still interconnected articles, one targeting the design and development community and the other targeting my own clients.


## Structure

Once content is transformed into reusable, semantic data it is ready to be assembled into semantic structure.
A structure understandable by people and machines.

On people I mean fellow designers and developers who might work on this project now or in the future. On machines I mean browsers and bots, screen readers and web crawlers.

When a structure is well defined from multiple angles it means it is well-thought. During the years I've used many formats and techniques and the current ones &mdash; Semantic HTML5 and BEM &mdash; are really breakthrough. Often times when I feel something is not right on the user interface it turns out the problem lies in the structure. Fixing the structure makes clear how to fix the design. Having a solid structure makes design more fit.

Semantic HTML5 is done right only and only if it runs well in the HTML5 Outliner.
Using `<article>` instead of `<div>` doesn't makes a markup semantic. What it makes is the proper usage of the HTML5 elements. If they display well in the Outliner it means the structuring logic is flawless, accessibility tools can understand it, and even maybe SEO bots. (To make sure I'm accompanying each structure with a JSON+LD SEO descriptor file)

The Block-Element-Model (BEM) methodology is in the same way crucial for humans as Semantic HTML5 is for machines.
BEM makes sure every developer working on the project is on the same page.
They know exactly where the source files are, how they are related to each other and to the design, and how they can be extended.
Using BEM makes the source code to be like being written by a single person.
It does not distorts the existing HTML, it connects automatically to style (CSS) and behaviour (Javascript), and the learning curve is a single afternoon.


## Typography

After content and structure comes typography. As this blog shows typography is the backbone of the user interface design. It can be the user interface design, alone. Take a look at my portfolio http://metamn.io. The whole design is typography and positioning.

I put emphasis on this design phase. This is where content finally shows itself on all devices. This is when finally I can reason about the entire site. Where the focus is, how attention flows, what changes the layout can bare, how many colors we will need, which decorations to use, how the navigation will fit in.

I follow a single rule setting the type. The color contrast must be high enough to support people with disabilities.


## Presentation

> 80% of web design is typography

With typography done we should have a first working version of the website presentable for feedback.
This very blog is that first working version minus the animated contact button.
With this kind of content this product is ready to be launched.

How this is possible in just a few steps? Did we skip something? What about those image sliders? That dotted background? The avatars? The footnote link navigation?

Yes, they are the reusable BEM components I've created during other projects and now I'm simply dropping it speeding up the user interface design.

= you'll get them for free. either your project will be more quickly ready, or you can spend time make it outstanding by focussing a smooth things like behaviuour / animation



- components
- styleguide



{% endmarkdown %}
