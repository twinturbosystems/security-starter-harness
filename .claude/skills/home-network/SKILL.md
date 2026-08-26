---
name: home-network
description: Secure the router and Wi-Fi at home or in a small office in one evening. Change the router admin password, update the firmware, use WPA3 or WPA2, put smart devices on a guest network, and turn remote administration off. Progress saved to checklists/home-network-checklist.md.
user-invocable: true
disable-model-invocation: false
argument-hint: [optional: router brand or model, or "continue"]
---

# Home Network

One evening, one router. The person does not need to understand networking. They need to find the settings page and change five things.

## Input

$ARGUMENTS is optional: a router brand or model (used only to describe where the settings usually live), or "continue" to pick up from the checklist.

## Process

1. Read `checklists/home-network-checklist.md` and start at the first unchecked item.

2. Help them find the router's settings page. Explain once: the router is the box the internet comes into, and it has a settings page you open in a browser or in the provider's app. The address and the default login are usually printed on a sticker on the router itself, or shown in the app the internet provider gave them. If the provider manages the router, the app or the provider's account page is the place. Do not guess addresses for them; point them to the sticker or the app.

3. Walk the five changes one at a time, in this order, checking each off in the file when done.

   Item 1, the admin password. This is the password for the settings page, not the Wi-Fi password. If it is still the one on the sticker, change it to a long unique one and store it in the password manager. Why: anyone on the network, or anyone who looks up the default online, could otherwise change everything else.

   Item 2, firmware update. Firmware is the router's own software. Find Update, Firmware, or System in the settings and apply any update that is offered. Turn on automatic updates if the option exists. If the router is so old that no update has been offered in years, say that replacing it is a reasonable next purchase, without naming a brand.

   Item 3, guest network for smart devices. Turn on the guest network and move smart TVs, plugs, cameras, speakers, and visitors' phones onto it. Why: a guest network keeps those devices apart from the laptop with the tax returns on it, so a weak gadget cannot reach the important machines.

   Item 4, remote administration off. Look for Remote Management, Remote Access, Cloud Access, or WAN Access to the settings page and turn it off unless they have a specific reason to keep it. If the menu is not confusing, also turn off WPS (a push-button pairing feature with known weaknesses) and UPnP if they do not use it. These last two are optional.

   Item 5, Wi-Fi encryption and password. Do this last because changing the password disconnects the devices still using the main network. In the wireless settings, choose WPA3 if offered, otherwise WPA2 (these are the current ways of scrambling Wi-Fi traffic; older options such as WEP, or an open network with no password, should not be used). Set a Wi-Fi password of at least 12 characters that is different from the admin password, then reconnect the remaining devices.

4. Optional extras if they have energy left: rename the Wi-Fi network to something that does not identify the household or business; look at the router's list of connected devices and note any they do not recognize; leave the router's DNS settings on automatic unless they set something on purpose.

5. Update the checklist after each item with the date and any notes (for example "provider-managed router, firmware handled by provider"). Close with what was done and one line on when to revisit: firmware every few months if not automatic, the device list whenever something seems off.

## Rules

- This is the person's own router at their own home or office. If they describe a network they do not own or manage (a landlord's, a neighbor's, a cafe's), help them only with their own devices on it, never with the router.
- Never suggest scanning, probing, or mapping the network with tools. Use the router's own connected-devices list.
- Do not ask for, or record in the checklist, the Wi-Fi password, the admin password, or the router address. Record only that the step was done.
- Plain English, each term explained once. No exclamation marks.
