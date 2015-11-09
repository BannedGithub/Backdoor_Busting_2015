```
ThirdPersonController backdoor / Server takeover

Discovered @ 07.08.15


"lua/autorun/sserver/tp_server.lua" waits a few miliseconds after starting the server,
then downloads & executes code from
"thisisreallylegit.appspot.com/autocontentupdater" (see autocontentupdater.lua)

This adds concommands to do all the usual: Kick, Give owner, disable logging,
teleport, wipe bans, steal server.cfg etc. It also has commands to display fake
"Is cheating" warnings.

It reports everything about the server, including possible RCON pass, to its site
when it starts.

"3rd_tft.lua" fills his log with bullshit.


Protection:
. Read and understand all code you run on your servers.
. Override RunString/RunStringEx/CompileString to prevent running remote HTTP payloads.
```
