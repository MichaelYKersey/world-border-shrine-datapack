#wait for system to stop printing
execute unless score printing wbs.vars matches 0 run return run schedule function world_boarder_shrine:side/tasks/0/print/end/0 1t replace
#reserve system printing
scoreboard players set printing wbs.vars 1
execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @a[distance=..10] run tellraw @s strange there is such diversity of fish and objects distributed uniformly through the surrounding waters. I'll analysis the samples you brought.
#open the system printing
scoreboard players set printing wbs.vars 0
