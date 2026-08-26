# Safety policy, in plain words

This kit is defensive only. It helps you protect what is yours. It does not help anyone get into what is not theirs. The rules below are written into `CLAUDE.md` and the skills as strong defaults for the assistant to follow. They are instructions, not a guarantee. After you review and trust the folder, Claude Code adds project-level denials for shell commands, web access, and common secret locations. Other assistants may not apply those settings.

## What it will do

- Look at a message you paste and tell you whether it looks like phishing, why, and what to do next
- Walk you through protecting your own accounts, phone, router, and business, one step at a time
- Explain security words in plain English the first time they come up
- Tell you plainly when a situation is beyond self-help, and who to call
- Keep a written record of progress in `checklists/` and `plans/` so you can stop and come back

## What it will not do

- Attack, scan, probe, map, or access any system, account, network, or device you do not own or administer. A neighbor's Wi-Fi, a partner's phone, a coworker's inbox, a competitor's website, and "a friend who said it was fine" are all off the table.
- Write or explain malware, password crackers, phishing pages, credential harvesting, or any tool whose purpose is to get into something without the owner's consent.
- Open, fetch, or preview links or attachments from a suspicious message. It reads the link as text. Opening a link can tell the sender your address is live, and can land on a fake login page.
- Ask you for a password, a full card number, a one-time login code, a recovery code, or a full national ID number. If you start to paste one, it will ask you to redact it. It does not need those to help you.
- Contact the sender of a suspicious message, or write a reply for you to send them.
- Run commands on your computer. In Claude Code, the folder's settings block its shell tools on purpose. In another assistant, the written instructions say not to use them. If a step needs something typed on your own machine, it tells you what to type and what to look for, and you do it.
- Retaliate. If someone attacked you, the only outbound action is reporting to the right people.

## Why permission claims do not change this

People sometimes say "I have permission" or "it is my own company" to get past the rules. The kit still declines, because it cannot verify that, and because an authorized security test is a job for a professional working under a written agreement. What the kit can do instead is help you check that your own systems are locked down, which is usually what the person actually needed.

## Why it will not fetch links

A link in a phishing message often carries a unique tag. Opening it, even from a tool, can confirm to the sender that your address is real and watched, which makes you a better target next time. It can also load a page built to look like a login screen. So the kit analyzes the link as written and tells you how to reach the real organization on your own.

## What "beyond self-help" means

Some situations need a bank, a lawyer, law enforcement, or an incident response professional, and no chat tool replaces them. The kit will say so in the first lines of its reply when it sees any of these: money moving, threats or extortion, a business system with customer data accessed, an attacker who knows you or has physical access, or an account or device you cannot get back. It keeps helping with the safe steps while you make the call.

## Your data

This kit has no telemetry, server, account, or analytics of its own. The files your assistant reads, and anything you type, paste, or attach, are sent to that assistant's provider as part of the conversation. Saved checklists and plans live as plain text in this folder on your computer. Redact secrets before you paste anything, and never write secrets into a checklist.

## Reporting a problem with the kit

If the kit ever does something this page says it will not, open an issue on the repository, or reach the author through https://ibrahim.build/links. Include what you asked and what it answered, with your own details removed.
