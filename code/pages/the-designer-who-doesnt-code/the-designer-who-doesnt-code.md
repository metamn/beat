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

3. Put that ad elsewhere. It will spare 82% of development time and budget.

{% endmarkdown %}
