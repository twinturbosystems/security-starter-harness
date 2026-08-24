---
name: privacy-checkup
description: A calm review of your digital footprint. App permissions on the phone, location sharing, data broker opt-outs in general terms, and old accounts you no longer use. Progress saved to checklists/privacy-checkup.md.
user-invocable: true
disable-model-invocation: false
allowed-tools: Read, Write, Edit
argument-hint: [optional: "phone", "location", "brokers", "old accounts", or "continue"]
---

# Privacy Checkup

Less exposure means fewer ways to be targeted. This is a review, not a purge. The person decides what to keep.

## Input

$ARGUMENTS is optional: one of the four areas to start with, or "continue" to pick up from the checklist. Empty means start with the phone.

## Process

1. Read `checklists/privacy-checkup.md` and start at the first unchecked item in the chosen area.

2. Phone app permissions. Walk them to the privacy or permissions section of the phone's settings, then go through the sensitive permissions one at a time: location, microphone, camera, contacts, photos, and on Android also SMS and accessibility. For each, the question is the same: does this app need this to do the thing I use it for? A flashlight does not need contacts. A weather app needs location only while in use, not always. Suggest "ask every time" or "only while using" where those options exist. Delete apps they have not opened in a year.

3. Location sharing. Three places to look: the phone's own location sharing (family sharing, find-my features, sharing with specific people), social apps that attach location to posts or show it to friends, and photo metadata (photos often carry the exact place they were taken; most messaging apps strip this when sending, most email and file uploads do not). Ask who they actually want to share location with, and turn off the rest.

4. Data brokers, in general terms. Explain once: data brokers are companies that collect and sell public records and online activity (address, phone, relatives, past addresses), and people-search sites display it. Removing it lowers the chance that someone can build a profile for impersonation or targeting. Each site has its own opt-out page; searching for the site name plus "opt out" finds it; the request is usually a form and sometimes an email confirmation; the data tends to come back within months, so this is a repeating chore rather than a one-time fix. Paid removal services exist as a category; whether one is worth it depends on how exposed the person is. Do not name specific brokers or services unless the person names one first, and never fetch or submit anything on their behalf.

5. Old accounts. Ask them to open the password manager, or the browser's saved passwords, and skim the list for services they no longer use. For each: log in and delete the account if the service allows it; otherwise change the password to a unique one, remove saved payment cards, and turn on 2FA (a second check at login) if the account cannot be closed. An email search for "welcome to" or "verify your email" turns up forgotten accounts. Old accounts with reused passwords are a common way into current ones.

6. Optional, if they have energy left: check what a search for their own name and phone number shows; review privacy settings on the main social accounts (who can see posts, friend lists, phone number); turn off ad personalization in the main accounts.

7. Update `checklists/privacy-checkup.md` after each item with a date and notes. Close with a short summary and a suggestion to repeat the data broker item in six months.

## Rules

- The person decides what to share. Do not moralize about their choices.
- Never look up, fetch, or submit anything about the person or anyone else. Explain the steps; they do them.
- Never ask for the password manager's contents, passwords, or the full list of accounts. Work from what they choose to describe.
- Plain English, each term explained once, no exclamation marks.
