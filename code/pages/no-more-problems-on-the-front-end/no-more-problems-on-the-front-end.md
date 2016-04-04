{% markdown %}
The last decade  —  at least  —  was full with hard problems for the front-end web developers. Cross-browser compatibility, naming and structuring code, and poor performance. Now all these are solved.

Thanks to Javascript and some fine folks from Russia.

## Cross-browser compatibility

We have spent at least ten years trying to make websites run seamlessly in all browsers.
The solution recently found is very elegant: it is effortless and it is transparent for the developer making the problem like never existed.

It is called [PostCSS / Autoprefixer](http://postcss.org/) and incorporates lots of collective wisdom like [Can I Use](http://caniuse.com/).
It's part of Grunt / Gulp / Webpack which are front-end dev’s best friend. They take our handwritten HTML / CSS / JS code and make it better.

They enhance our workflow. As large ecosystems they provide solutions for every aspect of front-end development. They *let us focus on code logic* and they do the rest of the hard work. Like making websites faster and cross-browser compatible.

## Naming and structuring code

There are large websites developed by large, ever changing personnel. Their biggest problem is to name and structure HTML / CSS / JS elements in a way everybody understands the logic.

There are small websites developed by single developers. And enhanced later by another developer. The biggest problem of one developer is to understand the structuring and naming conventions used by the other.

Since the beginning of web development this problem persisted until it was solved recently by the fine people from Yandex. Yes, the Google of Russia.

Russians were always good in structuring things. Americans too, but in this case they've come up with a dead-end strategy called [Atomic Web Design](http://atomicdesign.bradfrost.com/table-of-contents/). I’ve spent two years using it. It was very romantic. And when I was not able anymore to follow my own molecules ...

 ... Ladies and gentleman I met [BEM](https://en.bem.info/). The solution for organizing and naming code in an universal way everybody understands.
 BEM makes sure a code written by anybody can be picked up and extended with no efforts. With a single hour learning curve.
 BEM is the English of front-end code and structure.

 ## Poor performance

 I’m in a constant hunt for perfect mobile web experiences since the beginning of responsive web design in 2010. Now in 2015 I can say only 1 out of 10 websites from the highly respectable [Siteinspire](http://www.siteinspire.com/) offer a fully enjoyable mobile experience.

Forget that. There is a bigger problem. The lack of native-like performance. Why the New York Times app  —  presenting the same content  —  is light-years ahead in usability and joy of it’s web counterpart on mobile devices?

The answer is a multi-million dollar question ... because it was found by Facebook who employs the most expensive talent as we know. They have realised the engine of the web browsers  —  the DOM  —  is broken. It’s simply not capable to offer the same performance apps can easily afford.

They have fixed that engine and made us available through React, a yet another Javascript tool to make our front-end devs life easier.

And the ladies and gentleman from [Flipboard](http://engineering.flipboard.com/2015/02/mobile-web/) taught us how finally we can create websites indistinguishable from apps in means of smoothness, speed and elegance.

## What’s next?

Nothing interesting. Since these above problems are all solved the web stack  —  HTML, CSS, Javascript  —  will take over incumbent proprietary technologies and will constitute the coding platform of choice for all.

{% endmarkdown %}
