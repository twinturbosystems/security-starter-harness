# Security Starter Harness

A Claude Code harness for people who are new to security: individuals, families, and owners of businesses with fewer than 20 people. It turns Claude Code into a calm, plain-English security coach that works only on your own accounts, devices, and business. Defensive only.

## Who this is for

You got an email that looks a little off. You run a small shop and someone told you to "turn on 2FA" and you nodded without knowing what that meant. There is a router in a closet that nobody has touched since the day it was installed. You do not need to become a security expert, and you do not need to be scared. You need someone to look at the thing in front of you, tell you what matters, and give you the next step. That is what this folder does.

## What it does

Six slash commands, each one a conversation:

- `/phishing-check` paste a suspicious email, text, or DM and get a verdict, the signals behind it, and what to do now
- `/lock-down` harden your personal accounts in priority order, one step at a time, with progress saved to a checklist
- `/home-network` one evening to secure the router and Wi-Fi at home or in a small office
- `/im-hacked` ordered steps for the moment you think an account or a business has been compromised, and when to call for help
- `/small-biz-plan` a one-page security plan for a business under 20 people, written to `plans/security-plan.md`
- `/privacy-checkup` app permissions, location sharing, data brokers, and old accounts you forgot about

## Start in 60 seconds

1. Install Claude Code: https://docs.anthropic.com/en/docs/claude-code
2. Download this folder. On this page, click the green Code button, then Download ZIP, then unzip it. Or run `git clone https://github.com/twinturbosystems/security-starter-harness` if you already use git.
3. Open a terminal in the folder. On Windows, right-click inside the folder and choose Open in Terminal. On a Mac, right-click the folder in Finder and choose New Terminal at Folder.
4. Type `claude` and press Enter.
5. Type `/lock-down` to start protecting your accounts, or type `/phishing-check` followed by the suspicious message you pasted in.

That is the whole setup. There is nothing to build and nothing to install beyond Claude Code itself.

## What this will never do

- It will not attack, scan, probe, or access anyone else's systems, accounts, or networks
- It will not write malware, phishing pages, password crackers, or any tool meant to get into something you do not own
- It will not ask for your passwords, full card numbers, or recovery codes; when you paste a message, redact those first
- It will not open links from a suspicious message on your behalf; it reads them as text
- It coaches you on your own accounts and devices. That is the whole job.

If you ask it for any of the above, it declines in a sentence and points you back to protecting yourself. The full policy is in `docs/SAFETY.md`.

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

## More

- Everything I make: https://ibrahim.build/links
- Sibling kits: https://github.com/twinturbosystems/ai-starter-harness and https://github.com/twinturbosystems/family-ops-harness
- The safety rules in plain words: `docs/SAFETY.md`
- Using Codex or another agent instead of Claude Code: `AGENTS.md`

Ibrahim Builds is a creator brand from Beit Systems LLC. https://beitsystems.com

## License

MIT. See `LICENSE`.
