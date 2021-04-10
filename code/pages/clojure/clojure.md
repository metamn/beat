{% markdown %}

I've spent the last six months creating a design system with rather popular web technologies: React, JavaScript, TypeScript, CSS-in-JS, Next.js.

A total failure.

I've done all in my powers to get the job done but all fell apart.
I've never felt so bad in my career. I went to a point to give up everything.

During the process I've become frustrated, anxious and not a better but a worse person.
The technologies of _"Making the world better (TM)"_ made me inhuman.

## The idea

Five years ago<sup id="footnote--1">[1](#footnotes--1)</sup> I've managed to put together a living styleguide with HTML, SCSS, JSON, vanilla JavaScript, and Gulp, hosted on Github as a static page.

At that time there were no design systems and component libraries, and there were no individuals creating such things alone.
Styleguides were done by companies with resources.

That styleguide still powers this blog, and gave me satisfaction with sites created-with featured in online galleries.

Last autumn, with two years background in React, a little cash on hand I took a sabbatical to create the design system version of that styleguide, now with better technologies:

- React, the front-end framework.
- Emotion, a CSS-in-JS library which scales. (During the years I saw SCSS can't scale)
- Next.js, the go-to framework for static sites. (Tried Gatsby before and left because of the ugly code base.)

The idea was simple. Take your time, go greenfield, play with theory and technology, learn common practice, come up with something extraordinary &mdash; then compare the findings, the result with the styleguide created five years ago. Just to sense and aknowledge the progress the web made in half a decade.

I was confident. The results will be good &mdash; better technology and more experience.

## The first three months

It all started with experimentation, patience, and optimism: looking for the perfect stack.

I've moved from `Create React App` to `Next.js` because of the server-side rendering / static site generation support.

I've moved from `Material UI` to `Styled Components` to `Emotion` in search for full support for JSS object notation<sup id="footnote--2">[2](#footnotes--2)</sup>. Neither Material UI<sup id="footnote--3">[3](#footnotes--3)</sup> nor Styled Components<sup id="footnote--4">[4](#footnotes--4)</sup> support keyframe animations with the object notation.

I've moved back-and-forth to structure, package and publish to `npm`. With React this is not a trivial task. Neither `Bit.dev`, `lerna`, `yarn workspaces`, nor `deno`, `nx.dev`, `tsdx` helps without shortcomings and drawbacks.

Went through `BetterDocs`, `tsdoc`, `typedoc` to find the best documentation generator.

In the time left I wrote JavaScript code with the help of `lodash`, `immer`, `immutable`, and React code with `propTypes`.

In December nothing felt right. Too much code, to easy to break it, too risky to refactor. The result was far from ideal, was not a design system one could wish for.

## The second three months

In January I've took a deep breath and started from zero with TypeScript.
The idea was to get a stable API from the TypeScript type system. No breaks, easy to refactor anytime.

The idea worked. I've got confidence and finished a first iteration. The end was near.

The last mile was too much for this TypeScript + React + tsdoc + Emotion + Next.js stack.
The parts were working fine but the whole didn't.

Perhaps because I've set the goals too high for this ecosystem.
I wanted a solution where tests, documentation and examples were generated from the same source / database. No manual work in the system. That's why it is a system.

For example, in `textStyles.ts` I would define all text variants (default, body, longform, headings, etc), document them, add metadata (how to test it, how to present it for the user) then with generators create the tests and the live documentation entry.

That was too much for this stack.

- TypeScript type definitions are lost runtime. Duplicate code is necessary. First the `variants` array must be defined with JavaScript then converted to TypeScript. This way the generators gain access to it.
- Typedoc is meant for command line document generation with Mustache, not for React and JSX. The author of the library is now working on this enhancement. Meantime the API is foggy and undocumented. I had to write the JSON parser myself.
- Emotion / React hooks / Next.js don't like recursive structures. In production all works, in dev the hot module reloader breaks. Lots of bug reports on the Next.js Github page - all closed without solution. People begging for help.

## Finally

After six months of trials and errors I gave up. I gave up the stack, not the idea.
As a designer and developer I need my own Design system. That's the base of my future endeavours.

I gave up JavaScript and its entire ecosystem because:

1. With more time spent I've achieved less than five years ago.
2. Around 80% of my work was spent on the stack versus solving the problem.
3. It made me frustrated and anxious like never before.
4. Gatsby, Next.js are my worst framework experiences compared to Wordpress, Shopify, Yii, Laravel, Jekyll, Sinatra, Ruby on Rails, Gulp. If that's the JavaScript way &mdash; millions of investment in the news, frustrated devs on Github &mdash; I won't take part of it.
5. I didn't learnt anything interesting during this period. In spite the problem domain is virgin and challenging.

## Clojure

Clojure and ClojureScript is a new language pair (~10 years old vs ~25 for JavaScript) with a modern take on programming, by an author who created them, again, from desperation.

    At some point I had my “I’m mad as hell and I’m not going to take this anymore!” moment, in my backyard, on my hammock. - A History of Clojure by Rich Hickey.

With Clojure a new journey begins. As a refugee for programmers fed up with other impossible languages, this newfound gem I believe is strong enough to create a Design system for the modern era - built on Functional and Reactive Programming principles.

Clojure copes well with React. Both being functional they go hand-in-hand. That makes my original goal intact: create a Design system in React. Now with a new programming language I’ve never thought I will need it.

{% endmarkdown %}
