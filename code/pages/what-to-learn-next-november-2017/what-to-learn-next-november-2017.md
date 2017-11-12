{% markdown %}

Another year<sup id="footnote--1">[1](#footnotes--1)</sup> another retrospective.

It's good to have the time to review as a whole what are the new tricks and techniques on the web scene, and to see if the last year's tricks were learned or skipped.

This year was lucky; the goals set up a year ago were touched at least.
{% endmarkdown %}

{% set list = list2 %}
{% include "../../framework/design/decorations/list-expandable/list-expandable.html.swig" %}

{% markdown %}

Card based user interfaces and Page transitions can be marked done.

I've managed to come up with an elegant UI for an online marketplace web app displaying hundreds of categories and tens of different product types using cards as seen in Google's Material Design.

The result is not Yet Another Material Design Clone but its principles applied to a specific use case.

{% endmarkdown %}

{% set image = images[0] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% set image = images[1] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% markdown %}
On Page transitions I didn't went with barba.js but with Vue. While barba.js is just a trick Vue is a complete ecosystem. A story is coming about Vue soon.

## So what to learn next?

It's easy. What's itching you, and what has to be learned to stay at the edge. In a lucky case both are pointing to the same direction.

In a more lucky case something is itching you yet no trends are pointing to a solution. This is called business opportunity.

### Responsive images

Yes they are hurting me badly. More exactly how to make a screenshot to have responsive variants for mobile, tablet, laptop &mdash; portrait and landscape modes with retina support. It's about 8 images of different sizes and markup code.

The idea is to make two screenshots of a page, one portrait and one retina, describe what sizes do you need for your responsive website, and a script generates both the images and the necessary code to display the images.

And do that in batch mode for multiple screenshots.

### Debt-free code

In a recent article<sup id="footnote--2">[2](#footnotes-2)</sup> I was *complaining* about how herculean become the job of a generalist freelancer, ie. unicorn.

Front end development and design is changing on an unbelievable pace. While you keep up with design &mdash; SVG, CSS, JS and canvas animations; virtual and augmented reality in the browser; the brutalist movement; CSS layers; design systems; and so on &mdash; during that time the development side is running wild again: progressive web apps, reactive components, sub-second page loading time, headless CMS etc.

What one can do? Use frameworks both for the design and the development part. Like Bootstrap with Backbone; Bulma with Vue; Material Design with Angular; BEM with Gulp or Webpack.

No one can avoid anymore<sup id="footnote--3">[3](#footnotes-3)</sup> to skip frameworks.

What a *real* designer and developer can do is to use a framework to make code writing easier and use no framework to make UI elements look unique. Like use React but don't use Bootstrap, Bulma or Material Design.

That's what I mean on debt-free code. It's something like using a framework incorporating the latest browser technologies and being not trapped in.

Using a framework which is continuously updated with industry best practices and still leaves you free to design with your own style.

I know it's hard to find one. A year ago the BEM / SCSS / Gulp / Webpack stack was the industry best practice; now without React and Vue there is no real edge for a website.

I'm porting currently my *award-winning*<sup id="footnote--4">[4](#footnotes-4)</sup> BEM / SCSS / HTML / JS / JSON / MD / Styleguide driven components to Vue and I have to make hard trade-offs. Vue is in many aspects better but in some aspects not yet advanced as my old framework.

Technical debt everywhere. A [risk](https://medium.com/@metamn/co-founding-4423b323fdc1) one needs to avoid.

It seems last year<sup id="footnote--1">[1](#footnotes-1)</sup> I've pinned down better what is a debt-free framework.
{% endmarkdown %}

{% set list = list1 %}
{% include "../../framework/design/decorations/list-expandable/list-expandable.html.swig" %}

{% markdown %}
I still consider it a goal well worth following.

While 1.) and 2.) can be solved by Vue or a similar ecosystem 3.) is fully personal and subjective.

### Find new ways

The Adbusters is this year's revelation. The printed magazine is the proudest on my coffee table; the app is the app on my iPad; the content is my lifelong hobby; and the ad-free model is probably unique in the mainstream media.

What else? It's a masterwork: perfect in all aspects.

After eliminating the code-debt / finding the best framework which lets me focus on design I'll go after<sup id="footnote--2">[2](#footnotes-2)</sup> the Adbusters model: design a publication which looks the same way brilliant on all platforms be it print, web, app, or display.  

Web is to focus here. The rest was done already.

## The learn list

During the year I'm collecting interesting technical tricks and tips into my Gmail's `To learn` folder. Interesting technical articles go to `To clients` folder which gets published regularly at [Pulse](http://metamn.io/pulse/). The best websites go to the `ww` folder and are compiled here as a *Masters of Web* slideshow. The trends found in these websites are compiled into the *Web Trends* series of this very blog.

Now is time to compile the learn list: web techniques which put you on the edge, collected from newsletters, hacker and designer news forums, blogs and magazines.

- [Declarative and stateless webgl](http://regl.party/)
- [Poly 3D by Google](https://poly.google.com/)
- [Programming Design Systems](https://programmingdesignsystems.com/)
- [Liquid Distortion Effects ](https://tympanus.net/Development/LiquidDistortion/)
- [Sliced Dual Image Layout ](https://tympanus.net/Development/SlicedDualImageLayout/index3.html)
- [Sparklines: tiny charts in text](http://aftertheflood.co/projects/atf-spark)
- [Kinetic Typography](https://vimeo.com/230709753)
- [Pts.js - an experiment library](https://ptsjs.org/)
- [3D Parallax ... and more](http://yiwenl.github.io/Sketches/exps/30/)
- [Computerized Forms - poster designs move to music ](http://computerizedforms.com/)
- [Organic Shape Animations with SVG clipPath](https://tympanus.net/Development/OrganicShapeAnimations/)
- [SVG video mask on text](https://codepen.io/SimonEvans/pen/weoLLB)
- [The Equilateral Triangle of a Perfect Paragraph](https://css-tricks.com/equilateral-triangle-perfect-paragraph/)
- [Mathematics and art, in an interactive way](https://imaginary.org/program/surfer)
- [CindyJS is a framework to create interactive (mathematical) content for the web.](https://cindyjs.org/)
- [Chromatism - utility functions for colours](https://github.com/toish/chromatism/blob/master/README.md)
- [The Experimental Layout Lab
of Jen Simmons](http://labs.jensimmons.com/2016/)
- [Little Fragments](https://tympanus.net/Tutorials/LittleFragments/)
- [Human Advancement Research Community](https://harc.ycr.org/)
- [Creating a Book Cover Using JavaScript and p5.js](https://css-tricks.com/creating-book-cover-using-javascript-p5-js/)
- [Web developer roadmap](https://github.com/kamranahmedse/developer-roadmap/blob/master/README.md)
- [Reaction - open source, real-time ecommerce](https://reactioncommerce.com/)
- [Netlify CMS](https://www.netlifycms.org/)
- [Color fonts](https://www.colorfonts.wtf/)
- [Akiyoshi's illusion pages](http://www.ritsumei.ac.jp/~akitaoka/index-e.html)
- [Design patterns for humans](https://github.com/kamranahmedse/design-patterns-for-humans/blob/master/README.md)
- [Google Data Studio](https://www.google.com/analytics/data-studio/)
- [Creating Generative Art with D3.js](https://learningd3.com/blog/generative-art/)


{% endmarkdown %}
