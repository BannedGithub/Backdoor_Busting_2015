```
Pon bootstrap backdoor / Server takeover

Discovered @ 28.05.15

Hidden in the "pon2" notation codec. See the various files.

Obfuscates the HTTP address in the code.
Runs on server startup.
Fetches various payloads and executes them on the server.
Creates an SQL table on the server called "metaCache2"
Complex API-like handshake system.

Communicates with (Do not visit):
http://192.99.145.197/api/
http://208.146.44.146/tkr/


On the infected server:
. Attempts to connect clients  to "74.91.117.146:27015" (Do not join)
. Sets up various net messages to send/receive code on clients.
. Most likely does a lot more. Not checked further.



Protection:
. Read and understand all code you run on your servers.
. Override RunString/RunStringEx/CompileString to prevent running remote HTTP payloads.
```
