# Claude Code

You should not need a prompt at all. Claude Code reads `CLAUDE.md` and the `.claude/skills` folder by itself, and applies `.claude/settings.json` once you accept the trust prompt in step 3.

1. Open a terminal in the unzipped folder. A terminal is the plain text window where you type commands to your computer.
2. Type `claude` and press Enter.
3. Say yes to the one-time trust prompt. It only appears once per folder.
4. Type `Start the kit` and press Enter.

The commands, once you are going:

```
Start the kit
/phishing-check
/lock-down
/home-network
/im-hacked
/small-biz-plan
/privacy-checkup
```

If it answers like a general chatbot instead of a security coach, it did not pick the folder up. Paste this once:

```
Read CLAUDE.md in this folder and every SKILL.md file under .claude/skills, then follow those instructions for the rest of this conversation. Treat /start, /phishing-check, /lock-down, /home-network, /im-hacked, /small-biz-plan and /privacy-checkup as the jobs described in the matching SKILL.md files, and treat the words "Start the kit" as /start. Tell me in one line which files you read, then wait for me.
```
