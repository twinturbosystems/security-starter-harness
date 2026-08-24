# Security Starter Kit

A folder you download that turns Claude Code into a calm, plain-English security coach for your own accounts, devices, and small business. Defensive only.

## What is this?

It is a folder of files you download onto your own computer. Inside it are written instructions in plain text, which you can open and read like any other document. When you open that folder in Claude Code and start typing, the assistant reads those instructions first, and from then on it behaves like a security coach for this one job instead of a general chatbot: it works only on what is yours, it explains the why in one line, and it gives you the next step rather than a lecture. Developers call a folder like this a harness, which is why the repository is named security-starter-harness.

The instructions also save each job as a short command. You type `/phishing-check` and paste the message, instead of explaining what kind of answer you want every time. Your progress lives in text files inside the folder, in `checklists/` and `plans/`, which you own and can read, edit, or delete. There is no account, no server, and no telemetry in this folder.

## What you need first

Claude Code. It is Anthropic's assistant that runs in a terminal window on your computer. Install it by following the official guide: https://docs.anthropic.com/en/docs/claude-code

Claude Code signs in with a Claude account. If you do not have one yet, it walks you through creating one the first time you run it.

## Download the kit

The one-click way, straight to the zip file:

https://github.com/twinturbosystems/security-starter-harness/archive/refs/heads/main.zip

Save it, then unzip it somewhere you can find again, like your Documents folder. Unzipping gives you a folder called `security-starter-harness-main`. That folder is the kit.

Two other ways to get the same folder, if you prefer them:

- On this page, click the green Code button near the top, then choose Download ZIP.
- If you already use git: `git clone https://github.com/twinturbosystems/security-starter-harness.git`

## Start in 60 seconds

1. Open a terminal in the folder you just unzipped. A terminal is the plain text window where you type commands to your computer. On Windows, right-click inside the folder and choose Open in Terminal. On a Mac, right-click the folder in Finder and choose New Terminal at Folder.
2. Type `claude` and press Enter. The first time, it asks you to sign in to your Claude account in a browser.
3. Say yes to the trust prompt. The first time Claude Code opens a folder it has not seen before, it asks whether you trust the files in it. That is normal and it only happens once per folder. This is the folder you just downloaded, so choose yes.
4. Type `/lock-down` and press Enter. Expect a short list of your accounts in priority order, then one step at a time, with your progress written into `checklists/lock-down-progress.md` so you can stop and come back.
5. If you came here because of a specific suspicious message, type `/phishing-check` instead and paste the message when it asks. Expect a verdict, the signals behind it, and what to do now.

There is nothing to build and nothing to install beyond Claude Code itself.

## What you can type

Six commands. Each one is a conversation, not a form.

- `/phishing-check` takes a suspicious email, text, or DM you paste in and gives back a verdict, the signals behind it, and what to do now.
- `/lock-down` hardens your personal accounts in priority order, one step at a time, with progress saved to a checklist.
- `/home-network` walks one evening of securing the router and Wi-Fi at home or in a small office.
- `/im-hacked` gives ordered steps for the moment you think an account or a business has been compromised, and says when to call for help.
- `/small-biz-plan` writes a one-page security plan for a business under 20 people into `plans/security-plan.md`.
- `/privacy-checkup` goes through app permissions, location sharing, data brokers, and old accounts you forgot about.

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

## The other two kits

Same idea, different job. Each is a separate folder you download the same way.

AI Starter Kit, for people who are new to AI tools and want to build one small real thing today.
Download: https://github.com/twinturbosystems/ai-starter-harness/archive/refs/heads/main.zip
Read first: https://github.com/twinturbosystems/ai-starter-harness

Family Ops Kit, for the person in the house who plans the dinners, the week, the chores, and the budget.
Download: https://github.com/twinturbosystems/family-ops-harness/archive/refs/heads/main.zip
Read first: https://github.com/twinturbosystems/family-ops-harness

## More

- Everything I make: https://ibrahim.build/links
- The safety rules in plain words: `docs/SAFETY.md`
- Using Codex or another agent instead of Claude Code: `AGENTS.md`

Ibrahim Builds is a creator brand from Beit Systems LLC. https://beitsystems.com

## License

MIT. See `LICENSE`.
