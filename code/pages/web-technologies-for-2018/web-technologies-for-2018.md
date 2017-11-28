{% markdown %}
  There is an [accompanying quick story](http://metamn.io/beat/blame-the-algorithm) to this article discussing how interactive web shifted the focus from humans to machines. I hope you'll enjoy it.

  This twin article is highly technical about the same story: how we've got from monoliths to components, to the new paradigm of app / web / development / design which already dominate the edge of the industry.

  Interactivity, scalability and designer-developer communication are the main reasons. Let's see them.

  ## Interactivity

  Web 2.0 introduced commenting and sharing which led to the rise of REST and MVC frameworks. New ways to interact with the server and new ways to interact with users.

  Web sites became web apps; web servers became web services; web developers became front-end and back-end engineers; web designers became UX, UI specialists; programming languages were replaced by Javascript; frameworks with modules; content management systems with APIs; relational databases with document databases; imperative code with reactive code; you name it.

  At the end we've come down to the UNIX philosophy<sup id="footnote--1">[1](#footnotes--1)</sup> of fully separating concerns<sup id="footnote--2">[2](#footnotes--2)</sup>.

  Down to web components<sup id="footnote--3">[3](#footnotes--3)</sup>, a bottom-up, minimalist, standardized approach which reacts easily to changes either coming from the user interaction or from inside, from business requirements.    

  ## Scalability

  Web components are dealing only with HTML, Javascript, DOM and they do completely skip CSS. An indispensable technology begging for a reform like its peers. Yet a step-child of the W3C.

  Since inception nobody at the World Wide Web Consortium dealt with the problems of CSS at scale<sup id="footnote--4">[4](#footnotes--4)</sup>. In this wilderness came some fine folks form around the world and gave us BEM, Atomic Design, CSS in JS. Or Interoperable CSS<sup id="footnote--5">[5](#footnotes--5)</sup> from where CSS Modules were born.

  With that, finally, CSS follows the current Javascript workflow and component model: it is cohesive, decoupled and orthogonal &mdash; making the component based front-end stack fully interactive and scalable.

  ## Communication

  The funny *should designers code?* pseudo-debate &mdash; with 17,900,000 Google search results today &mdash; led surprisingly to a very pleasant outcome: Styleguides a.k.a. Design systems.

  I've been using them since their inception<sup id="footnote--6">[6](#footnotes--6)</sup> and I can see the benefit: perfect designer &larr;&rarr; developer communication.

  Design systems<sup id="footnote--7">[7](#footnotes--7)</sup> are a set of visual, interactive components created by designers to be translated one-to-one to web components by developers. They are the first real bridge between design and development. They've replaced Photoshop comps as web apps replaced web sites.

  Design systems break monolithic user interfaces delivered by designers as large image blocks into small reusable components which developers can easily adapt to mobile and web platforms. As the problem is divided into small parts the reasoning and communication about is more straightforward.

  What works so well in front-end development now is part also of the design. Interactive user interfaces decomposed not just web technologies but design thinking and frameworks.

  Today the dice rolls around components and modules. Everything is built bottom up with interactivity, accessibility, interoperability and scalability in mind.

  A typical workflow follows:

{% endmarkdown %}

{% set list = list %}
{% include "../../framework/design/decorations/list-expandable/list-expandable.html.swig" %}

<div class="video">
  <div class="video-wrapper">
    <iframe src='https://www.youtube.com/embed/KRlje1h6caU' frameborder='0' allowfullscreen></iframe>
  </div>
</div>

<div class="video">
  <div class="video-wrapper">
    <iframe src='https://www.youtube.com/embed/XEf1RnbZ4ZQ' frameborder='0' allowfullscreen></iframe>
  </div>
</div>

<div class="video">
  <div class="video-wrapper">
    <iframe src='https://www.youtube.com/embed/VIMhg4zYeE4' frameborder='0' allowfullscreen></iframe>
  </div>
</div>


{% set image = images[0] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% markdown %}
  We can say a new era has begun. Development is more abstracted and better integrated with design. Everything is decomposed into small parts to make change immediate. The difference between elegant native and clumsy web interactions are disappearing.

  We can put the web problem behind and focus on new challenges brought to us by the new realities: virtual, augmented and machine.
{% endmarkdown %}
