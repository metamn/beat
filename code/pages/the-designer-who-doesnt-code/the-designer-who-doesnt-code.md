{% markdown %}

The _"Should designers code"_ debate is nonsense yet very popular. The [search query](https://www.google.com/search?q=%22Should+designers+code%22) just returned 27,800 results.

I've been long waiting for a case study which speaks for itself. Let's see it.

## Comps

Yes, in 2019 we still receive comps from designers. Either coming from Photoshop or Sketch, wrapped or not into Zeplin &mdash; for the front-end developer they are in the same way unusable.

One has to slice and measure and convert pixels to elastic measures like in the nineties. Has to figure out the responsive grid structure, the responsive typography, all the reusable design elements &mdash; code them &mdash; and start adding all the exceptions which finally will blow the source code and the project.

If no design thinking there is no design system and both the code, project, budget, people gets bloated.

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

The comps are blurred to protect the designer and the company. The black and red boxes are ad placeholders, and, there are gray vertical lines between columns the blurred screenshots can't show.

The comps are replicated using mockups. You can check it [live on Codepen](https://codepen.io/metamn/pen/OdjaGE?editors=0100#0) to better sense the task.

{% endmarkdown %}

{% set image = images[4] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% markdown %}

## Problems

Since the designer doesn't code

> The designer doesn't knows content cannot be get in a responsive way only _displayed_ in a responsive way.

In this current case this means on smaller screens the code has to fetch all 8 posts and hide some of them &mdash; such a performance waste on a device which has the poorest resources.

Since the designer doesn't code it spiced up the design with vertical lines separating the columns.

> The designer doesn't knows the CSS Grid specification

has no support for [grid gap styling](https://stackoverflow.com/questions/45884630/css-grid-is-it-possible-to-apply-color-to-grid-gaps) and a [nasty hack](https://stackoverflow.com/questions/13792755/show-border-grid-lines-only-between-elements/47914693#47914693) has to be used to accomplish this original design masterpiece.

If that was not enough the designer who doesn't code inserts an ad between the rows. The ad has different dimension and positioning which makes it an exception for the source code.

> The designer who doesn't code doesn't knows exceptions are painful and bloat the source code

Both during development time and later during maintenance.

## Numbers

If the designer were coding the following design decisions were taken:

1. Do not hide posts on smaller screens &mdash; wrap them into a navigation element. This way the resources used to get all posts would have been not wasted.

2. Forget the vertical column separator lines. They can't be implemented with current best practices and they need workaround. Make form follow function, not vice versa.

3. Put that ad elsewhere. Combined with 2.) it's dangerous. Moving out of the post list will spare around half of development time and budget.

Without the vertical borders between columns and the ad inserted between the rows the task to implement the design would have been easy: use the CSS grid. Time spent would be from minutes to around half an hour.

To add borders the CSS grid technique &mdash; used across the site up until now &mdash; cannot be used since the CSS Grid specification doesn't support the styling of the grid gap. A research has to be done to see if the specification added this feature recently, if there is a polyfill, or a nice workaround.

In this current case only a workaround exists which won't fully solve the problem since the bordering is not uniform &mdash; it applies only to the middle columns not to all columns.

Time spent with research and workarounds: around an hour.

The solution is to loop over grid elements and add border only where needed. For that I've already had [a component built on Flexbox](https://github.com/metamn/beat/blob/master/code/framework/structure/grid/grid.scss) so I've imported in this project. I've added small modifications like adjusting to the current project's layout and drawing the borders. Time spent: around half an hour.

Inserting the ad between the posts was more complicated. The back-end code displaying a post list had to be modified to insert the ad; on the front-end everything had to be re-grid and re-bordered. The front-end code is so ugly it is worth [taking a look at it](https://codepen.io/metamn/pen/OdjaGE)

Time spent: around an hour.

{% endmarkdown %}

<table>
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

This project has around a good few dozens of components like this _Latest posts_ depicted above. More than half of them is designed in the same _unimplementable_ way. Or, in a same way costly implementable way.

Remember: on this component we've spent at least 3 hours instead of half an hour. Yes,

> 6 times or 600% more than usual.

That's immense. And if you add them up, and consider the long term technical debt you would immediately know the answer for _"Should designers code?"_.

{% endmarkdown %}
