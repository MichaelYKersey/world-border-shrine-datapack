execute at @s unless entity @e[distance=..10,type=minecraft:interaction,tag=world_border_shrine] run return run tellraw @s {"text":"get closer to the shrine to access the archive","color":"red"}
scoreboard players operation temp0 wbs.reg = main_current wbs.vars
scoreboard players remove temp0 wbs.reg 1
execute store result storage minecraft:world_border_shrine param.index int 1 run scoreboard players get temp0 wbs.reg
function world_border_shrine:main/index/print/end with storage minecraft:world_border_shrine param