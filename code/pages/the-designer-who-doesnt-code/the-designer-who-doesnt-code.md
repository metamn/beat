<div class="notice notice-start">
<span class="text">
u p d a t e &mdash; u p d a t e &mdash; u p d a t e &mdash; u p d a t e &mdash; u p d a t e &mdash; u p d a t e &mdash; u p d a t e &mdash; u p d a t e &mdash; u p d a t e &mdash; u p d a t e &mdash;  u p d a t e &mdash;  u p d a t e &mdash;
</span>
</div>

{% markdown %}

The [first version](https://dev.to/metamn/the-designer-who-doesnt-code-1l8d) of this article left room for inflammatory [comments](https://lobste.rs/s/rrdjwo/designer_who_doesn_t_code).

A few readers choose to continue a nonsense debate &mdash; should designers code &mdash; instead of looking at the numbers. This article is a case study not an opinionated piece.

To make it purely objective the first introductory part &mdash; Comps &mdash; and the last sections &mdash; Pain; Cure &mdash; were rewritten. The rest, the case study was untouched.

{% endmarkdown %}

<div class="notice notice-end">
<span class="text">/ u p d a t e</span>
</div>

<div class="notice notice-start">
<span class="text">
d i s c l a i m e r &mdash; d i s c l a i m e r &mdash; d i s c l a i m e r &mdash; d i s c l a i m e r &mdash; d i s c l a i m e r &mdash; d i s c l a i m e r &mdash; d i s c l a i m e r &mdash; d i s c l a i m e r &mdash;</span>
</div>

{% markdown %}

I'm in equal measure a designer &mdash; self-taught with works featured in online galleries and theme stores &mdash; and developer &mdash; with a degree in Computer Science.

This is a privileged situation some people find it funny, others unbelievable, others take it with envy.

I use it to create with confidence, end-to-end, from user research to performance. And to share the findings with others as often as possible.

{% endmarkdown %}

<div class="notice notice-end">
<span class="text">/ d i s c l a i m e r</span>
</div>

{% markdown %}

## Comps

Occasionally I do freelancing for clients and often times I'm hired at the development phase.

This means I'm receiving comps from designers either coming from Photoshop or Sketch, wrapped or not into Zeplin.

These comps are imperfect. They contain design decisions not grounded in web development best practices. Making a comp work sometimes is very painful and expensive.

I've been long waiting for a case study which speaks for itself. Let's see it.

## The task

It sounds simple: list the latest posts on the homepage in a responsive way. On large screens there should be 8 posts displayed 4 in a row, on medium screens 6 posts / 3 in a row, on tablet 4 posts / 2 in a row, on mobile 2 posts each on its own row.

{% endmarkdown %}

{% set image = images[0] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% set image = images[1] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% set image = images[2] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% set image = images[3] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% markdown %}

The comps are blurred out to protect the designer and the company. The black and red boxes are ad placeholders, and, there are gray vertical lines between columns the blurred screenshots can't show.

The comps were replicated using mockups. You can check it [live on Codepen](https://codepen.io/metamn/pen/OdjaGE?editors=0100#0) to better sense the task.

{% endmarkdown %}

{% set image = images[4] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% markdown %}

## Problems

Since the designer doesn't code / doesn't consult with a developer ...

> The designer doesn't know content cannot be get in a responsive way only _displayed_ in a responsive way.

... and creates comps which makes the developer to fetch all 8 posts on the back-end and hide some of them on the front-end &mdash; such a performance waste &mdash; put to be supported by those devices which have the poorest resources.

> The designer doesn't know the CSS Grid specification

... and spices up the design with vertical lines separating the columns. CSS Grid has no support for grid gap styling <sup id="footnote--2">[2](#footnotes--2)</sup> and a nasty hack <sup id="footnote--3">[3](#footnotes--3)</sup> has to be used to accomplish this original design idea.

> The designer doesn't know exceptions are painful and bloat the source code

... and inserts an ad between the rows. The ad has different dimension and positioning which breaks the grid. An exception has to be added to support this design decision bloating the code during development time and later during maintenance.

## Solutions

If the designer were coding or consulting with a developer the following design decisions were taken:

{% endmarkdown %}

{% set list = list1 %}
{% include "../../framework/design/decorations/list-expandable/list-expandable.html.swig" %}

{% markdown %}

With these practical design decisions the implementation would have been easy: use the CSS Grid. Time spent would be from minutes to around half an hour.

With vertical borders the CSS Grid technique &mdash; used across the site up until now &mdash; cannot be re-used. Research has to be done to see if the specification added the grid gap styling feature recently, or if there is a polyfill, or a nice workaround.

It turned out only a workaround exists which won't fully solve the problem since the suggested bordering is ... complicated: it applies to middle columns treating columns at the edge as exceptions.

Time spent with research and workarounds: around an hour.

To implement the comp a loop has to be created over grid elements adding border only where necessary. For that I've already had a component built on Flexbox. Importing, adjusting to this current project took around half an hour. If it had to be written from scratch it would take at least an hour in plus.

Inserting the ad between the posts is way more complicated. It's about adding exceptions to an existing well working code. The back-end code displaying a post list has to be modified to insert the ad; on the front-end the grid has to be re-drawn and re-bordered.

The final front-end code is so ugly it is worth a look. <sup id="footnote--1">[1](#footnotes--1)</sup>

Time spent: around an hour.

## Numbers

{% endmarkdown %}

<table>
  <caption>
  	<span class="text">The cost of the solutions</span>
  </caption>
  <thead>
    <tr>
      <th>Solution</th>
      <th>Duration (min)</th>
      <th>Notes</th>
    </tr>
  </thead>
  <tbody>
	  <tr>
		<td>Practical implementation</td>
		<td>30</td>
		<td>Using the CSS Grid</td>
	  </tr>
    <tr>
      <td>Vertical borders &mdash; research</td>
      <td>60</td>
      <td>Wasted. Only a nasty hack found</td>
    </tr>
    <tr>
      <td>Vertical borders &mdash; implementation</td>
      <td>30</td>
      <td>+60 mins if the Flexbox grid component were not be already written</td>
    </tr>
    <tr>
      <td>Ad between rows</td>
      <td>60</td>
      <td>The result is a very ugly patch over a well written code</td>
    </tr>
  </tbody>
</table>

<table>
  <caption>
  	<span class="text">The amount and cost of new code added</span>
  </caption>
  <thead>
    <tr>
      <th>New code</th>
      <th>Lines of code (LOC/SLOC)</th>
      <th>Time spent (mins)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="https://gist.github.com/metamn/b052d61cc36ae86a4c0de4e7fed38638">post-list-with-ad.php</a></td>
      <td>37 / 32</td>
      <td>15</td>
    </tr>
    <tr>
      <td><a href="https://codepen.io/metamn/pen/OdjaGE">flexbox-grid mixin</td>
      <td>62 / 54</td>
      <td>60</td>  
    </tr>
    <tr>
      <td><a href="https://codepen.io/metamn/pen/OdjaGE">responsive-flexbox-grid mixin</td>
      <td>48 / 39</td>
      <td>15</td>
    </tr>
    <tr>
      <td><a href="https://codepen.io/metamn/pen/OdjaGE">flexbox-grid-borders mixin</td>
        <td>30 / 26</td>
      <td>15</td>
    </tr>
    <tr>
      <td><a href="https://codepen.io/metamn/pen/OdjaGE">latest-posts mixin new code</td>
        <td>15 / 15</td>
      <td>15</td>
    </tr>
    <tr>
      <td><a href="https://codepen.io/metamn/pen/OdjaGE">latest-posts--regrid-for-ad mixin</td>
        <td>108 / 97</td>
      <td>45</td>
    </tr>    
  </tbody>
  <tfoot>
    <tr>
      <th>Total</th>
      <th>300 / 263</th>
      <th>165</th>
    </tr>
  </tfoot>
</table>

<table>
  <caption>
  	<span class="text">Code bloat</span>
  </caption>
  <thead>
    <tr>
      <th>Component</th>
      <th>Operation</th>
      <th>Exception</th>
    </tr>
  </thead>
  <tbody>
	  <tr>
		<td>Post list with ad</td>
		<td>Added</td>
		<td>It might be not re-used again</td>
	  </tr>
    <tr>
      <td>Flexbox grid</td>
      <td>Added</td>
      <td>It might be not re-used again</td>
    </tr>
    <tr>
      <td>Responsive flexbox grid</td>
      <td>Added</td>
      <td>It might be not re-used again</td>
    </tr>
    <tr>
      <td>Responsive grid</td>
      <td>Skipped</td>
      <td>It is not re-used now while it is re-used across the entire site</td>
    </tr>
  </tbody>
</table>

{% markdown %}

## Pain

This project has a good few dozens of sections like this _Latest posts_ depicted above. More than half of them is designed in the same _unimplementable_ way. Or, in the same _costly implementable_ way.

Remember: on this component alone we've spent at least 2.5-3 hours instead of half an hour. Yes,

> 5 times or 500% more than usual.

That's immense. It all adds up during development time, and, rolls out as a technical debt for the future.

## Cure

Big / well organized / informed teams might be lucky. They've probably enrolled a perfect designer &larr;&rarr; developer communication strategy to avoid this kind of extra cost and technical debt.

Small teams can do three things:

{% endmarkdown %}

{% set list = list2 %}
{% include "../../framework/design/decorations/list-expandable/list-expandable.html.swig" %}

{% markdown %}

{% endmarkdown %}
