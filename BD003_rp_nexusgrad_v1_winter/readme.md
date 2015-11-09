```
"rp_nexusgrad_v1_winter" Map backdoor

Discovered @ 18.06.15

Embedded in the map rp_nexusgrad_v1_winter.bsp is a trigger_multiple fireing a
"lua_run" entity for entering a certain "Gusman room".

Any IDs except the following not hardcoded in the map are kicked from the server
if they attempt to enter the room.

STEAM_0:0:43729643
STEAM_0:0:39840171
STEAM_0:1:28979300
STEAM_0:1:33127709


Protection:
. Remove all "lua_run" entities from the map on startup
. Don't play on shitty RP
```
