{% markdown %}

The last half year I've spent with creating a Design system with the latest and bravest web technologies: React, JavaScript and TypeScript, Next.js.

A total failure.

I've never felt so bad in my career. I went to a point to give up everything.
I've done all in my powers to get the job done and finally all fell apart.

Meantime I've become frustrated, anxious and not a better but a worse person.
The technologies "Making the world better (TM)" made me inhuman.

## The idea

[Five years ago](http://metamn.io/beat/creating-a-styleguide-with-gulp/) I've managed to put together a living styleguide with HTML, SCSS, JSON, vanilla JavaScript, and Gulp, hosted on Github as a static page.

At that time there were no design systems and component libraries, and there were no / few individuals creating such things alone.
Styleguides were done by companies with better resources.

That styleguide still powers this blog, and gave me satisfaction with sites created-with featured in online galleries.

Last autumn, with two years background in React, a little cash on hand I took a sabbatical to create a better version of that styleguide with better technologies:

- React, as the front-end framework.
- A CSS-in-JS library, which scales. (During the years I saw SCSS can't scale)
- Next.js as the go-to framework for static sites. (Tried Gatsby before and left because of the ugliest code base I've met in a commercial product so far.)

The idea was simple. Go greenfield, play with theory, learn common practice from the dozens on other React Design system implementations &mdash; then compare the findings, the result with the styleguide created five years ago.

I was confident. The results will be far better. Because of the new and better technology, and the experience accumulated since.

## The first three months

It all started with experimentation, patience, and optimism: looking for the perfect stack.

I've moved from `Create React App` to `Next.js` because of the server-side rendering / static site generation support.

I've moved from `Material UI` to `Styled Components` to `Emotion` for full JSS object notation support. Neither Material UI nor Styled Components support keyframe animations with the object notation.

I've moved back-and-forth to structure and package the Design system and publish to `npm`. With React this is not a trivial task. Neither `Bit.dev`, `lerna`, `yarn workspaces`, nor `deno` helps.

Went through `BetterDocs`, `tsdocs`, `typedocs` to find the best documentation generatin tool.

In the time left I wrote JavaScript code with the help of `lodash`, `immer`, `immutable` and React code with `propTypes`.

In December nothing felt right. Too much code, to easy to break, too risky to refactor. The result was far from ideal, was not a Design system one could wish for.

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

{% endmarkdown %}
