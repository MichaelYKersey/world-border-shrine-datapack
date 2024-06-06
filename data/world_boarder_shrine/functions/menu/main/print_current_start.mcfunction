execute if score main_current wbs.vars > main_last_queued wbs.vars run tellraw @s "archive entry is inaccessible"
execute at @s unless entity @e[distance=..10,type=minecraft:interaction,tag=world_boarder_shrine] run return run tellraw @s "get closer to the shrine to access the archive"
function world_boarder_shrine:main/current/print/start