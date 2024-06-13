#wait for system to stop printing
execute unless score printing wbs.vars matches 0 run return run schedule function world_boarder_shrine:side/tasks/0/print/start/0 1t replace
#reserve system printing
scoreboard players set printing wbs.vars 1
execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @a[distance=..10] run tellraw @s It seems that what you see in the water and what you can fish out if it are different, bring me samples of what you can pull out of nearby water with a fishing rod
#print details
execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @a[distance=..10] run function world_boarder_shrine:side/tasks/0/print/details
#open the system printing
scoreboard players set printing wbs.vars 0
