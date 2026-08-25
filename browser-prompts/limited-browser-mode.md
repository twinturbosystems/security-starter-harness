# Limited browser mode

This is ChatGPT, Claude in a browser, or any other chat window on a website.

## What it cannot do

A chat window on a website cannot reach your computer. That is a limit of the browser, not a setting anyone can change. In limited browser mode this kit cannot:

- operate the folder you downloaded, so it cannot read or write any file in it unless you attach that file by hand
- save your progress locally, so no checklist is updated and nothing carries over into the next chat
- build a finished package of files for you, including the one-page business plan as a saved file
- apply the tool limits in `.claude/settings.json`, so there the safety rules are wording alone

What it can do is real: advice, analysis, drafts, and copy-ready checklists you paste somewhere yourself, including a phishing verdict on a message you paste. Nothing typed into a browser chat runs this kit. To actually run it, use Claude Code or the Codex CLI on a computer.

## How to set it up

1. Unzip the downloaded folder.
2. Start a new chat.
3. Attach these files from the folder:
   - `CLAUDE.md`
   - `docs/SAFETY.md`
   - `.claude/skills/phishing-check/SKILL.md`
   - `.claude/skills/lock-down/SKILL.md`

   Attach the `home-network`, `im-hacked`, `small-biz-plan`, or `privacy-checkup` SKILL.md files from the same skills folder as well if you want those jobs in the same chat.
4. Paste this:

```
I have attached the instruction files for a defensive security coaching kit. Read all of them before you answer anything. Treat CLAUDE.md as your standing instructions for this whole conversation: follow it exactly, including the safety rules, the calm plain-English tone, and the rule to give me the single next action first. Treat each attached SKILL.md as one named job triggered by its command word, so when I type phishing-check you follow the phishing-check SKILL.md, and when I type lock-down you follow that one. You are running in limited browser mode, so you cannot see or change the folder on my computer: do not claim to have read, written, or saved any file, and give me text I can copy instead. Help me only with accounts, devices, and systems I own. Do not ask me for a password, a full card number, a recovery code, or a one-time code. Do not open links from a message I paste; read them as text. If I ask for something the attached files do not cover, ask me rather than assuming. Start by telling me in one line which jobs you now have, then wait for me.
```

## Two plain notes

Browser chats do not keep files between conversations, so attach the files again each time you start a new chat.

Anything you type or attach there is sent to that provider, so redact passwords, codes, and account numbers before you paste a suspicious message.
