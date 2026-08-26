# Set up the Security Starter Kit in your assistant

Downloading the folder is still the first step. This page is not a way to skip it. It is how you switch the downloaded folder on inside the assistant you already use.

Direct download: https://github.com/twinturbosystems/security-starter-harness/archive/refs/heads/main.zip

Unzip it. You get a folder called `security-starter-harness-main`.

Choose one path before you continue: Claude Code for the full project permission rules, Codex CLI for a local folder with written boundaries, or limited browser mode for advice and drafts without local saving.

Worth knowing before you choose: this folder ships a `.claude/settings.json` that denies Bash, PowerShell, web search, web fetching, and reads of common secret locations. Those denials do not wait for trust. After you trust the folder, two allow rules preapprove edits under `checklists/` and `plans/`. They do not form a sandbox around those folders. Codex and limited browser mode do not apply this file, so with those the boundaries are written instructions.

Whichever provider you choose receives the files it reads and anything you type, paste, or attach as part of the conversation. Redact passwords, codes, account numbers, and other secrets first.

The prompts themselves now live in the [browser-prompts](browser-prompts/) folder, in plain view rather than inside the hidden `.claude` directory. This page points at them so there is one copy of each rather than two.

## 1. Claude Code

No prompt at all. Claude Code reads `CLAUDE.md` and the `.claude/skills` folder by itself. It requires a Pro, Max, Team, Enterprise, or Console account; the free Claude.ai plan does not include Claude Code. Install the current native version from https://code.claude.com/docs/en/installation. Open a terminal in the folder, type `claude`, confirm that the trust prompt names the folder you downloaded, review the listed permissions, then type `Start the kit`.

If it answers like a general chatbot instead of a security coach, the nudge prompt is in [browser-prompts/claude-code.md](browser-prompts/claude-code.md).

## 2. Codex CLI

Codex reads `AGENTS.md` automatically when you run it inside this folder. Install it from https://learn.chatgpt.com/docs/codex/cli, then paste the prompt in [browser-prompts/codex-cli.md](browser-prompts/codex-cli.md) once at the start of the session and type `Start the kit`.

## 3. Limited browser mode

This is ChatGPT, Claude in a browser, or any other chat window on a website. It cannot operate the folder you downloaded, it cannot save your progress locally, it cannot build final packages of files, and it cannot apply the tool limits this folder ships with. It can give you advice, analysis, drafts, and copy-ready checklists, including a phishing verdict on a message you paste. Nothing typed into a browser chat runs this kit.

Attach the single visible [Security Browser Kit](browser-prompts/security-browser-kit.md), then use the prompt in [browser-prompts/limited-browser-mode.md](browser-prompts/limited-browser-mode.md).

## 4. Do not have Claude Code or Codex yet?

An assistant you already have open can walk you through the install, one step at a time. The two install prompts are in [browser-prompts/install-the-assistant.md](browser-prompts/install-the-assistant.md).

## If something goes wrong

`docs/STUCK.md` has one next action for each of the common stumbles, including the command not being found and the assistant not being able to see the folder.
