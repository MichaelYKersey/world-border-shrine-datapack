#wait for system to stop printing
execute unless score printing wbs.vars matches 0 run return run schedule function world_boarder_shrine:main/tasks/3/print/start/0 1t replace
#reserve system printing
scoreboard players set printing wbs.vars 1
execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @a[distance=..10] run tellraw @s I'm going to need samples of the surrounding area to run some tests.
#print details
execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @a[distance=..10] run function world_boarder_shrine:main/tasks/3/print/details
#open the system printing
scoreboard players set printing wbs.vars 0
