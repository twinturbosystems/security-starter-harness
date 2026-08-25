# Set up the Security Starter Kit in your assistant

Downloading the folder is still the first step. This page is not a way to skip it. It is how you switch the downloaded folder on inside the assistant you already use.

Direct download: https://github.com/twinturbosystems/security-starter-harness/archive/refs/heads/main.zip

Unzip it. You get a folder called `security-starter-harness-main`.

The shortest path, if you have Claude Code or the Codex CLI on your computer: open a terminal in that folder, start the assistant, and type `Start the kit`. Nothing on this page is needed for that.

Worth knowing before you choose: this folder ships a `.claude/settings.json` that blocks shell commands and web fetching and allows writing only into `checklists/` and `plans/`. Claude Code applies that file once you have opened the folder and accepted the trust prompt. Codex and limited browser mode do not, so with those the limits are wording alone.

The prompts themselves now live in the [browser-prompts](browser-prompts/) folder, in plain view rather than inside the hidden `.claude` directory. This page points at them so there is one copy of each rather than two.

## 1. Claude Code

No prompt at all. Claude Code reads `CLAUDE.md` and the `.claude/skills` folder by itself. Open a terminal in the folder, type `claude`, say yes to the one-time trust prompt, then type `Start the kit`.

If it answers like a general chatbot instead of a security coach, the nudge prompt is in [browser-prompts/claude-code.md](browser-prompts/claude-code.md).

## 2. Codex CLI

Codex reads `AGENTS.md` automatically when you run it inside this folder. Paste the prompt in [browser-prompts/codex-cli.md](browser-prompts/codex-cli.md) once at the start of the session, then type `Start the kit`.

## 3. Limited browser mode

This is ChatGPT, Claude in a browser, or any other chat window on a website. It cannot operate the folder you downloaded, it cannot save your progress locally, it cannot build final packages of files, and it cannot apply the tool limits this folder ships with. It can give you advice, analysis, drafts, and copy-ready checklists, including a phishing verdict on a message you paste. Nothing typed into a browser chat runs this kit.

The file list to attach and the prompt to paste are in [browser-prompts/limited-browser-mode.md](browser-prompts/limited-browser-mode.md).

## 4. Do not have Claude Code or Codex yet?

An assistant you already have open can walk you through the install, one step at a time. The two install prompts are in [browser-prompts/install-the-assistant.md](browser-prompts/install-the-assistant.md).

## If something goes wrong

`docs/STUCK.md` has one next action for each of the common stumbles, including the command not being found and the assistant not being able to see the folder.
