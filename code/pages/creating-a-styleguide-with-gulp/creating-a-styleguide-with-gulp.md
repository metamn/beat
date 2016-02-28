{% markdown %}
Styleguides have been around for a while, and like web components, they didn’t really went mainstream.

Why? There is no universal solution  like a plugin   to create a styleguide, and, there is no consensus on what goes into a styleguide.

Everybody rolls her own.
The most well known styleguides today are Google’s Material Design, Lonely Planet’s Rizzo, and Pattern Lab / Atomic Design .
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

1. A styleguide living together with the associated website. Any change is reflected both in the website and styleguide in an automatic, instant way.
2. A decision making tool. All components and groups of components building the site will have their own styleguide entry. Designers will be able to
overview a part of the user interface or a whole segment of it. Decisions can be made on all levels and details.
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
{& include '../../framework/structure/figure/figure.html.swig' %}

{% markdown %}
{% endmarkdown %}
