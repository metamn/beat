{% markdown %}
Styleguides have been around for a while, and like web components, they didn’t went mainstream.

Why? No universal solution  exists  to create a styleguide, and, there is no consensus on what goes into a styleguide.

Everybody rolls her own.
The most well known styleguides today are Google’s Material Design <sup id="footnote--1">[1](#footnotes--1)</sup>,
Lonely Planet’s Rizzo <sup id="footnote--2">[2](#footnotes--2)</sup>, and Pattern Lab / Atomic Design <sup id="footnote--3">[3](#footnotes--3)</sup> .
All unique in design, content and the tools behind creating them.

If you check out [styleguides.io](http://styleguides.io/) you'll find dozens of tools & ways to create a styleguide.
It's overhelming. You don't know where to start, which one to choose, how to have a future-proof solution.

Never mind. This article will help you understand how styleguides work and how you can roll your own with less effort.

## Styleguide for whom?

The first question everybody should ask is who needs a styleguide and why.

Project owners might need it to be sure the design and development are in sync, everybody speaks the same language.
Designers might need it to be able to make design decisions aided by visual representation of components building the interface.
Developers might need it to have a consistent, well documented code base, understandable by new members.

A *complete* solution covers all scenarios above and provides:

1. A styleguide living together with the associated website.
Any change in design updates the styleguide in an automatic way.

2. A decision making tool. All components and groups of components building the site will have their own styleguide entry.
Designers will be able to overview a part of the user interface or a whole segment of it.

3. Code documentation tool to generate the styleguide. To support the styleguide developers will have no other burden than to maintain the documentation.


A few tools offer a complete styleguide and Lonely Planet's Rizzo is best of them. No wonder the styleguides.io starts with it.
If you have a Ruby / Rails based project go ahead and use it, problem solved.
If not read on. The rest of this article will focus on how to create a Rizzo-like styleguide not tied to a specific programming language.

## Styleguide architecture

The theory behind maintainable styleguides is *Component API* defined by Ian Feather of Rizzo.

> ... creating a component layer which both our user-facing applications and our Style Guide can work from.

In other words there is a need for a database to store all user interface parameters. Both the site and the styleguide uses this database to build the interface. Changes go to this database and are automatically propagated to both the site and the styleguide.
{% endmarkdown %}

{% set image = images[0] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% markdown %}
Since the styleguide architecture is so simple we can implement with our existing tools.
Building with the Javascript ecosystem will make us choose JSON as the database and (probably) Gulp the glue engine
to sync the database with the front-end code.

{% endmarkdown %}


{% set image = images[1] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% markdown %}
In the example above we see how this theory works in practice.

1. Every user interface definition goes into a JSON file

2. Gulp creates HTML and CSS files from the database both for the site and the styleguide

3. The HTML and CSS files for the site are included also in the styleguide. This makes the styleguide stay in sync with the website.


## A concrete example

Let's take a look at how to define the colors of a site and sync with the styleguide.

### Define style

First we will need a JSON file to define the colors:
{% endmarkdown %}
<script src="https://gist.github.com/metamn/ef8d6cf9b49b97edfded.js"></script>

{% markdown %}
Then we will have to covert this data into CSS using Gulp and Swig, a tool coming with Gulp and used to generate HTML, CSS or JS.
{% endmarkdown %}
<script src="https://gist.github.com/metamn/ebdf8f2bf940705ea89d.js"></script>

{% markdown %}
After conversion we will have a complete SCSS file, generated from the database, which otherwise would be written by hand by front-end developers.
{% endmarkdown %}
<script src="https://gist.github.com/metamn/b693076f8cf51806de7f.js"></script>

{% markdown %}
The most important part of the process above is that we *define data* instead of *writing code*.
This makes sure data will be the same both for the site and the styleguide and there won't be human mistakes.

Or put another way, the process above let's non-developers to describe user interfaces.
JSON is plain English and no code. It's easy to use by anyone.

A designer can hand over a JSON file with user interface definitions and the single task of the developer will be to convert that data to HTML and CSS.

### Use style

Once styles are generated we will need the HTML to display them.
Like the CSS, HTML will use the JSON data to create the structure displaying styles.

The example below is the styleguide entry for colors. It's a HTML skeleton code displaying which colors are used to build the site. These colors can change, new ones can be added or others removed.
{% endmarkdown %}
<script src="https://gist.github.com/metamn/dc1b4efc4e71f31abf22.js"></script>

{% markdown %}
Gulp transforms the skeleton into a final HTML which contains the same colors as defined in the `colors.scss.json` file above.
{% endmarkdown %}
<script src="https://gist.github.com/metamn/2d01cc5e07c7e3221739.js"></script>



{% set image = images[2] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% markdown %}
