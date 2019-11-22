---
title: "Processes Through an Outcome Lens"
author: "Matt Schouten"
date: 2019-11-22
---

Processes are vital to modern organizations.  Imagine you were asked to help improve an organization, and found that it had zero defined processes.  You’d almost certainly start by implementing a process or two, then by wondering how in the world they got along without any processes.

Pre-modern organizations likely had their own processes as well.  As organizations began to grow, ad-hoc behavior became less effective.<!--more-->  So the Earl of Exampleshire might have decreed that “upon receipt of a request for a replacement sword, the Keeper of the Armoury shall search the Royal Storeroom; should no suitable sword be found, he shall inquire of the Lord Treasurer whether funding is available for materials prior to discussing the request with the Master Swordsmith”.  

Processes can make it easy to repeat desirable behavior.  Processes facilitate training.  And—most importantly to many managers—processes make sure problems don’t reoccur.

For the sake of this article, a process is a series of steps that are followed to achieve an outcome.  Those steps might be big or small, involve people or tools, be manual or automated, be efficient or terribly wasteful.  Sometimes processes are well-defined; sometimes they are not.

Let’s be painfully honest for just a second here.  Processes are almost always put in place because of a problem.  Processes are almost never put in place because it’s a beautiful day, the sun shining, birds singing, and an inspiration strikes.  “If only we start with A, then do B, then C, we’ll maintain the status quo!”  The problem might be a big one (“the wings keep falling off our airplanes mid-flight”), a small one (“it’d look much nicer if all the presidents in the cash drawer were facing the same way”), or an opportunity for improvement (“it feels like we could get 3.8% more throughput if only everyone used the same expense report template”).  

When we are faced with problems, we want to solve them--once and for all.  We size up the latest problem, get our team together, and take the steps needed so that we can, with reasonable confidence, tell our boss, our board, or our shareholders that the problem has been taken care of and will not reoccur.  Often, this means defining a new process.

## Problem Solving and Processes With Outcomes in Mind

Take a minute and think about the last couple of times you’ve solved a problem.  Bonus points if you solved it by defining a process.  First, good work, Mr. or Ms. Problem Solver!  And now, I’d like you to take a bigger-picture look at the process.  What was its impact on your overall business outcomes?  Was it a net gain?  A net loss?  A wash?  What was your trade-off?  Did you trade off quality for speed?  Money for time?  [Time now for time later](https://xkcd.com/1205/)?

Let’s take a minute and look at three examples of processes—Change Control Boards, Code Reviews, and Checklists—and how well they support business outcomes.  Then I’ll offer a recommendation that might give you a big improvement on your outcomes the next time you have a process-related problem to solve.

### Change Control Board Example

One of the classic examples of a process to prevent problems is the Change Control Board (CCB).  Different companies and different industries give them different names and put them in place for different reasons, but the general idea is the same:  to avoid anything getting into the product that “shouldn’t”, a board of experts is charged with making the final determination of what changes are allowed.  Sometimes this includes selecting changes to implement; sometimes it includes approving or denying implemented changes.

In some safety-critical industries, like avionics, CCBs are put in place as a standard precaution.  Long experience in those industries has led to the conclusion that any negatives of a CCB are outweighed by the safety benefits provided.  The old Facebook slogan, “move quickly and break things,” is not well-received in those industries and the CCB is part of preventing things from breaking.  In those cases, the CCB supports primarily supports business outcomes like safety or conformance, and any negative impacts on product development are considered and accepted.

On the other hand, many CCBs are put in place as a reaction to an issue.  Remember that time Ralph deployed test code to the production server by mistake?  Remember that time George made a change that led to a weekend outage?  In some companies, the answer is “no, who’s Ralph?  Wait, wasn’t he like, employee number six, and retired fifteen years ago?  Actually, let me take a raincheck on that story, I have to go present my pull request to the CCB.”  In those companies, the CCB is an entrenched solution to a forgotten problem.  The company continues absorbing the costs of the CCB process, without any way of evaluating whether it’s worth it.  The original problem is long-forgotten, and any negative impacts on product development are only considered during water-cooler griping.

### Code Reviews Example

Another classic example of a process to prevent problems:  the code review.  Code reviews get put in place for lots of reasons; we’ll take a quick example of a code review process put in place for training up a team.

“How do we get the rest of the team to be able to write code like Jeff?  They just don’t get it.  Their code is slower, buggier, harder to work with, makes Jeff complain...  I know!  If we have Jeff review all their code, he can give them feedback on it and teach them how he’d do it!  Plus, the rest of the team can look at Jeff’s code and ask questions!”

Code reviews are a common solution to the problem of a team needing to improve technical skills.  They are a fine way of ensuring the team’s work product is looked at and evaluated.  They can lead to helpful discussions about improving development practices.  They can expose developers to parts of the system they’ve never worked on before.

On the other hand, code reviews are a slow way of getting feedback.  It takes work to focus on big-picture concepts instead of syntax and formatting.  They take a fair amount of time, more so if there is a code review meeting.

If the desired outcome is accelerated team growth, code reviews might not support that outcome as well as alternative solutions.  However, it can be hard to resist the lure of a solution at hand that does contribute, even if only slightly, to the desired outcome.

### Checklists Example

I am personally a big fan of [checklists](https://www.amazon.com/Checklist-Manifesto-How-Things-Right/dp/0312430000).  I enjoy checking things off.  I appreciate the amount of improvement that can come from such a lightweight process.  

A previous employer needed, for good reasons, to enforce a checklist on all changes to code or documentation.  The checklists were enforced by internal tools and served as documentation that certain procedures had been correctly applied.  There was a little bit of text entry involved as well to capture compliance information.  We all understood the need; respected it; and still there was a lot of time spent trying to figure out the right boilerplate text to copy from one checklist and paste-and-modify for the current work.

At Digital Solutions, we put a far lighter-weight checklist process in place after a recent quality issue.  We released some data internally that contained some errors.  We had looked at the data, but not in enough depth to catch the errors.  To avoid future issues, we wrote a short checklist to capture the steps we were already taking, plus the additional ones we realized we should have taken.

The first checklist example is a lot like using code reviews as a team learning tool.  It’s definitely better than nothing, although other alternatives might exist.  The second checklist example strongly supports two outcomes:  correctness and speed.  It’s one of those great cases where writing down the steps saves us the work of having to decide how to verify the data in the future.

## A Recommendation

The natural reaction to an issue is to solve it, frequently by understanding what went wrong and putting a new, targeted process in place so that the issue goes away.

What if there’s a better way?

Instead of focusing just on the issue, micro-focusing on what went wrong, and deciding how best to fix the issue, press pause.  Sure, you’ll need to understand what went wrong.  There might even need to be some firefighting.  That happens.  And once you’ve gotten through the immediate firefighting, take the time to step back.

Look at the outcomes you want.  Speed, quality, quantity, safety, accuracy, design, cost, virality, friendliness—what are you being held accountable for?  

Now look at the current workflows involved in reaching those outcomes.  Not just the workflow that led to your current issue; look at the entire workflow.  What gets done, and by whom, to achieve those outcomes?  What is the normal (“happy path”) workflow?  What happens when something goes wrong (“exception paths”)?  What processes affect the current workflows?

Your current workflows have at least one gap.  Don’t be offended.  It happens.  And besides, you’re trying to solve a problem that almost by definition happened because there’s a gap in your current workflows.  Your workflows might also be a tangled mess of steps, sub-processes, and hand-offs.  Resist the urge to start making changes.  You should—and will—make changes.  You are just not ready yet.

Instead, take the time to identify the ideal workflow, start to end, for the work in which the issue occurred.  Figure out all the steps, all the inputs, all the outputs.  Test the workflow you’re building by asking what could go wrong at each step.  Ask what value each step brings.  Revise it; iterate as needed.  This workflow might need to be sub-optimized to fit other workflows, or other workflows might need to be sub-optimized to fit your workflow; in either case, you are looking to optimize the overall work that gets done.

Before you go and mandate this new workflow, go back to your outcomes.  Does this new workflow support your desired outcomes better than the current workflow?  Better than the current workflow with the new process you had in mind?  If so, great!  Introduce the new workflow.  And if not, that’s a chance to learn more about workflow design and the priority your business places on its desired outcomes.  

There is a good chance that your new workflow gives you the chance to streamline your processes.  Some processes that made a lot of sense once upon a time might have been overcome by later developments, and no longer quite fit.  

If you’re lucky, your new workflow might give you better results on more than one outcome.  Maybe a workflow that avoids that quality escape will also help improve time to delivery.  Maybe increasing throughput will also help profit margins.  Even if you’re not so lucky, you’ll at least be able to make any trade-offs more transparent.  (A good example of making trade-offs in the priority of desired outcomes is Disney.  Disney’s second-highest priority is courtesy, and they are [very clear what is more important and why](https://www.disneyinstitute.com/blog/disney-customer-service-101-why-courtesy-is-not-always-our-first-priority/)).

This is an iterative process of learning and design.  Each time through, you’ll gather new information and more closely match your workflow to your desired outcomes.  It’s almost impossible to find the ideal workflow on your very first try, no matter how experienced and brilliant you are.

(As a bonus recommendation, I also strongly recommend forcing yourself to consider alternatives before deciding.  It’s easy to struggle with a problem, finally stumble to a workable solution, declare it The Answer, full stop.  It’s better to come up with multiple possible solutions, study them, possibly improve them, and select the best.)

## Wrapping Up

You’ve put processes in place because you know they’re needed.  Without defined processes, efficiency drops, quality drops, conflicts occur, and life just isn’t as good.

But with some experience, you have come to realize that processes can somehow get in the way of the outcomes you’re accountable for.

Make your processes work for you.  Consider the workflow needed to achieve your outcomes, not just deal with the fire you’re currently fighting.  When a process supports all your outcomes, or you agree with the costs, implement it!  And when a process doesn’t support your outcomes, get rid of it.

Eliminating processes can be hard.  It takes time and effort to [re-imagine a workflow](https://www.hidigital.solutions/blog/our-path-to-mobbing/).  It takes courage to suggest getting rid of a process that someone (your boss? the CEO? the CEO’s great-grandfather who founded the company?) put into place for good reasons.  It takes time to re-train on new workflows.  

But it’s worth at least considering.  Beginning with the end in mind, you can make your processes support your outcomes, instead of simply hoping for good results from the processes you have in place.  You’re held accountable for outcomes, not processes.  Processes are tools, and you owe no loyalty to tools that are no longer helpful.
