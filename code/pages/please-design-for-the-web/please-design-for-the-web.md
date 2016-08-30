{% markdown %}

Web design has changed. New techniques like flexbox <sup id="footnote--1">[1](#footnotes--1)</sup> are a shift like moving away from tables were fifteen years ago. Not to mention browser and device capabilities changing so fast even front-end developers can hardly catch up.

Designers you need to adapt or die. With old approach you'll bloat all: budget, experience and joy.

## Award winning?

Recently I come across a new project looking promising. The product was great, the company behind was expert in the cutting edge web, there were lots of very difficult animations required, the front-end framework was free to choose.

Yummy. All set up for an award winning website. I gave a relaxed estimation for the project. I knew it will worth it.

## A single PSD

Bang! What I've received from the designer was a single PSD file at 1440px width.

- No assets. Images were @1x landscape only. SVG icons, logo, artwork were missing. I had to ask for them separately.
- Messy typography. Sometimes styles were differing by 1px or a few. There was no modular scale <sup id="footnote--2">[2](#footnotes--2)</sup> and it was using 7-8 font variants initially later reduced to the necessary 5.
- No horizontal rhythm. Plenty of vertical guidelines in the PSD (following some logic) but no single horizontal guide at all.
- No animations. I've received them almost hand-drawn with hints on Slack
- Terrible design decisions showing the designer had no coding experience.
   - Three or more layers stacked up
   - Elements moved partially off-screen
   - Multiple elements stacked in a row without meaning on small screens.

The aesthetics was good. The message was clear. Sections were well thinked and structured. I've started the project excited.

## Proof of concept

Using my own, homegrown and battle-tested framework <sup id="footnote--3">[3](#footnotes--3)</sup> I've started to build up a rough version of the site. With focus on responsiveness, usability and delivering the message <sup id="footnote--4">[4](#footnotes--4)</sup>.

Every component and section I've created was immediately responsive. By using banal breakpoints like `mobile`, `tablet`, `laptop`, `desktop`, `portrait` and `landscape`.

Every section was usable. If they were animations they fit on a single screen estate like a slide in a presentation. To make users enjoy the interaction without scrolling up and down to see the changes.

The story folded out effortlessly. Messages were easily digestible on all screens / scrolls and well separated visually without consuming too much attention from the user.  

In two weeks we had a real, enjoyable view of the website on all devices. Even if we started with a single 1440px wide PSD.

## Ooooh instead of Wooow

Epic failure at the first design review.

My partners (the designer and the project manager) did not understood the benefits I've incorporated in the prototype. They've only saw the PSD was not implemented "as is".

Yes, it was eyeballed and made to work on all devices. Yes, some graphics with animations spanning 1.5-2 screens in the PSD were reduced to fit a single browser screen to be usable. Yes, a vertical rhythm was added on my own since it was missing from the PSD.

We've reached an agreement. I'll restart the project by replicating exactly the PSD on an 1440px wide viewport then move to all other viewports and screen resolutions, devices. And I wont charge these changes.

## Finally

Measuring started. Guidelines, rulers, converting pixels to elastic measures in an Excel sheet. I've even received a new PSD comp for the mobile menu. The 1440px version come out pixel perfect. Wooow.

But it was enjoyable only horizontally and not vertically. The whole message and experience got lost in the translation. Sections which were once in the prototype taking a single screen now were split in two screens making the user to scroll and connect screens with their attention to get the message.

`mobile-large`, `mobile-xl`, `ipad-pro`, `fullhd`, `tablet-landscape`, `tablet-portrait` breakpoints were introduced still making the site not 100% responsive but working in major screen resolutions and devices.

Responsiveness was driven by the idea to fit that 1440px wide design on all screens instead of re-thinking each screen. What users want to see, in which order of importance, and how to connect the dots to deliver the message and still delight. Thus we've forced the layout, we've introduced Internet Explorer, Safari and Mozilla bugs and making a banal repositioning of elements to take an hour.

All I had in my mind during this process was the words of Dudley Store:

"abandon previous assumptions and practices in web page layout [ ... and design]"

## Award winning ??!!!

No, not yet.

This website won't even get its place in my portfolio. Nor in my memories as a pleasant entry. It took longer than planned with less revenue for me than planned and more costly for my employer than planned.

A missed opportunity for the client, a modern idea in put old clothes.

## Web designers adapt or die

It's harsh I know but I had to.

I want to get back the joy translating your visions for all the web; I want to move forward our techniques and skills with every project; I want device-perfect first then pixel-perfect next; I want to fix a bug or modify something in 10 minutes instead of hours. I want to keep the budget.

I want to provide a living styleguide for you and the client. I want to focus on accessibility and usability, on user experience. I want animations. I want micro interactions. I want pride, glory and awards.

And make everyone happy.  

{% endmarkdown %}
