{% markdown %}

We all love Design Systems. For their clarity, comfort, and the quietude inserts in the back of our head: finally, we are on the right path.

However, we might not be immediately capable to embrace it. They require change of mind and a new company culture.

## What Design Systems Are

It's 2019 yet many articles with such titles are popping up constantly and are upvoted. Even silly or basic ones. People &mdash; it seems &mdash; are still familiarizing with the idea.

I found this strange. Google's Material Design is years old; so it is Lonely Planet's Rizzo. React and co. offers myriads of design system and living styleguide plugins and implementations. Sketch has a plugin to export a design system into React components without code written. Even this blog was created using a design system four years ago.

Why Design Systems are not ubiquitous?

The answer was not obvious until I've met a company willing to implement it but failed on the road.

> _Development Team_: Yes, we can see now how a Design System can constitute the basis for all our other assets (websites);

> _Design Team_: Yes, we've been designing with design systems since 2007 and we see the commercial capacity.

## What difficulties Design Systems impose

In spite of the enthusiasm and good will we've ended up with no design comps; The design team was not able to deliver a design system. On code, we've ended up with components so big in number and redundancy they've escaped under control.

And the lessons are frightening.

### Deconstruction

User interfaces created with a design system are not a continuously expanding thing like the comps of the past were. They are canonical, they deconstruct instead of expand. They ask the question _How we can re-use?_ instead of _Let's quickly add a ..._.

There are no hacks instead there is contemplation. If an element in a design system is singular, not reused elsewhere &mdash; it shouldn't be part of the system.

### Systems thinking

Artists are not engineers. Some minds are not capable of systems thinking. A person with excellent aesthetic skills can't be expected to oversee all the _mechanical_ parts of an user interface from various kind of links and link states to responsive and re-usable page structures &mdash; from atoms to molecules and organisms.

### Code components

Design systems require to be implemented with code components. A relatively new paradigm, again, components eliminate the chance of hacking. No dev can jump in and change quickly a button's color or reduce the size of an image.

First the system has to be understood.

### Real teamwork

Design thinking and design systems are more math than art. They are a combination of creativity and engineering skills. It's a teamwork where both parties &mdash; designers and developers &mdash; are equal and decisions are made on best practices, consensus, rather than authority.

If there is no perfect systems thinking during design the code will reveal it.

{% endmarkdown %}
