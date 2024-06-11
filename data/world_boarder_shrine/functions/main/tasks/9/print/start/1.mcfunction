execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @a[distance=..10] run tellraw @s I'm not sure if it is harmful to you or not but I think we can extract it for study using lapiz.
#print details
execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @a[distance=..10] run function world_boarder_shrine:main/tasks/9/print/details
#open the system printing
scoreboard players set printing wbs.vars 0
