#wait for system to stop printing
execute unless score printing wbs.vars matches 0 run return run schedule function world_border_shrine:main/tasks/4/print/start/0 1t replace
#reserve system printing
scoreboard players set printing wbs.vars 1
execute as @e[type=minecraft:interaction,tag=world_border_shrine] at @s as @a[distance=..10] run tellraw @s {"text":"I need higher grade materials to upgrade my processing speed.","color":"#9933ff"}
#print details
execute as @e[type=minecraft:interaction,tag=world_border_shrine] at @s as @a[distance=..10] run function world_border_shrine:main/tasks/4/print/details
#open the system printing
scoreboard players set printing wbs.vars 0
