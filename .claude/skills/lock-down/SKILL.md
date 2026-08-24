---
name: lock-down
description: Harden your personal accounts in priority order (the email that receives your password resets first, then a password manager, 2FA with an authenticator app, recovery codes, and a review of connected apps and sessions). One step at a time, with progress saved to checklists/lock-down-progress.md.
user-invocable: true
disable-model-invocation: false
allowed-tools: Read, Write, Edit
argument-hint: [optional: "continue", or the name of the step to start with]
---

# Lock Down

Walk the person through hardening their own accounts, in the order that matters, one step at a time. Save progress so they can stop and come back.

## Input

$ARGUMENTS is optional. "continue" means pick up from the checklist. A step name (for example "2FA") means start there. Empty means start from the top, but read the checklist first so you do not repeat finished work.

## Process

1. Read `checklists/lock-down-progress.md`. If steps are already checked, acknowledge them in one line and move to the first unchecked step. Do not restart.

2. Explain the order once, in three sentences. The email account is the root of trust because password resets for everything else land there. A password manager makes every other step possible. 2FA (a second check at login, usually a code from an app on your phone) stops a stolen password from being enough on its own.

3. Work through the steps below one at a time. For each step: say why it matters in one sentence, give the clicks in general terms (Settings, then Security, then the option), ask the person to do it and tell you when it is done or where they got stuck, then check it off in the file. Do not dump all steps at once.

   Step 1, the email account. Identify which email account receives password resets for their bank, their other email, and their main accounts. Change its password to a long unique one (a passphrase of four or more unrelated words is fine for now if they do not have a password manager yet). Check the recovery email and recovery phone on the account; if either is unfamiliar or out of date, fix it.

   Step 2, a password manager. Any reputable password manager, including the one built into their phone or browser, is better than reusing passwords. Install it, set a strong master passphrase they will remember, and start by saving the email password from step 1. New accounts get generated passwords from now on; old ones get fixed as they log in.

   Step 3, 2FA on the email account. Prefer an authenticator app (an app that shows a six-digit code that changes every 30 seconds) over text message codes, because text messages can be redirected by someone who takes over the phone number. If a hardware security key is available, that is stronger still. If text message is the only option, it is still better than nothing.

   Step 4, recovery codes. Most services give a set of one-time backup codes when 2FA is turned on. Save them somewhere the person will still have if the phone is lost: the password manager's notes, or printed and kept with important papers. Not a photo in the camera roll. Not pasted into this chat.

   Step 5, 2FA on the next tier. Bank, primary social account, the account tied to the phone itself, and anything holding money or business data. Same method as step 3.

   Step 6, connected apps and sessions. In the email account and the main social accounts, open the security settings and review three lists: third-party apps with access (remove anything unrecognized or unused), active sessions and signed-in devices (sign out anything unfamiliar), and forwarding or filter rules in email (delete any rule they did not create; this is a common way attackers keep reading mail after a password change).

   Step 7, the phone. Screen lock on, automatic updates on, find-my-device on, and the account tied to the phone protected by steps 3 and 4.

4. After each completed step, update `checklists/lock-down-progress.md`: check the box, add the date, and a short note if something was skipped or deferred and why.

5. When the last step is done, say so plainly, summarize what changed in five lines or fewer, and suggest a date about six months out to repeat step 6.

## Rules

- One step at a time. Wait for the person to finish before giving the next step.
- Never ask for the new password, the master passphrase, the 2FA codes, or the recovery codes. If they paste any of these, tell them to treat that secret as exposed, change or regenerate it, and never paste it anywhere again.
- No brand recommendations; say "a password manager" or "an authenticator app". If they ask which one, say that the well-known ones are all fine and the one built into their phone is a good start.
- Keep the file as the source of truth. Read it before writing. Do not overwrite notes the person added by hand.
- If the person cannot get into the email account at all, stop and switch to `/im-hacked`.
