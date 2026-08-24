---
name: phishing-check
description: Paste a suspicious email, text message, or DM and get a calm, structured verdict (likely phishing, unsure, or likely legitimate) with the specific signals, what to do now, what not to click, and how to verify through an independent channel.
user-invocable: true
disable-model-invocation: false
allowed-tools: Read
argument-hint: [paste the message, including the sender address and the text of any links]
---

# Phishing Check

The person has a message in front of them and wants to know whether it is safe. Give them a verdict they can act on in under a minute, then the reasoning.

## Input

$ARGUMENTS is the pasted message. If it is empty, ask for it: the sender's address as shown and, if they can find it, the actual address behind the display name; the subject; the body; and the text of any links (they can hover on a computer, or long-press on a phone, to see where a link goes without opening it). Tell them not to open any link or attachment while you look.

If the paste contains a password, a full card number, a one-time code, or a recovery code, stop and ask them to replace it with REDACTED before continuing. You do not need it.

## Process

1. Read the whole message before judging. Look at the sender, the ask, the links, the tone, and the timing.

2. Check the sender. Does the display name match the address behind it? Is the domain (the part after the @) the real domain of the organization, or a lookalike: extra words, swapped letters, a different ending such as .co instead of .com, or a free mail provider for a company that would use its own domain? Spell out any lookalike you find, letter by letter if that helps.

3. Check the ask. Phishing almost always wants one of these: click a link and log in, open an attachment, send money or gift cards, share a code, change payment details, or reply with personal information. Legitimate organizations rarely need any of that by email on a deadline.

4. Check the links. Compare the visible text to the actual destination. Look for lookalike domains, link shorteners, long strings of random characters, and login pages hosted somewhere other than the organization's real site. Do not open links. Do not fetch them. Analyze the text only.

5. Check the pressure. Deadlines, threats of account closure, legal consequences, "your package is held", "your payment failed", a boss who needs something done quietly and fast. Pressure is a signal, not proof.

6. Check the context. Did the person expect this message? Do they have an account with this organization? Does it address them by their real name or a generic one? Did it arrive at the address they actually use for this service?

7. Give the verdict in this exact structure:

   Verdict: Likely phishing, Unsure, or Likely legitimate.

   Confidence: one sentence, and what would change your mind.

   Signals: a short list of the specific things you saw, quoting the message where useful. Each one plain enough that the person could spot it next time on their own.

   What to do now: one action first, then the rest. For likely phishing: do not click, do not reply, report it in the mail or messaging app (report as phishing or junk), then delete it. For unsure: do not act on the message; verify through an independent channel first. For likely legitimate: still use an independent channel for anything involving money or a login.

   Do not click: the specific links or attachments in the message, named.

   Verify independently: how to check with the real organization without using anything in the message. Type the organization's address into the browser yourself, use the app already on the phone, or call the number on the back of the card or on a past statement. Never the number or link in the message.

8. If the person already clicked or entered something, do not scold. Move to the containment steps from `/im-hacked`: change that password from a clean device, turn on 2FA (a second check at login, usually a code from an app on the phone), check for email forwarding rules, watch the account. Say that this is fixable and that acting now is what matters.

## Rules

- Never open, fetch, or preview a link or attachment from the message. Text analysis only.
- Never ask for passwords, codes, or full card numbers. Ask for redacted versions.
- Plain English; explain any term once. No panic language. No exclamation marks.
- When the answer is unsure, say unsure. A confident wrong answer is worse than an honest one.
- Never contact the sender, reply to the message, or draft a reply to the sender. If the person wants to respond to a real organization, they do it through an independent channel.
- A worked example lives in `examples/phishing-check-example.md`. Match its shape.
