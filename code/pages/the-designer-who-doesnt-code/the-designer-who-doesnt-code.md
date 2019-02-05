{% markdown %}

The _"Should designers code"_ debate is nonsense yet very popular. The [search query](https://www.google.com/search?q=%22Should+designers+code%22) just returned 27,800 results.

I've been long waiting for a case study which speaks for itself. Let's see it.

## The comps

Yes, in 2019 we still receive comps from designers. Either coming from Photoshop or Sketch, wrapped or not into Zeplin &mdash; for the front-end developer they are in the same way unusable.

One has to slice and measure and convert pixels to elastic measures like in the nineties. Has to figure out the responsive grid structure, the responsive typography, all the reusable design elements &mdash; code them &mdash; and start adding all the exceptions which finally will blow the source code and the project.

If no design thinking then there is no design system then the code is bloated.

## The task

It sounds simple: list the latest posts on the homepage in a responsive way. On large screens there should be 8 posts displayed 4 in a row, on medium screens 6 posts / 3 in a row, on tablet 4 posts / 2 in a row, on mobile 2 posts each on its own row.

Since the designer doesn't code **_it doesn't knows content cannot be get in a responsive way only displayed in a responsive way_**. In this current case this means on smaller screens the code has to fetch all 8 posts and hide some of them &mdash; such a performance waste on a device which has the poorest resources.

Since the designer doesn't code it spiced up the design with vertical lines separating the columns. **_It doesn't knows the CSS Grid specification_** doesn't support [grid gap styling](https://stackoverflow.com/questions/45884630/css-grid-is-it-possible-to-apply-color-to-grid-gaps) and a [nasty hack](https://stackoverflow.com/questions/13792755/show-border-grid-lines-only-between-elements/47914693#47914693) has to be used to accomplish this original design masterpiece.

If that was not enough the designer who doesn't code inserts an ad between the rows. The ad has different dimension and positioning which makes it an exception for the source code. It seems the designer who doesn't code **_it doesn't knows exceptions inject bloat into source code forever_** &mdash; both during development time and later when extending code.

## The numbers

If the designer were coding the following design decisions were taken:

1. Do not hide posts on smaller screens &mdash; wrap them into a navigation element. This way the resources used to get all posts would have been not wasted.

2. Forget the vertical column separator lines. They can't be implemented with current best practices and they need workaround. Make form follow function, not vice versa.

3. Put that ad elsewhere. Combined with 2.) it's dangerous. Moving out of the post list will spare 82% of development time and budget.

Without the vertical borders between columns and the ad inserted between the rows the task to implement the design would have been easy: use the CSS grid. Time spent would be from minutes to around half an hour.

To add borders the CSS grid technique &mdash; used across the site up until now &mdash; cannot be used since the CSS Grid specification doesn't support the styling of the grid gap. A research has to be done to see if the specification added this feature recently, if there is a polyfill, or a nice workaround.

In this current case only a workaround exists which won't fully solve the problem since the bordering is tricky &mdash; it applies only to the middle columns not all columns.

Time spent with research and workarounds: around an hour.

The solution is to loop over grid elements and add border only where needed. For that I've already had [a component built on Flexbox](https://github.com/metamn/beat/blob/master/code/framework/structure/grid/grid.scss) so I've imported in this project. I've added small modifications like adjusting to the current project's layout and drawing the borders. Time spent: around half an hour.

Inserting the ad between the posts was more complicated. The back-end code displaying a post list had to be modified to insert the ad; on the front-end everything had to be re-grid and re-bordered. The front-end code is so ugly it is worth taking a look at it: [https://gist.github.com/metamn/3f51efec8530e5f21d99212582d2d120](https://gist.github.com/metamn/3f51efec8530e5f21d99212582d2d120)

Time spent: around 1.5 hours.

## The pain

This project has around a good few dozens of components like this _Latest posts_ depicted above. More than half of them is designed in the same _unimplementable_ way. Or, in a same way costly implementable way.

Remember: on this component we've spent around 3 hours instead of half an hour. Yes, **_6 times or 600% more than usual_**.

That's immense. And if you add them up, and consider the long term technical debt you would immediately know the answer for _Should designers code?_.

{% endmarkdown %}
