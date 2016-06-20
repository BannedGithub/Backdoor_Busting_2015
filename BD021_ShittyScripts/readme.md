```
ShittyScripts backdoor (clientside)

Discovered @ 20.06.16

Clientside backdoor in the workshop addon "ShittyScripts", a GMod cheat.
http://steamcommunity.com/sharedfiles/filedetails/?id=550806670

Lines 1510 - 1548 in "sscripts.lua" are the backdoor. (snipped the rest of the cheat)
Decoded in "ss_backdoor.lua"

It reports:
. Users's SteamID
. User's IP address
. IP of the current connected GMod server

To: "gmod-rce-senator.c9users.io/api.php"
Which can optionally send back code to be run on the client via RunString.

Sidenote:
Over the past 2 weeks, large bursts of users have been joining the UH server all
in one go, all of whom had ShittyScripts, and got banned.
Was it because of this backdoor possibly?

Protection:
. Don't cheat
```
