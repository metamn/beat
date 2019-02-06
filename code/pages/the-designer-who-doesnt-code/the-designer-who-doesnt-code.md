{% markdown %}

The _Should designers code_ <sup id="footnote--1">[1](#footnotes--1)</sup> debate is nonsense yet popular. The search query returned 27,800 results.

I've been long waiting for a case study which speaks for itself. Let's see it.

## Comps

Yes, in 2019 we still receive comps from designers. Either coming from Photoshop or Sketch, wrapped or not into Zeplin &mdash; for the modern front-end developer they are in the same way unusable.

One has to slice, calculate, convert pixels to elastic measures like in the nineties. Has to figure out the responsive grid structure, the responsive typography, all the reusable design elements &mdash; code them &mdash; and start adding all the exceptions every comp comes with blowing the source code and the project.

If no design thinking there is no design system and code, project, budget, people gets bloated.

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

Since the designer doesn't code ...

> The designer doesn't knows content cannot be get in a responsive way only _displayed_ in a responsive way.

... and creates comps which makes the developer to fetch all 8 posts on the back-end and hide some of them on the front-end &mdash; such a performance waste &mdash; put to be supported by those devices which have the poorest resources.

Since the designer doesn't code ...

> The designer doesn't knows the CSS Grid specification

... and spices up the design with vertical lines separating the columns. CSS Grid has no support for grid gap styling <sup id="footnote--3">[3](#footnotes--3)</sup> and a nasty hack <sup id="footnote--4">[4](#footnotes--4)</sup> has to be used to accomplish this original design idea.

The designer who doesn't code ...

> Doesn't knows exceptions are painful and bloat the source code

... and inserts an ad between the rows. The ad has different dimension and positioning which breaks the grid. An exception has to be added to support this design decision bloating the code during development time and later during maintenance.

## Solutions

If the designer were coding the following design decisions were taken:

1. Do not hide posts on smaller screens &mdash; wrap them into a navigation element. This way the resources used to get all posts on the back-end would have been not wasted on the front-end.

2. Forget the vertical column separator lines. They can't be implemented with current best practices and they need workaround. Let form follow function. In this case function is coding standards.

3. Put that ad elsewhere. Combined with 2.) it's dangerous. Moving out of the post list will spare around half of development time and budget.

With these above the task to implement the design would have been easy: use the CSS Grid. Time spent would be from minutes to around half an hour.

With vertical borders the CSS Grid technique &mdash; used across the site up until now &mdash; cannot be re-used. A research has to be done to see if the specification added the grid gap styling feature recently, or if there is a polyfill, or a nice workaround.

It turned out only a workaround exists which won't fully solve the problem since the suggested bordering is ... complicated: it applies only to the middle columns not to columns at the edge of the grid.

Time spent with research and workarounds: around an hour.

To move forward and implement the comp a loop has to be created over grid elements adding border only where necessary. For that I've already had a component built on Flexbox. Importing, adjusting to this current project took around half an hour. If it had to be written from scratch it would take at least an hour in plus.

Inserting the ad between the posts is way more complicated. It's about adding exceptions to an existing well working code.

The back-end code displaying a post list has to be modified to insert the ad; on the front-end the grid has to be re-drawn and re-bordered. The final front-end code is so ugly it is worth a look. <sup id="footnote--2">[2](#footnotes--2)</sup>

Time spent: around an hour.

## Numbers

{% endmarkdown %}

<table>
  <caption>Time taken by various solutions</caption>
  <thead>
    <tr>
      <th>Solution</th>
      <th>Duration (min)</th>
      <th>Notes</th>
    </tr>
  </thead>
  <tbody>
	  <tr>
		<td>Standards based implementation</td>
		<td>30</td>
		<td>Using the CSS Grid</td>
	  </tr>
    <tr>
      <td>Vertical borders &mdash; research</td>
      <td>60</td>
      <td></td>
    </tr>
    <tr>
      <td>Vertical borders &mdash; implementation</td>
      <td>30</td>
      <td>+60 mins if the Flexbox grid component were not be already written</td>
    </tr>
    <tr>
      <td>Ad between rows</td>
      <td>60</td>
      <td></td>
    </tr>
  </tbody>
</table>

<table>
  <caption>The amount and cost of new code added</caption>
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
      <td>10</td>
    </tr>
    <tr>
      <td><a href="https://codepen.io/metamn/pen/OdjaGE">flexbox-grid mixin</td>
      <td>62 / 54</td>
      <td>60 (if were not existing and imported but written from scratch)</td>  
    </tr>
    <tr>
      <td><a href="https://codepen.io/metamn/pen/OdjaGE">responsive-flexbox-grid</td>
      <td>48 / 39</td>
      <td>10</td>
    </tr>
    <tr>
      <td><a href="https://codepen.io/metamn/pen/OdjaGE">flexbox-grid-borders mixin</td>
        <td>30 / 26</td>
      <td>10</td>
    </tr>
    <tr>
      <td><a href="https://codepen.io/metamn/pen/OdjaGE">latest-posts mixin new code</td>
        <td>15 / 15</td>
      <td>10</td>
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
      <th>145</th>
    </tr>
  </tfoot>
</table>

<table>
  <caption>Code bloat</caption>
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
      <td>It is not re-used now while re-used across the entire site</td>
    </tr>
  </tbody>
</table>

{% markdown %}

## Pain

This project has a good few dozens of components like this _Latest posts_ depicted above. More than half of them is designed in the same _unimplementable_ way. Or, in the same _costly implementable_ way.

Remember: on this component alone we've spent at least 3 hours instead of half an hour. Yes,

> 6 times or 600% more than usual.

That's immense. And if you add them up, and consider the long term technical debt you would immediately know the answer for _"Should designers code?"_.

{% endmarkdown %}
