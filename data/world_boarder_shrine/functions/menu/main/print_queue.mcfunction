execute unless entity @e[distance=..10,type=minecraft:interaction,tag=world_boarder_shrine] run return run tellraw @s {"text":"get closer to the shrine to access the archive","color":"red"}
scoreboard players operation temp0 wbs.reg = main_current wbs.vars

function world_boarder_shrine:menu/main/print_queue_loop