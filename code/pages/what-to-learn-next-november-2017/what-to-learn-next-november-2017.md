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
On Page transitions I didn't went with barba.js but with Vue. While barba.js is just a trick Vue is a complete ecosystem. A story coming about Vue soon.

## So what to learn next?

It's easy. What's itching you, and what has to be learned to stay at the edge. In a lucky case both are pointing to the same direction.

In a more lucky case something is itching you and still no trends are pointing to a solution. This is called business opportunity.

### Responsive images

Yes they are hurting me badly. More exactly how to make a screenshot to have variants for mobile, tablet, laptop &mdash; portrait and landscape modes with retina support. It's about 8 images of different sizes and markup code.

The idea is to make two screenshots of a page, one portrait and one retina, describe what sizes do you need for your responsive website, and a script generates the images and the necessary code to display the images.

And do that in batch mode for multiple pages.

### Debt-free code

In a recent article<sup id="footnote--2">[2](#footnotes-2)</sup> I was *complaining* about how herculean become the job of a generalist freelancer, ie. unicorn.

Front end development and design is changing on an unbelievable pace. While you keep up with design &mdash; SVG, CSS, JS and canvas animations; virtual and augmented reality in the browser; the brutalist movement; CSS getting as strong as Photoshop was with layers; design systems; and so on &mdash; during that time the development side is running wild: progressive web apps, reactive components, sub-second page loading time, headless CMS etc.

What one can do? Use frameworks both for the design and the development part. Like Bootstrap with Backbone; Bulma with Vue; Material Design with Angular; BEM with Gulp or Webpack.

No one can avoid anymore<sup id="footnote--3">[3](#footnotes-3)</sup> to skip frameworks.

What a *real* designer and developer can do is to use a framework to make code writing easier and use no framework to make UI elements look unique. Like use React but don't use Bootstrap, Bulma or Material Design.

That's what I mean on debt-free code. It's something like using the best framework incorporating the latest browser technologies and a strong support from a company / community &mdash; while being not trapped in.

Using a framework which is continuously updated with industry best practices and still leaves you free to design with your own style. To *move* your style from a previous framework to a new one.

I know it's hard. A year ago the BEM / SCSS / Gulp / Webpack stack was the industry best practice; now without React and Vue there is no real edge for a website.

I know it's hard. I'm porting now my *award-winning*<sup id="footnote--4">[4](#footnotes-4)</sup> BEM / SCSS / HTML / JS / JSON / MD / Styleguide driven components to Vue and I have to make hard trade-offs. Vue is in many aspects better but in some aspects not yet advanced as my old framework.

So technical debt everywhere. Which is a [risk](https://medium.com/@metamn/co-founding-4423b323fdc1) on long term I want to avoid.

{% endmarkdown %}
