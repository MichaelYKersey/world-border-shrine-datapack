execute if score main_current wbs.vars > main_last_queued wbs.vars run tellraw @s {"text":"archive entry is inaccessible","color":"red"}
execute at @s unless entity @e[distance=..10,type=minecraft:interaction,tag=world_boarder_shrine] run return run tellraw @s {"text":"get closer to the shrine to access the archive","color":"red"}
function world_boarder_shrine:main/current/print/start