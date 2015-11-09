```
"gpwn" / "pwn" backdoor.


Discovered @ 08.11.15 on Qwifo (STEAM_0:1:67163102) in "winsys.so"


The lua files are generated when requested from the server, and are obfuscated.
De-obfusctor in "tft.lua"

Both scripts connect to gpwn.zapto.org:1337/ (Do not visit) to do various things.
The files contain the IP of whatever requested them embedded as a local variable.

They seem to do various overrides and removal of hooks/self checking.

See "1_deobf.lua" for the code ran serverside, and "raw_deobf.lua" for the code the
binary module fetches and runs in its seperate environment.
Module's code write stuff to "C:/tid.txt"

Also apears to run via a Wire E2 chip by exploiting owner():pp("bloom")
See "thread.lua"



Not checked further, it looks quite advanced.
Possibly related to the "pwn" backdoor, see other folders here


Protection:
. Read and understand all code you run on your servers.
. Override RunString/RunStringEx/CompileString to prevent running remote HTTP payloads.
```