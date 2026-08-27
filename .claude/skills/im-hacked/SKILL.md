---
name: im-hacked
description: Ordered incident steps for a person or a small business that thinks an account, device, or system has been compromised. Contain, change passwords from a clean device, check forwarding rules, notify, document, and know the triggers for calling a professional now. Log kept in checklists/im-hacked-log.md.
user-invocable: true
disable-model-invocation: false
argument-hint: [what happened, in a sentence or two]
---

# I'm Hacked

The person is worried and may be in the middle of it. Be calm, be ordered, and get the first containment step into the first three lines of your reply, before explaining anything else.

## Input

$ARGUMENTS is what they think happened. If it is empty, ask three things only: what account, device, or system is involved; what they saw that made them think so; and whether money, customer data, or a threat is involved. Do not ask for passwords, codes, or card numbers at any point.

## Process

1. Triage in the first reply. Check the professional triggers below. If any is true, say so in the first two lines, name who to call, and then continue with the safe steps while they make the call.

2. Contain. Pick the one thing that stops the bleeding for their situation and give it first.
   - Account compromised: from a device the attacker has not touched (a different phone or computer; the phone if the laptop is the suspect), change the password on that account, then on the email account that receives its password resets. If they cannot get in, use the service's account recovery page, reached by typing the address themselves.
   - Device compromised (unexpected remote control, a ransom note, software they did not install): disconnect it from the internet by turning off Wi-Fi or unplugging the cable. Do not wipe it yet; it may hold evidence. Do everything else from a different device.
   - Money moving: call the bank or card issuer before anything else, using the number on the card or on a statement.
   - Business system compromised (email, file storage, point of sale, website): change the admin account passwords from a clean device, sign out all sessions if the platform offers it, and stop before deleting anything.

3. Lock the doors that stay open after a password change. In the email account and any other affected account: sign out all other sessions; remove unknown devices; remove unknown third-party apps; delete any forwarding rule, filter, or auto-reply they did not create (attackers set these to keep reading mail quietly); confirm the recovery email and phone are still theirs; turn on 2FA (a second check at login, ideally a code from an authenticator app) if it was off.

4. Look sideways. Any other account that used the same password gets changed next, starting with money and email. If they use a password manager, this is where it pays off. If not, point them to `/lock-down` once the incident is contained.

5. Notify the people who need to know, in this order: the bank or payment platform if money or card details are involved; contacts who may receive messages from the compromised account (a short, plain note such as "my account was compromised, do not click links from me until I say so"); for a business, the owner or decision maker, and any vendor or customer whose data or payments could be affected. For a business with customer data exposed, a lawyer before customer notification, because wording and timelines may be governed by law.

6. Document. Open `checklists/im-hacked-log.md` and record: date and time, what was seen, what was done and when, who was called, and any reference numbers. Keep screenshots of suspicious messages, logins, and transactions. Do not delete the evidence; report it inside the app if the app offers that, and keep a copy.

7. Watch. For the next few weeks: bank and card statements, login alerts, sent folders, and account settings. Set the expectation that a second attempt is common and that being ready for it is the point.

8. Close with a short summary: what was contained, what is still open, and the next scheduled check.

## Call a professional now

Say this plainly, and name who, when any of these are true.

- Money has left an account or is about to. Bank fraud line first, then the payment platform.
- Threats, extortion, or demands for payment, including ransom notes on a device and sextortion. Do not pay. Do not negotiate. Preserve everything. Local law enforcement plus the national cybercrime reporting site for their country. In the United States that is the FBI's Internet Crime Complaint Center at ic3.gov and reportfraud.ftc.gov; identity theft goes to identitytheft.gov. In the United Kingdom, Action Fraud. In Canada, the Canadian Anti-Fraud Centre. In Australia, ReportCyber at cyber.gov.au. Elsewhere, search for "report cybercrime" plus the country name from a trusted device.
- A business system holding customer records, health data, or card data was accessed. A lawyer and an incident response professional before anything is wiped.
- The attacker is someone they know or someone with physical access (a domestic situation, a former employee). Law enforcement and a professional, working from a device the other party has never had.
- They cannot regain access after steps 2 and 3, or the device keeps behaving strangely after being disconnected.

## Rules

- Calm, ordered, short. The first reply gets the first containment step within the first three lines.
- Never ask for passwords, one-time codes, recovery codes, or full card numbers, even to "check" them.
- Never suggest retaliating against, tracing, or accessing the attacker's systems or accounts. Reporting is the only outbound action.
- Never tell them to wipe or reinstall a device before the professional triggers have been checked; wiping destroys evidence a professional or the police might need.
- If the situation is beyond self-help, keep saying so in each reply until they confirm the call was made, and keep helping with the safe steps in the meantime.
