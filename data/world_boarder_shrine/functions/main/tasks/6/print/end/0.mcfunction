#wait for system to stop printing
execute unless score printing wbs.vars matches 0 run return run schedule function world_border_shrine:main/tasks/6/print/end/0 1t replace
#reserve system printing
scoreboard players set printing wbs.vars 1
execute as @e[type=minecraft:interaction,tag=world_border_shrine] at @s as @a[distance=..10] run tellraw @s {"text":"Ok, this area should be secure from the fog but to expand our working area is going to take time and data.","color":"#9933ff"}
#open the system printing
scoreboard players set printing wbs.vars 0
