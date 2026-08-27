---
name: small-biz-plan
description: Write a concise security action plan for a business with fewer than 20 people. Covers identity, devices, backups, email, payment fraud, and incident contacts in no more than 650 words. Written to plans/security-plan.md.
user-invocable: true
disable-model-invocation: false
argument-hint: [optional: what the business does and roughly how many people]
---

# Small Business Plan

Produce a plan the owner can read in five minutes and act on this month. Plain words. Every item has an owner and a "done when". The saved plan must be no more than 650 words, including its title and review date.

## Output contract

Treat every requirement below as pass or fail. Do not report completion until the saved file passes all of them.

- Save only to `plans/security-plan.md`.
- Before writing, read `.claude/skills/small-biz-plan/security-plan.template.md`. Copy its complete structure into the output file, then replace its bracketed placeholders and dates. Never rename, reorder, remove, or add a level-2 heading.
- Use these six security headings exactly, in this order: `## Identity and 2FA`; `## Devices and updates`; `## Backups with a restore test`; `## Email security in plain words`; `## Vendor and payment fraud controls`; `## Incident contact card`. Do not replace them with timeline or scope sections.
- Put exactly one compact action item under each security heading. Each item must contain an `Owner:` field with a role and a `Done when:` field with a measurable condition.
- Put `Plan date: YYYY-MM-DD` near the title. Put `Review date: YYYY-MM-DD` at the end, exactly three calendar months after the plan date.
- After the six security sections, use `## This month` followed by a numbered list from 1 through 5. Include exactly five actions, each written as one sentence on one line, with no sub-bullets.
- Keep the complete file, including title and dates, at or below 650 words.
- Use no product, company, or provider names. Use category names only. Make no claim that the plan meets, satisfies, certifies, or complies with a standard, framework, law, or regulation.

## Input

$ARGUMENTS is optional. If the business is not described, ask five short questions before writing, and stop there: what the business does; how many people, and whether any are contractors; which email and file service they use (their own domain or a free address); whether they take card payments or send invoices; and whether they hold customer records of any kind. Do not ask for account details, passwords, or vendor logins.

## Process

1. Read `.claude/skills/small-biz-plan/security-plan.template.md`. If `plans/security-plan.md` already exists, read it and treat this as a revision: keep the owner's content edits, remap them into the template's literal structure, update the dated fields, and change only what the conversation changed.

2. Copy the complete template to `plans/security-plan.md`, then replace its bracketed placeholders and dates with the plan content. Do not compose any level-2 heading from memory. Use one compact action item per security section. Every item gets: what, why in one clause, `Owner:` with a role, and `Done when:` with a measurable condition. Keep the complete file at or below 650 words. If detail would push it over the cap, keep the action, owner, and done-when condition and remove background explanation first.

   Section 1, Identity and 2FA. Every person has their own login; no shared accounts and no shared password sheet. 2FA (a second check at login, ideally an authenticator app) on email, the file service, the bank, payroll, and anything customer-facing. A password manager for the team, with a shared vault for the few credentials that truly must be shared. Offboarding: when someone leaves, their access is removed the same day and any shared passwords they knew are changed.

   Section 2, Devices and updates. Automatic updates on for every computer and phone used for work. Disk encryption on (usually one switch in the settings of a modern computer or phone). Screen lock on. Work accounts not signed in on family or shared devices. Old devices wiped before they are sold or given away.

   Section 3, Backups with a restore test. Say plainly what a backup is: a second copy, kept somewhere the first copy's problems cannot reach. The cloud file service's version history is one layer; a separate backup (a second cloud backup, or an encrypted drive kept offline) is the real one. The restore test is the point: once a quarter, pick a file and a folder, restore them from the backup, and confirm they open. A backup that has never been restored is a hope, not a backup.

   Section 4, Email security in plain words. Three settings on the business domain tell other mail systems which servers may send mail as the business and what to do with fakes. SPF is a list of the servers allowed to send for the domain. DKIM is a signature that proves a message came from an allowed server and was not altered on the way. DMARC is the policy that says what to do when a message fails the first two, and where to send reports. They are set up once, in the domain's DNS settings, usually by following the email provider's own guide. The plan names who will do that and by when, and says to start DMARC in monitor mode before moving to quarantine or reject. Add two habits: one anti-phishing conversation per quarter using a real example the team received, and a standing rule that any request to change payment details is verified by phone on a number already on file.

   Section 5, Vendor and payment fraud controls. Two-person approval, or a callback to a known number, for any new payee, any change to bank details, and any payment above an amount the owner sets. Invoices are checked against a known vendor list. Card details are never sent by email or chat. Payroll and bank logins have 2FA and are not shared.

   Section 6, Incident contact card. Who to call, in order, with numbers stored somewhere reachable when email is down: the owner; the bank fraud line; the email and file service support; the IT person or firm if one exists; the lawyer; the cyber insurance carrier if there is a policy; and the national cybercrime reporting site for the country. Add one line: "If you think something is wrong, say so immediately. Nobody gets in trouble for a false alarm."

3. After the six security sections, add the exact `## This month` heading and five numbered actions that are cheapest and highest impact for this particular business. Each action must be one sentence on one line. End with a review date exactly three calendar months after the plan date.

4. Write the file to `plans/security-plan.md` with a dated header. Read the complete saved file back and check every Output contract item. If any item fails, revise the same file and check again before responding. Then tell the owner where it is and read back the "this month" list.

## Rules

- No compliance claims. The plan follows the spirit of widely used security basics; do not say it meets, satisfies, or certifies any standard, framework, or regulation.
- No vendor names. Category names only: a password manager, a cloud file service, an authenticator app, a cyber insurance carrier.
- No fabricated numbers, costs, or statistics.
- The complete saved file is no more than 650 words. Check the length before writing. If it is over, shorten it before saving.
- Plain English, each term explained once, no exclamation marks, no bold inside bullets.
- If the owner describes an active incident while planning, pause the plan and switch to `/im-hacked`.
