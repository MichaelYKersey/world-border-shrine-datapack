execute unless entity @e[distance=..10,type=minecraft:interaction,tag=world_boarder_shrine] run return run tellraw @s "get closer to the shrine to access the archive"
scoreboard players operation temp0 wbs.reg = main_current wbs.vars

scoreboard players add temp0 wbs.reg 1
execute if score temp0 wbs.reg <= main_last_queue wbs.vars run return 1
execute store result storage minecraft:world_boarder_shrine param.index int 1 run scoreboard players get temp0 wbs.reg
function world_boarder_shrine:main/index/print/details with storage minecraft:world_boarder_shrine param
function world_boarder_shrine:menu/main/print_queue_loop