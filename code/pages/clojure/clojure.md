{% markdown %}

I've spent the last six months creating a design system with rather popular web technologies: React, JavaScript, TypeScript, CSS-in-JS, Next.js.

A total failure.

I've done all in my powers to get the job done but all fell apart.
I've never felt so bad in my career. I went to a point to give up everything.

During the process I've become frustrated, anxious and not a better but a worse person.
The technologies of _"Making the world better (TM)"_ made me inhuman.

## The idea

Five years ago<sup id="footnote--1">[1](#footnotes--1)</sup> I managed to put together a living styleguide with HTML, SCSS, JSON, vanilla JavaScript, and Gulp, hosted on Github as a static page.

At that time there were no design systems and component libraries, and there were no individuals creating such things alone.
Styleguides were done by companies with resources.

That styleguide still powers this blog, and gave me satisfaction with sites created-with featured in online galleries.

Last autumn, with two years background in React, a little cash on hand I took a sabbatical to create the design system version of that styleguide, now with better technologies:

- React, the front-end framework.
- Emotion, a CSS-in-JS library which scales. (During the years I saw SCSS can't scale)
- Next.js, the go-to framework for static sites. (Tried Gatsby before and left because of the ugly code base.)

The idea was simple. Take your time, go greenfield, play with theory and technology, learn common practice, come up with something extraordinary &mdash; then compare the findings, the result with the styleguide created five years ago. Just to sense and acknowledge the progress the web made in half a decade.

I was confident. The results will be good &mdash; due to better technology and more experience.

## The first three months

It all started with experimentation, patience, and optimism: looking for the perfect stack.

I've moved from `Create React App` to `Next.js` because of the server-side rendering / static site generation support.

I've moved from `Material UI` to `Styled Components` to `Emotion` in search for full support for JSS object notation<sup id="footnote--2">[2](#footnotes--2)</sup>. Neither Material UI<sup id="footnote--3">[3](#footnotes--3)</sup> nor Styled Components<sup id="footnote--4">[4](#footnotes--4)</sup> supports keyframe animations with the object notation.

I've moved back-and-forth to structure, package and publish to `npm`. With React this is not a trivial task. Neither `Bit.dev`, `lerna`, `yarn workspaces`, nor `deno`, `nx.dev`, `tsdx` helps without shortcomings and drawbacks.

Went through `BetterDocs`, `tsdoc`, `typedoc` to find the best documentation generator.

In the time left I wrote JavaScript code with the help of `lodash`, `immer`, `immutable`, and React code with `propTypes`.

In December nothing felt right. Too much code, too easy to break it, too risky to refactor. The result was far from ideal, and was not a design system one could wish for.

## The second three months

In January I took a deep breath and started from zero with TypeScript.
The idea was to get a stable API from the TypeScript type system upon which the design system is built. Without breaks and with easy refactoring.

The idea worked. I've got confidence and finished the first iteration. The end was near.

The last mile was too much for this TypeScript + React + Emotion + Next.js + tsdoc stack.
The parts were working fine but the whole didn't.

Truth is I've pushed the requirements to the limits of this ecosystem.

I wanted a solution where tests, documentation and live doc examples were generated from the same source code. No manual work. That's why it is a system.

As far as I know major design system implementations never aimed for<sup id="footnote--5">[5](#footnotes--5)</sup> nor achieved such integration and automation.

Perhaps because the ecosystem is not prepared for such finesse.

For example, TypeScript type definitions are dropped at runtime. Any data held in types is lost.
To let generators access these information code had to be duplicated in JavaScript.

{% endmarkdown %}

<script src="https://gist.github.com/metamn/2560fd76151c5d6571fa0844294f83d2.js"></script>

{% markdown %}

Typedoc, the documentation generator is meant for command line usage, not for using with React and JSX<sup id="footnote--6">[6](#footnotes--6)</sup>. Meantime the API is foggy and undocumented. And writing a JSON parser, on this project, is a distraction.

Emotion / React hooks / Next.js &mdash; one of them, all of them, a combination of them &mdash; don't like recursive structures. And recursion is extensive when a complete documentation site is generated.

More exactly in production all works fine. During development the hot module reloader breaks.
To root out the cause I've started to check Next.js and found dozens of issues related to hot reloading; most of them closed without solution; and people begging for help. At the time of writing there are 24 open and 87 closed issues in this subject!<sup id="footnote--7">[7](#footnotes--7)</sup>

And the list follows. `Jest` the test runner is not pure. The same test suite gives different results on each run. This way you never know when testing is successful or not.

Combined, these shortcomings result in frustration. They reveal the inherent vice of the JavaScript ecosystem.

Instead of writing joyfully about solving the `single source of truth -> test + documentation + live example` generation problem I was forced to write about how the stack made it impossible to do it.

JavaScript, by poor design, enables distraction, patchwork, gluing. It's not science, programming, engineering &mdash; it's scripting.

## Finally

After six months of trials and errors I gave up. I gave up the stack, not the idea.
As a designer and developer I need my own design system. That's the base of my future endeavours.

I gave up JavaScript and its entire ecosystem because:

{% endmarkdown %}

{% set list = list1 %}
{% include "../../framework/design/decorations/list-expandable/list-expandable.html.swig" %}

{% markdown %}

## Clojure

Clojure and ClojureScript is a new language pair (~10 years old vs ~25 for JavaScript) with a modern take on programming, by an author who created them, again, from desperation.

> At some point I had my “I’m mad as hell and I’m not going to take this anymore!” moment, in my backyard, on my hammock. - A History of Clojure by Rich Hickey<sup id="footnote--8">[8](#footnotes--8)</sup>.

With Clojure a new journey begins. As a refugee for programmers fed up with other impossible languages, this newfound gem I believe is strong enough to create a design system for the modern era - built on functional and reactive programming principles.

Clojure copes well with React. Both being functional they go hand-in-hand. That makes my original goal intact: create a design system in React. Now with a new programming language I’ve never thought I will need it.

{% endmarkdown %}
