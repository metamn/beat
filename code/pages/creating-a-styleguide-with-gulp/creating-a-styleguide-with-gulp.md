{% markdown %}
Styleguides have been around for a while, and like web components, they didn’t really went mainstream.

Why? There is no universal solution  like a plugin   to create a styleguide, and, there is no consensus on what goes into a styleguide.

Everybody rolls her own.
The most well known styleguides today are Google’s Material Design <sup id="footnote--1">[1](#footnotes--1)</sup>,
Lonely Planet’s Rizzo <sup id="footnote--2">[2](#footnotes--2)</sup>, and Pattern Lab / Atomic Design <sup id="footnote--3">[3](#footnotes--3)</sup> .
All of them unique both in design, content and the tools behind creating them.

If you check out [styleguides.io](http://styleguides.io/) you'll find a good few dozens of tools & ways to create a styleguide.
It's over-helming. You don't know where to start, which one to choose, how to have a future-proof solution.

Never mind. This article will help you understand how styleguides work and how you can roll your own with less effort.

## Styleguide for whom?

The first question everybody should ask is who needs a styleguide and why.

Project owners might need it to be sure the design and development are in sync, everybody speaks the same language.
Designers might need it to be able to make design decisions aided by visuals &mdash; the components building the interface.
Developers might need it to have a consistent, well documented code base, which later can be extended easily even by new members.

A complete solution covers all scenarios above and provides:

1. A styleguide living together with the associated website.
Any change is reflected both in the website and styleguide in an automatic, instant way.

2. A decision making tool. All components and groups of components building the site will have their own styleguide entry.
Designers will be able to overview a part of the user interface or a whole segment of it. Decisions can be made on all levels and details.

3. Documented and easily understandable code. The styleguide will be generated from the code documentation.
Developers will have no other burden to support the styleguide than to make sure all code is documented.


Only a few tools offer a complete styleguide and Lonely Planet's Rizzo is best of them. No wonder the styleguides.io starts with it.
If you have a Ruby / Rails based project go ahead and use it, your problem is solved.
If not read on. The rest of this article will focus on how to create a Rizzo-like styleguide not tied to a programming language.

## Styleguide architecture

The theory behind maintainable styleguides was defined by Ian Feather of Rizzo, and it is called Component API.

> ... creating a component layer which both our user-facing applications and our Style Guide can work from.

In other words there is a need for a database where all user interface parameters are stored. Both the site and the styleguide uses this database to build the interface. Changes go to this database and are automatically propagated to both the site and the styleguide.
{% endmarkdown %}

{% set image = images[0] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% markdown %}
Since the styleguide architecture is so simple it can be implemented easily with tools independent of a programming language.

Today standard web development tools are built on Javascript. This makes us choose `JSON` as the database and `Gulp`, the Javascript glue engine
to sync the database with the front-end code.

Yes, we are still bound to a programming language. Unlike Ruby, Python, PHP or Go Javascript is more than a programming language.
It's the language of the internet and it is independent in that sense.

In the same way `JSON` is universal and independent, and, `Gulp` is a set of scripts widely used to make front-end code from various components.
One can replace Gulp with other front-end making tools like Grunt and Webpack. The core of this idea is the JSON database which syncs (in any technology you want) with the front-end.
{% endmarkdown %}


{% set image = images[1] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% markdown %}
In the example above we see how this theory works in practice.

1. Every user interface definition goes into a JSON file
2. Gulp creates `HTML` and `CSS` files from the database both for the site and the styleguide
3. The `HTML` and `CSS` files for the site are included also in the styleguide. This makes the styleguide stay in sync with the website.

## A concrete example

Let's take a look at how the colors of a site are defined and synced with the styleguide.

### Define style

First we will need a JSON file to define the colors:
{% endmarkdown %}
<script src="https://gist.github.com/metamn/ef8d6cf9b49b97edfded.js"></script>

{% markdown %}
Then we will have to covert this data into CSS using Gulp and Swig, a tool coming with Gulp and used to generate HTML, CSS or JS.
{% endmarkdown %}
<script src="https://gist.github.com/metamn/ebdf8f2bf940705ea89d.js"></script>

{% markdown %}
Finally we will have a complete (S)CSS file generated from the database, otherwise written by hand by front-end developers.
{% endmarkdown %}
<script src="https://gist.github.com/metamn/b693076f8cf51806de7f.js"></script>

{% markdown %}
The most important part of the process above is that developers *define data* instead of *writing code*.
This makes sure data will be the same both for the site and the styleguide and there won't be human mistakes.

Or put another way, the process above let's non-developers to describe user interfaces.
As you can see JSON is plain English and no code. It's easy to use by anyone.

A designer can hand over a JSON file with user interface definitions and the task of the developer will be only to convert that data to HTML and CSS.
Once the conversion algorithm is done that JSON file can be modified anytime and the changes are reflected instantly.

### Use style

Once styles are generated we will need the HTML to display them.
Like in the case of the CSS, HTML will use the JSON data to display arbitrary styles.

The example below is the styleguide entry for colors. It's a HTML skeleton code displaying which colors are used to build the site. These colors can change, new ones can be added or others removed.
{% endmarkdown %}
<script src="https://gist.github.com/metamn/dc1b4efc4e71f31abf22.js"></script>

{% markdown %}
Gulp transforms the skeleton into a final HTML which contains exactly the same colors as defined in the `colors.scss.json` file above.
{% endmarkdown %}
<script src="https://gist.github.com/metamn/2d01cc5e07c7e3221739.js"></script>



{% set image = images[2] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% markdown %}
