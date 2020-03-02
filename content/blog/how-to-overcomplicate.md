---
title: "How to Over-Complicate Your First Conference Talk"
author: "Paul Roub"
author-url: https://roub.net/
date: 2020-03-02
summary: In January 2020, I was lucky enough to be selected as a speaker at CodeMash, an annual software development conference in Sandusky, OH.  This was my first time speaking at a conference, so I made things up as I went along. Some things were easier than I expected, some were harder, and some were simply unexpected.
---

In January 2020, I was lucky enough to be selected as a speaker at [CodeMash](https://codemash.org/), an annual software development conference in Sandusky, OH. It is a _fantastic_ event which I would highly recommend to anyone.

This was my first time speaking at a conference, so I made things up as I went along. Some things were easier than I expected, some were harder, and some were simply unexpected.

## The First Easy Part: Deciding to Speak

Why did I want to do this now? Honestly, I’d always had it in the back of my mind as something that might be fun — and, just maybe, something I’d be good at. I’m passionate about code, tools, strategies – systems, really. How we do what we do, why we do it, how we can do better. I’m comfortable enough in front of an audience, and (to my co-workers’ occasional dismay) perfectly capable of going on (and on) about a topic. And I love teaching; wrapping something interesting and useful up in a story, helping someone get it the way that _I_ get it, hopefully passing along my excitement.

There were two catalysts for the talk I gave.

1.  During our [hiring round](/blog/iterating-on-our-hiring-process/) last year, I had some great conversations with people who were less-familiar with [Test-Driven Development (TDD)](https://www.agilealliance.org/glossary/tdd/). I found that I loved walking through the core concepts, and that I had an easy time explaining why I  loved to work this way.
2.  While listening to two developers I admire on [one of my favorite podcasts](https://www.relay.fm/radar/172), talking about all the reasons they were certain TDD _just wasn’t for them_, I had quite a [“someone is wrong on the internet”](https://imgs.xkcd.com/comics/duty_calls.png) moment.

So I thought a “TDD for Skeptics”-type talk might be useful. And very likely fun.

## The Second Easy Part: Submitting

I’d been aware of CodeMash for a while, but hadn’t yet attended. It seemed like this talk might fit CodeMash’s relaxed-yet-incredibly-professional vibe.

I submitted my abstract:

> For the skeptical: Both new and more-seasoned devs -- especially solo practitioners -- can have a lot of misconceptions about TDD. Mostly of the "it's extra work, it's extra code, I can't ship tests, why would I test something simple and obvious" variety. But magic happens when the light bulb switches to "on".
>
> Walk through the design of a simple-enough class, showing along the way how initial assumptions are often wrong; how to avoid making those assumptions too early; throw away less code; and feel comfortable and safe when you *do* throw away code.


I was a bit surprised that those two paragraphs were all that was required. I’ve since learned that this is typical of most conference submissions, which makes sense in retrospect: the organizers have to wade through a _lot_ of submissions, and they need to see an idea that comes across as interesting enough to attract an audience. The submission abstract becomes the conference session abstract.

I waited a couple of months (as expected), trying not to worry about the outcome too much. The email came...

They said “yes”!

## The Appropriately-Difficult Part: Writing the Talk

I had a few rules in mind before I started, gained from watching many other technical presentations (live and in YouTube form):

*   A complete program, even a toy one, is going to make more sense to an audience than snippets of some larger, unseen “real” application
*   Don’t. Read. The. Slides.
*   I wanted to show the progress of the test/code/refactor cycle in something like real time, but didn’t want to actually code live in the room. Typos are not interesting.
*   I wanted to address _real_ concerns/objections to TDD, not straw men. This talk would be aimed at intelligent people who didn’t necessarily see things the way I did. My job was to demonstrate my point of view.

I had a list of objections I’d heard and felt I could counter. I needed to be sure I hit all of those points.

I wanted the talk to have a natural flow -- natural to _me_, that is, so I could speak comfortably. On a long drive, I “wrote” a first draft by dictating to my phone, explaining to an imaginary friend why they should reconsider their objections to TDD. I used almost none of this in the actual materials, but it helped me get the “shape” or flow of the talk straight. Another benefit of an on-the-fly draft like that is that I had no attachment to it; I knew it would mostly be thrown away, so I could just talk without worrying if it was good enough.

I also did a “draft” of the demo project itself. My plan was to capture the final project step-by-step in Git commits; but I didn’t want it to be too aimless. So I worked through the same problem in another language (Python) ahead of time, to convince myself it was the right size for the talk, while keeping the final demo project “real” -- mistakes and all.

Then, I really did sit down and solve the problem in JavaScript, refactoring and changing course along the way. I made sure to use meaningful, narrative comments as I went.

I then used those comments, and the code changes they accompanied, to build the flow of the demo slides. I literally went through the changes, adding slides when something interesting or novel had been done. “Here’s where I refactored for the first time”, “here’s where I knock off a bunch of corner cases in a row”, and so on. I left notes that just mentioned the key points, the reason, for each slide.

And now I had a first draft.

## Self-Imposed Roadblock #1: Writing My Own Presentation Software

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Writing your own slide-presentation app is a bad idea, even if you really want that one extra feature. Anyway, here’s the thing I cobbled together to deliver my <a href="https://twitter.com/hashtag/CodeMash?src=hash&amp;ref_src=twsrc%5Etfw">#CodeMash</a> presentation. Do as I say, not as I do (or at least do it better). <a href="https://t.co/mXAptK7uqL">https://t.co/mXAptK7uqL</a></p>&mdash; Paul Roub (@paulroub) <a href="https://twitter.com/paulroub/status/1225480448496807938?ref_src=twsrc%5Etfw">February 6, 2020</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>


To be clear, this wasn’t _just_ for fun. As part of my presentation I wanted to show test failures — and subsequent successes — live, as I went through the slides. So of course, I wrote a whole web app that served up the presentation; showed my notes in another window; and performed Git checkouts behind-the-scenes.

As detailed above, I recorded each step of the process in Git. This allowed me to _replay_ those steps in as fine detail as I liked. I expected that I would be flipping from the slides to a terminal window running tests _constantly_.

In actuality, I think I ran the live tests three times during the actual presentation. Static content would probably have sufficed.

In hindsight, there was probably an element of procrasti-working at play. Writing a talk: unfamiliar and uncertain. Writing code: comfortable and immediately rewarding. And still, technically, making progress towards the task at hand! One could argue that time might have been spent more effectively working on the slides themselves.

It was still fun to write, though. And I’ll use it again the next time I give this talk.

## Self-Imposed Roadblock #2: Failing to Ask for Help

You know that terrible interview cliché, “What are your greatest weaknesses”? In my case, the one that leaps to mind is my tendency to want to handle things myself and not bother anyone. I don’t think this is unusual in our profession.

CodeMash has a wonderful speaker-mentorship program, wherein experienced speakers offer advice/feedback/etc. to first-time speakers. I’m no fool, I signed right up for that! And then… never used it. Bob and Russell, thank you for your kind offer to help. I really wish I’d taken advantage of it.

I also work with a great team who were more than happy to look things over ahead of time. Again, I didn’t give them the chance. They’ve given great feedback after seeing the video of my talk, and that will be great in March when I give an updated version of the talk at [Orlando Code Camp](https://orlandocodecamp.com/); I regret not having those improvements baked in the first time.

## Complications I’ll Try to Avoid Repeating

### Re-(re-)writing

I rewrote too many slides, too many times. That time would certainly have been better spent practicing the actual delivery a few more times, or attending another session, or maybe playing in the water park. (CodeMash is at the Kalahari Resort, which has a water park. Like I said, I recommend the daylights out of this conference)

I also tried to write in the hotel room for the first day, which I’ve found just doesn’t work well for me. There was a perfectly nice speaker’s lounge, and once I migrated there, everything was much more focused and easy. Your mileage may vary.

My rewrite-obsession also led me to miss a speaker get-together early in the week. I really regret this; there’s a lot to learn from talking to fellow presenters (seasoned and new).

### Cutting Travel Time Too Close

I’d booked a return flight for Friday night, the last day of the conference. The flight was at 8pm, the conference ended at 5, it seemed like just enough time. I’d miss the closing ceremonies, but that seemed like a small price to get home sooner.

Then, a month before the conference, the flight schedule was changed. 7:15pm. No later options that didn’t involve overnight stays in some far-flung airport. “Well,” I thought, “as long as my talk isn’t scheduled for the last slot on Friday, I can leave early and make the flight.”

A week later, the conference schedule was published. Guess what?

I was able to add a night and re-book for the following morning’s flight, but all-in-all really wish I’d just done it that way in the first place. Cutting travel close, in the winter, in northeast Ohio, is a crap shoot anyway. I should know - I learned to drive in the northeast Ohio winter.

## Complications Which I Do Not Regret At All

### MacGyver-ing a Test Setup

<picture>
  <source type="image/webp" srcset="/images/testbed-1x.webp, /images/testbed.webp 2x">
  <source type="image/jpeg" srcset="/images/testbed-1x.jpg, /images/testbed.jpg 2x">
  <img class=scrapbook src=/images/testbed-1x.jpg alt="Precarious presentation test setup" />
</picture>

To get a feel for the slides on a big-ish screen, separate from the laptop, I HDMI-ed my way into the hotel TV and rigged a podium.

As one does.

### Venturing Out and Making Music

I grew up in the Cleveland area, about an hour from the conference. I couldn’t resist finding a way to meet up with some old friends; and whenever possible, I’m inclined to find a way to be on stage with a guitar.

So I got in touch with the gentleman who runs a songwriters’ night at a Cleveland lounge, and booked myself a slot well in advance. This _did_ mean I missed the CodeMash Lightning Talks, which was regrettable. But in the midst of four solid days of sessions and rewrites, getting out was worth it (even if it meant getting to sleep well after 1am).

### Temporary Guitar Ownership

Oh, about that guitar. While I borrowed the host’s for the actual performance, I wanted to have one in the hotel room. 5 days is a long stretch to be without, after a lifetime of habitual noodling. Traveling with a guitar is expensive and risky, so I rolled the dice and visited a pawn shop halfway between the airport and the hotel.

<picture>
  <source type="image/webp" srcset="/images/epi-1x.webp, /images/epi.webp 2x">
  <source type="image/jpeg" srcset="/images/epi-1x.jpg, /images/epi.jpg 2x">
  <img class=scrapbook src=/images/epi-1x.jpg alt="Epi Classical Guitar" />
</picture>

The little old Epi stayed in tune, played easily, and sounded fine. Basically an $8-a-day rental.

At breakfast on the last day, I mentioned the guitar  (and my desire to give it away) to a couple in attendance, who mentioned that their son was learning to play. We decided to meet up after the closing ceremonies.

When the evening came, it turned out that one of these nice folks was having dinner with friends in the hotel restaurant, and I was welcome to join. The entire crew turned out to be speakers and/or conference organizers; I had a great dinner, and made up for the missed connections earlier in the week.

## The Best Part

The talk itself was a blur and a blast.

I hoped there would be, I don’t know, 20 attendees? There were over 100. Almost all of them stayed, and I got heartwarming feedback immediately after, and later on Twitter and via the conference ratings.

I hoped I wouldn’t be stressed and miserable. Turns out? I loved it.

Going in, I was worried that I’d run short; run long; read the slides; stumble over topics; be bored; or be nervous. I didn’t know what to expect from _myself_ in this situation, no matter what I’d watched anyone else do.

These concerns ended up fading away due, I think, to a number of factors:

*   I was genuinely excited to talk about the material. This is a _huge_ advantage you have when you’re giving a talk of your own choosing.
*   I purposely kept the slides, and even my notes, terse. “Reading the slides” just wouldn’t work even if I’d been so inclined.
*   I’m naturally self-deprecating and dad-joke-y, and included that in the presentation. “Let’s all laugh _with_ me” has anti-nervous effects.
*   CodeMash had a helper/prompter in the front row, who’d let me know when I was close to running out of time.
*   I hadn’t practiced as much as I’d like, but I _had_ practiced. And all that rewriting had me very familiar with the flow of the slides.

I’m already keeping a list of possible topics to submit _next_ year, and I’m watching for other Calls For Proposals along the way.

## The Takeaways

I went about this somewhat instinctively. Some of those instincts served me well. Others, hopefully, will be tempered next time. If I had to do this again, I would apply:

*   **More** people. Feedback from friends, advice from mentors, discussion with fellow presenters -- the talk _and_ the week would have benefited.
*   **More** rehearsal. Once I really, actually, no kidding, presented the talk out loud to an empty room, two things happened: I made a number of helpful changes to the talk, and I realized I didn’t feel nearly as silly as I’d feared.
*   **More** downtime during the conference. Which would have been possible with…
*   **Less** last-minute re-writing, which would have been helped by…
*   **Earlier** rehearsal. Don’t wait until conference week, kids.
*   **The Same** level of excitement. Bored speakers == bored audiences. Talk about something you have a hard time _not_ talking about.
*   **The Same** first-draft process. A throwaway draft is the enemy of writer’s block (at least in my case).

Think you have a talk to give? Write it up. Submit it. Rejection is survivable, and you’ll have learned something for the next time.  And if it went this well despite all of my twists and turns, imagine the relative ease and satisfaction a sensible approach might bring.

Oh, and if you want to watch the actual talk, [Pluralsight](https://pluralsight.com/) and CodeMash have made all this year’s talks available for free, [here](https://www.pluralsight.com/authors/codemash-conference), including this one:

<div class="pluralsight-block">
  <a class=img href="https://www.pluralsight.com/courses/codemash-session-87"><picture>
    <source type="image/webp" srcset="/images/cmsesh-1x.webp, /images/cmsesh.webp 2x">
    <source type="image/jpeg" srcset="/images/cmsesh-1x.jpg, /images/cmsesh.jpg 2x">
    <img src="/images/cmsesh-1x.jpg" alt="CodeMash: Paul Roub : Test-driven Development: Save Your Time, Save Your Sanity, Write Great Code Fast">
  </picture></a>
  <div class=desc>
    <h3><a href="https://www.pluralsight.com/courses/codemash-session-87">Test-driven Development: Save Your Time, Save Your Sanity, Write Great Code Fast</a></h3>
    <p>Paul Roub at CodeMash 2020</p>
  </div>
</div>
