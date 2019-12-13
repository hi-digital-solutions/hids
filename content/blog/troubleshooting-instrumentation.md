---
title: "Troubleshooting & Instrumentation"
author: "Rob Miller"
date: 2019-12-13
---

Anyone who works in software engineering has to deal with troubleshooting failures.  Personally I like to approach failures as a challenge, a kind of treasure hunt that when complete leads you to the cause of the problem.  This is great when all of the clues are there, but what happens when some are missing?  You might get to a point where you can see multiple different paths to the end.  You might also be led in the totally wrong direction and spend an unnecessary amount of time finding your way back to the path.  This is where instrumentation comes into play, it is the clues along the path to the cause of your failure.  I’d like to talk about some ways that clues can be left behind to help you find your way to the cause of the failure as well as what good content within these clues look like and then some helpful things to keep in mind while you are traversing the path that the clues lead you down.


## Helpful Clues

There are different types of instrumentation you can use to leave the proper clues that will help you determine the cause of a failure.  As you are constructing whatever it is you are building it is key to always keep in mind the question “What would I want to know if this thing failed?”.


### Logging

Logs are always a good start.  It can be easy to create a process that has no logging at all because logs don’t do anything to help you solve whatever problem you are trying to solve.  But when your process fails (and it will fail) you will certainly wish you had some logs.  In my opinion logs can be as verbose as you want, put whatever information you think will be helpful when things go awry  — while taking care not to store any Personally Identifiable Information (PII).

Obviously when a failure occurs you want to log whatever message is associated with the failure.  Just the failure message isn’t always enough.  What does the message “Object reference not set to an instance of Object” tell you?  Not much without a little more detail; there are other pieces of information you will find helpful.


### Where did the failure occur?

A vital piece of information that should always be part of failure logging is the stack trace.   Sometimes you don’t get all of the information you need in your logs the first time around, but if you have a stack trace you can at the very least pinpoint where in the code a failure occurred.   Be careful that the stack trace that is logged is pointing to the appropriate place, I’ve seen a number of cases where a piece of code will catch an exception only to create a new exception to re-throw thus resetting the stack trace to the point where the new exception was created which typically is not helpful.


### Input Data

Another piece of information that is always helpful: details on the input that was being processed at the time of failure.  Whether it is an API that is handling http requests or a batch type process that is responding to events on a service bus, knowing what input triggered your process to run can be the key piece in finding out what caused a failure.


### Metrics

A nice companion to logging that can provide helpful clues is a good set of metrics about your process.  There are some obvious metrics like load metrics that are usually helpful, if you know that your process was under a heavy load at the time of a failure then you can use that knowledge in troubleshooting a failure.  


### Keep Improving

As I mentioned instrumentation isn’t always right the first time.  In my experience a lot of instrumentation comes from “I wonder” questions that are asked while trying to figure out what happened.  Don’t get caught just asking the question, if you catch yourself asking an “I wonder” question put the instrumentation in that will answer it so that next time you don’t have to wonder.


### Alerts

The last step in instrumentation is to actually let someone know when one of these awful failures happen.  Monitoring of failures can be done in a number of different ways, email probably being the most popular.  Just make sure whatever you choose is reliable and the individuals on the receiving end are prepared to receive and act on the alerts.  Good alerts don’t have to give all of the information about the failure, they really only need to give enough information to summarize the situation and direct you to the instrumentation that holds the details of the failure.

***Alerts should only be sent when something actually failed***.  This seems obvious, but I have seen multiple instances where alerts are sent that everyone just knows to ignore because it’s just a warning or a non-fatal situation.  If they are to be ignored why send them out?  This will inevitably cause apathy towards the alerts, people might just stop paying attention all together.   Only send out failure notifications on failures that need action taken on them.


## The Hunt

Now that you have all of your instrumentation in place you can sit back and wait for the failures to happen, and believe me they will happen, usually at the most inopportune time.  


### Learn how to troubleshoot

Troubleshooting is one of those things that I have found that some people just have a knack for, but that certainly doesn’t mean it can’t be learned.  Those that aren’t as proficient in troubleshooting should be paired up with those that are.  They need to ask questions, even if the system is some time sensitive thing that needs to get back up and running ASAP it doesn’t hurt to ask the question, at the very least you can make a note of your question and come back to it after the smoke clears.

Even when all the right clues exist it may not be clear to everyone how to walk the path to find the cause of a failure.  Something very important to keep in mind if you are struggling to follow the path is to ask how the others knew to look at certain things, and by no means allow them to answer “I just know”.  Nobody “just knows”, there is something in the clues left behind by a failure that has triggered a thought process; whether it’s something concrete that you always look at or a shot in the dark, it is valuable information that needs to be shared with others involved.


### Be wary of misinformation

One frustrating thing that happens often while troubleshooting is the dreaded [red herring](https://www.mentalfloss.com/article/562812/where-did-phrase-red-herring-originate).  I think many times this is caused by not having enough or the right instrumentation, gaps in clues about the failure can lead you down the wrong path.  Again, I can’t stress enough that if you find yourself saying “I wonder” or “I wish I knew” then go add that knowledge into the process so you have it next time.  Sometimes you can get off on the wrong path by paying attention to something that is really visible but fairly obvious that it isn’t part of the problem.  For example, if you notice that load on your process is high during the time of the failure, but also that load is high everyday at that time then there is a good chance the cause lies somewhere else, something else is special about this day.  That doesn’t mean that a high load coupled with this other thing isn’t the problem, but it’s that other thing that you should probably start with.


### Reflect on what happened

Once everything settles down and your processes are back to running as normal, it’s time to reflect back on what happened.  I’ll be honest, post-mortems are not something that I have participated in often, but whenever I hear about them (or do participate in them) I feel like they might be one of the most important parts of troubleshooting.  A recent example of a post-mortem that we had was when the process in question didn’t actually fail.  Our end users reported errors when in fact the process was functioning as expected based on decisions made early in the construction of the process, they just didn’t recall those decisions.  In fact we didn’t recall the details of the decision either, we went through the process of digging into the code and logs only to have someone have an “aha” moment and recall the decision that was made.  As a post-mortem step we gathered all necessary parties, revisisted the decision that drove how the process works and documented it so that next time we won’t waste time researching. 

At the very least, as a post-mortem step, have some dialogue and document what happened and the steps that were taken to find and solve the problem.  This should never be about blame, but always about learning how to improve going forward.

Troubleshooting can be the most frustrating thing about software, especially if you don’t have the right clues to help you find what you are looking for.  It is imperative to leave the right clues behind and add missing clues as you find them, you and your teams will certainly thank you for it later.  There can be a great sense of excitement (and maybe a little heroism) when you encounter a failure and have all of the right clues in hand that allow you to find the solution without delay instead of the feeling that you have no idea what is going on.  Encourage your teams to instrument processes properly, it will make the troubleshooting journey a much less daunting affair.
