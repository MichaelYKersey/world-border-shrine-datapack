#wait for system to stop printing
execute unless score printing wbs.vars matches 0 run return run schedule function world_boarder_shrine:primary/templates/item_drain/print/start/0 1t replace
#reserve system printing
scoreboard players set printing wbs.vars 1

execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @a[distance=..10] run tellraw @s "thanks for testing my feeding system"

#put below command in last funciton in the sequence, it un reserves the system printing
scoreboard players set printing wbs.vars 0