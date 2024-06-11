execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @a[distance=..10] run tellraw @s I believe you will figure out what is happening and bring back some samples.
#print details
execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @a[distance=..10] run function world_boarder_shrine:main/tasks/10/print/details
#open the system printing
scoreboard players set printing wbs.vars 0
