---
title: "SaaS Marketing: Adwords with Trademarks in them"
---
When we were first setting up our AdWords campaigns, we were using words like 'slack standup bot' etc... The ads were working great, until we realized you can't use Trademarked terms in your ads. The ad's wont show very often, but will probably have an extremly high CTR. Our ads stopped working and we were wondering why. 

To battle this, we removed all the trademarked words from our ads and they start showing again. Here is the scenario now:

* Your ad shows, minus the trademarked word
* We added negative keywords that did not include our trademarked word, but included all the other integrations we don't do

Here is a concrete example:

Our Ad said, "Do you manage remote teams on Slack?". That ad didn't show due to the trademark word "Slack". We removed that word from the ads and re-worded our ads to fit the scenario the person was currently searching for. We were paying an average of $4.34 per CLICK! That's insane!

Once we removed those words from our ad though, we had to figure out how to have that ad show for only people looking for hipchat, ms teams, and slack. We aren't integrated with Jira yet. Armed with that knowledge, I added "Jira" to the negative keyword list. 

Heres some more examples:

Before adding a negative keyword, if someone were to enter a google search of: 

```
slack standup bot
```
they would find our ad.

If someone were to enter a google search of


```
jira standup bot
```

They would find our ad to, but we don't offer a jira integration.

Once we added the negative keyword "jira" and the person did the following search:

```
jira standup bot
```

They would not see our ad, because we dont want anyone search for "jira standup bot" since we wouldn't have anything to sell them. And at this point, we would just be throwing money down the toilet to Google for showing an ad that we shouldnt have shown but we paid for it to be shown.

### Curently heres our stats a couple days later after making adjustments

Our last Avg. CPC was $4.40-ish.  With very little data, we're starting to see  an Avg. CPC of $0.93. If we can spend 75% less on ads and make the same amount, we're doing good.
