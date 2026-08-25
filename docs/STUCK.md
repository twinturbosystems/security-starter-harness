# Stuck

Find the line that matches what you are seeing. Each one gives you one thing to do next, not a list. Do that one thing, then go back to typing `Start the kit`.

If money has already moved, or someone is threatening you, stop reading this page. Call your bank's fraud line first, then come back.

## The command was not found

You typed `Start the kit` or `/lock-down` and got an error, or nothing useful came back.

Do this: type `Start the kit` as three plain words, with no slash, and press Enter. If that still does nothing, the assistant has not read this folder, so go to the next entry.

## The assistant cannot see the folder

It answers like a general chatbot, or it says it cannot find `README.md`, or it asks you to paste the files.

Do this: close the assistant, open a terminal in the unzipped folder itself, not in the folder above it, and start the assistant again from there. On Windows, right-click inside the unzipped folder and choose Open in Terminal, then type `claude`. On a Mac, right-click the folder in Finder, choose New Terminal at Folder, then type `claude`.

## A trust or permission prompt appeared

A question came up asking whether you trust the files in this folder, or whether to allow writing a checklist.

Do this: choose yes. This is the folder you just downloaded and unzipped yourself. The trust question appears once per folder, and until you answer it the folder's own tool limits in `.claude/settings.json` are not applied either.

## The wrong instructions are being used

The replies sound like a different job entirely, or it is offering to do something this kit says it will never do.

Do this: start a fresh conversation in the same folder and type `Start the kit`. It will tell you which kit it is reading. If it ever asks you for a password, a recovery code, or a one-time login code, do not give it one; that is not this kit, and `docs/SAFETY.md` says so in plain words.

## The file was not saved

You expected progress in `checklists/` or a plan in `plans/` and cannot find it.

Do this: ask it, in plain words, "What is the full path of the file you just wrote?" Then open that path yourself. If it never wrote anything, ask it to save your progress now and to confirm the path afterwards.

## I am on my phone

You can read this page on a phone, but the kit cannot run there. A phone has no way to open the downloaded folder in an assistant.

Do this: save or bookmark this page now, then open it again on a Mac, Windows, or Linux computer and start from the download link.

## I want to start over without deleting anything

Something got tangled and you would rather have the original files back.

Do this: copy your own work out of the folder first, which for this kit means everything in `checklists/` and everything in `plans/`, then download the kit again from the link in the README and unzip it next to the old one. Nothing forces you to delete the old folder; you can leave it where it is and move your two folders into the fresh one.

## Still stuck

Describe what you see, in your own words, to the assistant inside the folder. It will work out which state you are in and give you one next thing to do.
