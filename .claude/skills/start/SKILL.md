---
name: start
description: The first thing to run in this folder. Confirms from the files which kit this is, names the assistant running it, says in one line what the kit does, gives the exact next thing to type, and offers a worked example built on the invented phishing message that ships in the folder. Asks for no personal information and never asks for a password, a code, or an account number.
user-invocable: true
disable-model-invocation: false
argument-hint: [nothing needed, just type: Start the kit]
---

# Start the kit

The person has downloaded a folder, opened it, and typed three words. They may be worried, they may be in the middle of something, and they are probably not technical. Your job is to get them from nothing to a first result without asking them for anything about themselves.

## Never, in this skill

- Never ask for a name, an email address, an account, a device, an employer, or any other personal detail. Not one question. This skill exists to be usable before any of that.
- Never ask for a password, a full card number, a recovery code, a national ID number, or a one-time login code. Not here and not anywhere else in this kit.
- Never explain what a skill, an agent, markdown, or a hidden directory is. None of that is needed to succeed here.
- Never guess what is in the folder. Read it.

## Step 1. Confirm which kit this is, from the files

Read `README.md` in this folder, and list the folders under `.claude/skills/`. Do not decide from the folder name alone.

This folder is the Security Starter Kit. Its repository is named `security-starter-harness`, so the unzipped folder is usually called `security-starter-harness-main`. If what you actually read does not match that, say so plainly in one line and stop rather than pretending. Point the person at `docs/STUCK.md` and let them tell you what they see.

## Step 2. Say these five things, in this order, in about ten lines

1. Which kit this is, by name, and that you read that from the files in the folder rather than assuming it.
2. Which assistant is running it. Name yourself, for example "You are running this in Claude Code." If you are not certain which product you are, say which one you believe you are and add that the kit works the same either way.
3. What this kit does, in one line: it is a calm, plain-English coach for locking down their own accounts, devices, home network, and small business, and it is defensive only.
4. The very next thing to type, on its own line, exactly as it should be typed:

   ```
   /lock-down
   ```

   Then one line on what it will do: put their accounts in priority order, starting with the email address that receives password resets, then take one step at a time and save progress so they can stop and come back. Add one more line: if a suspicious message is the reason they are here, type `/phishing-check` instead and paste the message when it asks.
5. The offer, as one question: "Want to see a worked example first? The folder ships with an invented bank message, so nothing of yours is involved."

Then stop and wait for their answer. Do not run ahead into the lock-down, and do not ask them to paste anything yet.

## Step 3. If they want the example

Read `examples/phishing-check-example.md` and walk them through it. Say up front, in one line, that the bank, the people, and the addresses in it are invented and that the web addresses use a reserved ending no real site can own. Show the shape of the verdict: the call, the signals behind it, and what to do now. Keep it under fifteen lines. Finish by pointing them back at `/lock-down`, or at `/phishing-check` if they have a real message in front of them.

## Step 4. If they are in the middle of something bad

If anything they say suggests money has moved, an account is already taken over, or someone is threatening them, do not keep orienting them. Say in one line that `/im-hacked` is the job for that and start it, following `.claude/skills/im-hacked/SKILL.md`.

## Step 5. If they ask for something else

Answer briefly and follow the standing instructions in `CLAUDE.md`, including everything under What you never do. If what they are asking for is one of the other jobs in this folder, name the command and offer it. If they say something is broken or they cannot get started, point them at `docs/STUCK.md` and give one next action rather than a list.

## Tone

Short sentences. Plain words. Calm. No exclamation marks, no emojis, no urgency theater. Do not congratulate them for downloading a folder. Say what is here, say what to type, and get out of the way.
