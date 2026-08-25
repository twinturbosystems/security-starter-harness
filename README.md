# Security Starter Kit

This kit helps you lock down your own accounts, devices, home network, and small business, in plain English, one step at a time. You download a folder, open it in an AI assistant, and the assistant becomes a calm defensive security coach instead of a general chatbot. Defensive only.

## What you need first

- A Mac, Windows, or Linux computer.
- An account with an AI assistant. Claude Code is the smoothest, because this folder is built for it. Install it from the official guide at https://docs.anthropic.com/en/docs/claude-code and it walks you through creating a Claude account the first time you run it.

Choose a kit now, then finish setup on a Mac, Windows, or Linux computer. On your phone? Save this page and come back to it there.

## Download the kit

https://github.com/twinturbosystems/security-starter-harness/archive/refs/heads/main.zip

## Three steps to set it up

1. Unzip the file you just downloaded. You get a folder called `security-starter-harness-main`.
2. Open a terminal in that folder and type `claude`, then press Enter. A terminal is the plain text window where you type commands to your computer.
3. Say yes when it asks whether you trust the files in this folder. It asks once per folder.

## Type this first

Type these three words and press Enter.

```
Start the kit
```

That is the whole first instruction. It is the same three words in every one of these kits.

## What a good result looks like

Within a few seconds the assistant tells you which kit it is reading, names itself, says in one line what this kit does, and gives you the exact next thing to type. It then offers to run a phishing check on the invented example message that ships in the folder, so you can see a real verdict before you paste anything of your own. It does not ask you for personal information to get started, and it never asks for a password, a card number, a recovery code, or a one-time code at any point.

If that is not what you see, [docs/STUCK.md](docs/STUCK.md) gives one next action for each of the common stumbles.

## Privacy and safety

The kit has no account, no server, and no telemetry, and it does not upload anything on its own. The files the assistant reads, and everything you type or paste, are sent to that assistant's provider as part of the conversation, the same as any other chat with it, so redact passwords, codes, and account numbers before you paste a suspicious message. Your progress is stored only as plain text files inside this folder on your computer, in `checklists/` and `plans/`, where you can read, edit, or delete them. The kit works only on things you own, and the full policy is in [docs/SAFETY.md](docs/SAFETY.md).

---

Everything below is detail. You do not need it to begin.

## What is this?

It is a folder of files you download onto your own computer. Inside it are written instructions in plain text, which you can open and read like any other document. When you open that folder in Claude Code and start typing, the assistant reads those instructions first, and from then on it behaves like a security coach for this one job instead of a general chatbot: it works only on what is yours, it explains the why in one line, and it gives you the next step rather than a lecture. Developers call a folder like this a harness, which is why the repository is named security-starter-harness.

The instructions also save each job as a short command. You type `/phishing-check` and paste the message, instead of explaining what kind of answer you want every time. Your progress lives in text files inside the folder, in `checklists/` and `plans/`, which you own and can read, edit, or delete.

If this turns out to be useful to you, a star on the repo helps other people find it.

## How it works

The folder is ordinary text files. Nothing in it is compiled, and nothing runs on its own. `CLAUDE.md` holds the standing instructions: plain English, calm tone, the single next action first, no attack tooling, never ask you for a password or a one-time code. Each folder under `.claude/skills` is one named job, written as plain markdown you can open and read.

When you point an assistant at the folder, it reads those instructions before it answers you. From then on it behaves like a defensive security coach for everything you ask, not just the first question. It is not a program that starts up, and nothing is installed on your computer beyond the assistant itself. It is instructions the assistant chooses to follow.

The saved jobs are why you can type one short word instead of explaining what kind of answer you want every time. `Start the kit` orients you and offers the example. `/phishing-check` reads a message you paste and gives a verdict with the signals behind it. `/lock-down` hardens your accounts in priority order. `/home-network` covers the router and the Wi-Fi. `/im-hacked` gives ordered steps for a bad morning. `/small-biz-plan` writes a one-page plan. `/privacy-checkup` goes through permissions, location sharing, and old accounts.

Your progress lives in files in the folder that you own and can read, edit, or delete. The checklists are in `checklists/`, one per job, so you can stop halfway and pick it up next week. Written plans go to `plans/`.

Two honest limitations. An assistant follows instructions, it does not enforce them the way a locked-down program does, so the safety rules in `CLAUDE.md` are strong defaults rather than a guarantee. And only the Claude Code path can actually restrict which tools the assistant is allowed to use: this folder ships a `.claude/settings.json` that denies shell commands and web fetching and permits writing only into `checklists/` and `plans/`. Claude Code applies that file after you have opened the folder once and accepted the trust prompt, which is the same one-time prompt in step 3 above. Before that first trust, and in any assistant that never reads the file, such as limited browser mode, the limits are wording alone. If that difference matters to you, use Claude Code and say yes to the trust prompt when it appears.

## Other ways to get the same folder

- On this page, click the green Code button near the top, then choose Download ZIP.
- If you already use git: `git clone https://github.com/twinturbosystems/security-starter-harness.git`

## Start in 60 seconds

The sixty seconds begins after the assistant is installed and the unzipped folder is open in it. Installing an assistant for the first time takes longer than that, and that is normal.

1. Open a terminal in the folder you just unzipped. On Windows, right-click inside the folder and choose Open in Terminal. On a Mac, right-click the folder in Finder and choose New Terminal at Folder.
2. Type `claude` and press Enter. The first time, it asks you to sign in to your Claude account in a browser.
3. Say yes to the trust prompt. The first time Claude Code opens a folder it has not seen before, it asks whether you trust the files in it. That is normal and it only happens once per folder. This is the folder you just downloaded, so choose yes.
4. Type `Start the kit` and press Enter. Expect a short orientation, the exact next thing to type, and an offer to run the example phishing check so you can see the shape of a verdict.
5. Type `/lock-down` and press Enter. Expect a short list of your accounts in priority order, then one step at a time, with your progress written into `checklists/lock-down-progress.md` so you can stop and come back.
6. If you came here because of a specific suspicious message, type `/phishing-check` instead and paste the message when it asks. Expect a verdict, the signals behind it, and what to do now.

There is nothing to build and nothing to install beyond Claude Code itself.

## Set it up in your assistant

Downloading the folder above is still the first step. This is how you switch that folder on inside the assistant you already use.

- Claude Code: no prompt needed. Open a terminal in the folder, run `claude`, accept the one-time trust prompt, and type `Start the kit`. That is the steps above. Claude Code reads the instructions by itself, the commands work exactly as typed, and it is the only one of the three that can apply the tool limits in `.claude/settings.json`.
- Codex CLI: run it inside the folder. It reads `AGENTS.md` by itself, and one short paste-in prompt covers the rest.
- Limited browser mode, which means ChatGPT, Claude in a browser, or any other chat window on a website: there is no folder there, so you attach the instruction files to the chat and paste one setup prompt. Read the limits below before you choose this path.

The copy-ready prompts for all three are in the [browser-prompts](browser-prompts/) folder, in plain view rather than inside the hidden `.claude` directory. [ONE-PROMPT.md](ONE-PROMPT.md) is the short guide that points at them.

## Limited browser mode

A chat window on a website cannot reach your computer. That is a hard limit of the browser, not a setting anyone can change. In limited browser mode this kit cannot:

- operate the folder you downloaded, so it cannot read or write any file in it unless you attach that file by hand
- save your progress locally, so no checklist is updated and nothing carries over to the next chat
- build a finished package of files for you, including the one-page business plan as a saved file
- apply the tool limits in `.claude/settings.json`, so there the safety rules are wording alone

What it can do is real and often enough: give advice, analysis, drafts, and copy-ready checklists you paste somewhere yourself, including a phishing verdict on a message you paste. Nothing typed into a browser chat runs this kit. To actually run the kit, use Claude Code or the Codex CLI on a computer.

## What you can type

One starting instruction and six commands. Each one is a conversation, not a form.

- `Start the kit`, or `/start`, orients you: which kit this is, what it does, what to type next, and an offer to see the example phishing check first.
- `/phishing-check` takes a suspicious email, text, or DM you paste in and gives back a verdict, the signals behind it, and what to do now.
- `/lock-down` hardens your personal accounts in priority order, one step at a time, with progress saved to a checklist.
- `/home-network` walks one evening of securing the router and Wi-Fi at home or in a small office.
- `/im-hacked` gives ordered steps for the moment you think an account or a business has been compromised, and says when to call for help.
- `/small-biz-plan` writes a one-page security plan for a business under 20 people into `plans/security-plan.md`.
- `/privacy-checkup` goes through app permissions, location sharing, data brokers, and old accounts you forgot about.

If anything goes wrong at any point, read [docs/STUCK.md](docs/STUCK.md).

## It will not fit you perfectly

This is a starting point, not a finished product. It was written for a general version of a person or a small business, and your situation is specific: your accounts, your devices, and what actually needs protecting first. Some of the order it suggests will not be your order.

Everything in the folder is plain text. You can open any file in it with any text editor and read it like a letter. Nothing is compiled, nothing is hidden, and nothing is locked.

The way to change it is to tell the assistant what you want different, and ask it to edit the file for you. You do not have to edit anything by hand. For example, `/lock-down` starts with your email account, because password resets for everything else land there. If the account you are actually worried about is your bank, type this:

> Start the lock-down with my bank account rather than my email. Tell me what that trades away, then edit `.claude/skills/lock-down/SKILL.md` so it does that every time.

Change the file and the change sticks for every future session. Anything that should apply across every job, such as tone or how much detail you want, lives in `CLAUDE.md`.

Two things are worth leaving alone. The email-first order exists for a reason, so ask it to explain the trade before you reorder it. And the rules in `CLAUDE.md` about what this kit will not do, such as never asking you for a password or a one-time code, are the part protecting you from the tool itself.

If a change goes wrong, download the folder again and start from the original. Your own progress is in separate files: the checklists in `checklists/` and any written plan in `plans/`. Copy those two folders somewhere safe first, then put them into the fresh folder.

One honest line. It can be wrong. A phishing verdict is a judgment, not a certainty, and a message it calls safe can still be a scam. Read what it tells you, and confirm anything that matters through a channel you already trust, such as the number on the back of your card rather than the number in the message.

## Who this is for

You got an email that looks a little off. You run a small shop and someone told you to turn on 2FA and you nodded without knowing what that meant. There is a router in a closet that nobody has touched since the day it was installed. You do not need to become a security expert, and you do not need to be scared. You need someone to look at the thing in front of you, tell you what matters, and give you the next step. That is what this folder does. It is for individuals, families, and owners of businesses with fewer than 20 people.

## What this will never do

- It will not attack, scan, probe, or access anyone else's systems, accounts, or networks
- It will not write malware, phishing pages, password crackers, or any tool meant to get into something you do not own
- It will not ask for your passwords, full card numbers, or recovery codes; when you paste a message, redact those first
- It will not open links from a suspicious message on your behalf; it reads them as text
- It coaches you on your own accounts and devices. That is the whole job.

If you ask it for any of the above, it declines in a sentence and points you back to protecting yourself. The full policy is in `docs/SAFETY.md`, in plain words.

## When to get a professional

Self-help has limits. Get a professional, or the right organization, involved when:

- Money has already left an account, or someone is actively trying to move it. Your bank's fraud line comes first.
- Someone is threatening you or demanding payment. Do not pay. Report it to local law enforcement and your country's cybercrime reporting site.
- A business system holding customer data was accessed. You may have legal duties to notify people on a short timeline. A lawyer and an incident response firm should be in the loop before anything is wiped.
- You cannot get back into an account or device after following `/im-hacked`.
- The person targeting you knows you personally, or once had access (a former partner, a former employee). Do not handle that alone.

## Why I made this

I have spent 14 years in security, a good part of it in incident response, and most of the damage I have seen started with something small that nobody had a calm place to ask about. This is that place. It is free, it stays on your side, and it will not sell you anything.

Ibrahim El-Radi

## The other three kits

Same idea, different job. Each is a separate folder you download the same way, and each one starts with the same three words.

AI Starter Kit, for people who are new to AI tools and want to build one small real thing today.
Download: https://github.com/twinturbosystems/ai-starter-harness/archive/refs/heads/main.zip
Read first: https://github.com/twinturbosystems/ai-starter-harness

Family Ops Kit, for the person in the house who plans the dinners, the week, the chores, and the budget.
Download: https://github.com/twinturbosystems/family-ops-harness/archive/refs/heads/main.zip
Read first: https://github.com/twinturbosystems/family-ops-harness

GovCon Starter Kit, for a solo government contractor who wins prime contracts and delivers through subcontractors and teaming partners.
Download: https://github.com/twinturbosystems/govcon-starter-harness/archive/refs/heads/main.zip
Read first: https://github.com/twinturbosystems/govcon-starter-harness

## More

- Everything I make: https://ibrahim.build/links
- The safety rules in plain words: `docs/SAFETY.md`
- When something goes wrong: `docs/STUCK.md`
- Paste-ready prompts: `browser-prompts/`
- Using Codex or another agent instead of Claude Code: `AGENTS.md`

Ibrahim Builds is a creator brand from Beit Systems LLC. https://beitsystems.com

## License

MIT. See `LICENSE`.
