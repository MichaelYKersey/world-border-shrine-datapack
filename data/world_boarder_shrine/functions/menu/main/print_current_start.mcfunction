execute unless entity @e[distance=..10,type=minecraft:interaction,tag=world_boarder_shrine] run return run tellraw @s "get closer to the shrine to access the archive"
function world_boarder_shrine:primary/current/print/start