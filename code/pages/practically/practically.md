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

Content turned into data adds magic.

## Structure

Structuring data for web has two equally important facets: the structure must be understandable by both people and machines.
On people I mean team members, anybody working with code. On machines I mean browsers and bots, screen readers and web crawlers.

For people I use BEM. For the browser I use Semantic HTML5. For bots the JSON+LD SEO descriptor.

Semantic HTML5 is done right &mdash; only and only &mdash; if it runs well in the HTML5 Outliner.
Using `<article>` instead of `<div>` doesn't makes a markup semantic. It's the proper usage of the HTML5 elements. If they display well in the Outliner it means the structuring logic is flawless, accessibility tools can understand it, and even maybe SEO bots. (To make sure I'm accompanying each structure with a JSON+LD SEO descriptor file)

The Block-Element-Model (BEM) methodology makes sure every developer &mdash; working *now* on the project *or in the future* &mdash; is on the same page.
It tells exactly where the source files are, how they are related to each other and to the design, and how they can be extended.
Using BEM makes the source code to be like being written by a single person.

BEM is a not a plugin, not a script, not a framework, not an extension, not a tool. It's a mindset.
You don't have to install anything and the learning curve is an afternoon.

Semantic HTML5 and BEM are real breakthroughs. They 'force' you to create the best structure possible.
When I feel something smells on the user interface it turns out the problem lies in the structure. Fixing the structure makes clear how to fix the design. Having a solid structure is a prerequisite for a solid design.


## Presentation

After content and structure comes presentation. Presentation is major part typography and minor part decoration.

Typography is the backbone of the user interface design. It can be the user interface design alone.

I put emphasis on this design phase. This is where content shows itself first time, on all devices. This is where, first time, I can reason about the entire site. Where the focus is, how attention flows, what changes the layout can bare, how many colors we will need, which decorations to use, how the navigation will fit in.

Once the type is set we can say the first, minimum viable version of the site is ready.
This blog you are reading now is a minimum viable version + a single additional decorative element, the contact button.

How this can be possible? Where the other design elements come from? The image slider, the dotted background, the avatars?
They are all reusable BEM components created previously and now integrated in this project.

Components are useful. They summarise previous experience. They make design and development superfast. And less expensive.
New clients get for free the components created for previous clients.


{% endmarkdown %}
