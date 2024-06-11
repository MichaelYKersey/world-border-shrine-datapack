#wait for system to stop printing
execute unless score printing wbs.vars matches 0 run return run schedule function world_boarder_shrine:main/tasks/6/print/end/0 1t replace
#reserve system printing
scoreboard players set printing wbs.vars 1
execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @a[distance=..10] run tellraw @s Ok, this area should be secure from the fog but to expand our working area is going to take time and data.
#open the system printing
scoreboard players set printing wbs.vars 0
