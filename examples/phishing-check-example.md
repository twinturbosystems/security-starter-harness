# Example: a phishing check, start to finish

Everything below is invented. Northbridge Savings is not a real bank, the people are not real, and the addresses use the reserved `.example` ending that no real site can own. The point is the shape of the check, so you know what to expect when you run `/phishing-check` on a real message.

## The message the person pasted

```
From: Northbridge Savings Security <alerts@northbridge-savings-verify.example>
To: (the person's address)
Subject: Action required: unusual sign-in on your account

Dear Valued Customer,

We detected a sign-in to your Northbridge Savings account from a new device on
Tuesday at 03:12. If this was not you, your account will be restricted within
24 hours unless you confirm your identity.

Confirm now: https://northbridge-savings-verify.example/secure/confirm?id=48213

For your protection, please have your debit card and online banking password
ready. Do not reply to this email.

Northbridge Savings Security Team
```

The person also noted: they do bank with Northbridge Savings, the bank's real website is northbridgesavings.example, and they do not remember signing in at 3 a.m.

## The verdict

Verdict: Likely phishing.

Confidence: High. The sender domain is a lookalike, the link points at that same lookalike, and the message asks for a card and a password on a 24-hour deadline. What would change this: nothing in the message itself; only confirmation from the bank through an independent channel.

Signals:

- The sender domain is northbridge-savings-verify.example. The bank's real domain is northbridgesavings.example. Extra words and a hyphen were added to look official. Banks send from their own domain, not from a "verify" lookalike.
- The link goes to the same lookalike domain. A real alert would point to the bank's real site, and most banks tell you to open the app or type the address yourself rather than click.
- It asks you to have your debit card and online banking password ready. A bank never needs your password to confirm your identity; they already have your account.
- A 24-hour deadline with a threat of restriction. Pressure is how these messages get you to act before you think.
- "Dear Valued Customer" instead of your name. Your bank knows who you are.
- "Do not reply to this email" removes the easy way to check with a person.

What to do now:

1. Do not click the link and do not enter anything. Nothing in your account changes if you ignore this message.
2. In your mail app, use Report phishing or Report junk, then delete the message.
3. If you want peace of mind about the 3 a.m. sign-in, check it through the independent channel below, not through the email.

Do not click: the "Confirm now" link (https://northbridge-savings-verify.example/secure/confirm?id=48213). There is no attachment in this message.

Verify independently: open the bank's app on your phone, or type northbridgesavings.example into the browser yourself, and look at recent sign-ins or messages there. Or call the number on the back of your card. If there is a real problem, it will be visible inside the real app or told to you by the real bank. Never use the number or link in the email.

## If you already clicked

You are not in trouble and this is fixable. From a device that did not open the link if you have one, sign in to the real bank site or app and change the password. Turn on 2FA (a second check at login, usually a code from an app on your phone) if it is off. Call the bank on the number on the back of your card and tell them what happened; they can watch the account. Then run `/im-hacked` to walk through the rest, including checking your email account for forwarding rules.
