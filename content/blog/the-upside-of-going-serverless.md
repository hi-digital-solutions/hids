---
title: "The Upside of Going Serverless"
author: "Paul Roub"
date: 2019-10-15
---

If you’re a manager, or otherwise accountable for software development and support budgets, you may have heard developers talking about wanting to go "serverless" on some new work. There's a lot of chat about AWS and Azure and functions and lambdas and it just sounds like the latest shiny thing, bored programmers wanting to play with new toys. Your first instinct might be that they should just get on with their work, using the tried and true and trusted servers you already have in place, with their well-understood costs and support needs.

I'm here to suggest that serverless is different, and that you listen to the developers; they’re trying to save time and money.

Serverless is just as much a financial change as it is technical;  the innovation is that you only pay for what you use, and the bits that aren’t directly relevant to solving your business problem are outsourced to your cloud provider.  This results in significant savings — in both upkeep and operational costs, as well as the cost of development and deployment.

Over the past few years, we’ve helped clients migrate from more traditional infrastructure to serverless, and we’ve seen some great wins; this post outlines a few of our experiences.  


## One Example

After working mainly on serverless code for the last year, we recently had to perform some upkeep on a few of our app-server VMs. In doing so, we got to thinking about the costs — direct and indirect — of apps-deployed-to-a-server vs. functions-running-someplace.

In particular, I have in front of me two stages of the same data flow. One runs on a Linux server (an Azure VM, specifically), alongside another major app hosted on the same server. The other (newer) stage comprises two different Azure Function apps.

The older app runs like any standard Unix service, one component of many on a full-fledged Linux server. Logs are archived to disk, the disk is backed up, it all works just fine, like this sort of app always has. It reaches out to a web API to pull down a lot of employee and scheduling data, normalizes it, archives it, stores it to a database, etc.

The newer app lives, for all appearances, in its own little world; there’s nothing to look at but the code and its settings. Logs live nearby in Application Insights, data lives nearby in connected storage, everything is archived nicely, and it just works.


## Upkeep costs

Most of the time, there's very little maintenance or attention needed for either app. But when maintaining and upgrading our Azure hosting infrastructure, we have to be aware of:



*   making sure the Linux server is up-to-date, running a compatible version of Python, running the proper integration daemons, etc.
*   keeping the machine up and running through the upgrade processes
*   maintaining a continuous backup regimen against the correct disk

So any changes require a certain amount of care; we need to be a well-behaved citizen of our host server, avoiding any requirements that don’t fit with other applications or system services therein.

If we want to upgrade or change the infrastructure around the function apps, we just... do it. Worst case, we redeploy the function app to a new resource group, timers and app insights and all. It takes a few minutes. Our Continuous Integration (CI) server actually does all the work.


## Operational costs

The two main apps on that Linux server don't require too much too powerful a machine, but they do have some serious disk and memory needs when they're active. We have a fairly modest VM "size" applied, at a promo deal no less, and the cost is about $430 per month (including backups, everything being tied in and managed through our Azure subscription, etc.). Let's say half of that is going to this app: $215 per month.

The function apps — also backed up, tied in to Azure, etc. — scale out as needed, throwing more CPUs on the fire if the load warrants. Otherwise they're dormant. Monthly cost to run our full dataset: less than $40.


## Development and Deployment

In both cases, we're writing and testing locally, using TDD and BDD tools along the way. 

But the deployment story is different: on the older system, there are firewalls to configure; in some cases, URLs to expose (along with the associated DNS updates), and so on.

We deploy the newer functions to Azure, and immediately have a known, consistent, and accessible URL for our functions, as well as matching development versions of the same. Minutes vs. hours, at the least.

You don’t _have_ to run multiple services on a single VM, but it’s extremely common to do so. Why? Cost and utilization. You’re paying a fixed amount (or at least a minimum) for that server and its capacity, whether you’re using it or not. This creates a strong incentive to use as much of that capacity as you can, and maximize ROI. Now you have a variety of services with different, sometimes conflicting requirements, all of which must be balanced against each other and against the requirements of the host operating system (which must, itself, be updated and maintained, possibly affecting one or more services running on the machine).

In the serverless world, the incentives run the other way -- each instance is simple, self-contained, and has few to no inherent conflicts. 


## Nothing to see here

None of this is particularly shocking — it's not news that on-demand billing can make a lot of sense for batchy, bursty applications. I'd just forgotten how striking the difference could be.

I'd done precious little serverless code a few years ago; the "old" way was second nature, well-understood, and seemed to me by far the most expedient way to get going. Habits can be changed, skills can be learned (and dropped), and what's obvious now isn't a permanent state. For all sorts of reasons, cost-related and otherwise, it would now take some work to convince me to waste time with a server for any new SaaS project. And it would probably take even more work to convince the folks who are actually responsible for the budget.
