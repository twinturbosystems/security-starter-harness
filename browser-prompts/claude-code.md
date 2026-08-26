# Claude Code

You should not need a prompt at all. Claude Code reads `CLAUDE.md` and the `.claude/skills` folder by itself. The project's deny rules apply before trust. The two preapproved output paths apply after you accept the trust prompt in step 3.

Claude Code requires a Pro, Max, Team, Enterprise, or Console account. The free Claude.ai plan does not include it. Use the current native installer from https://code.claude.com/docs/en/installation.

1. Open a terminal in the unzipped folder. A terminal is the plain text window where you type commands to your computer.
2. Type `claude` and press Enter.
3. Confirm that the trust prompt names the folder you downloaded, review the listed permissions, and choose yes if they match. It normally appears once per folder.
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
