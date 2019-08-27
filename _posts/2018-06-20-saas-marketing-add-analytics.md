---
title: "SaaS Marketing: Add Analytics"
categories: saas marketing 
---
This series is going to be for not only myself to document our proess of helping SaaS software companies generate revenue, but also to help think through our process, incase we can improve our own ways of how we do things currently.

I'm going to use a SaaS product that we built internally at So Fetch: [Standupbot](http://standupbot.com). So Fetch built this tool internally at first to scratch our own itch when managing remote teams across multiple time zones. We realized a lot of other teams in the world of buisness have the same problem, too. We focused on making the tool available to the public. Now we have another SaaS business that we can use to show off our development experience to customers of our consulting company. 

Enough of the backstory, lets get back to what we were working on!

The first thing to do to start tracking how well your website is doing is to add analytics. There are a millions of websites, literally, that will tell you and show you how to do this for the website or app that you're wanting to generate traffic or sales for.

The following steps are the few we did to generate our Tracking Code for Google which we then put into our SaaS app

* We logged into our Google Analytics account
* We selected our main account (We have a few of them)
* After selecting the main account we created a new Property and gave it the name "Standupbot"
* Once that was done, we selected the "Tracking Info" option 
* Under that heading, is the "Tracking Code"

From there, we copied and pasted that HTML code from Google and put it into our  layouts. The Google Analytics tracking code only gets displayed if the application is currently running in Production. This way, we don't get any bogus data being generated in our analytics account from our developers while they are working on their local machines or testing on our Staging environment.
