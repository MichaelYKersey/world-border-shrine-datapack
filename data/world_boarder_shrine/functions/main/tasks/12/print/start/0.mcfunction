#wait for system to stop printing
execute unless score printing wbs.vars matches 0 run return run schedule function world_boarder_shrine:main/tasks/12/print/start/0 1t replace
#reserve system printing
scoreboard players set printing wbs.vars 1
execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @a[distance=..10] run tellraw @s Let us take inspiration from the late Google, and make some maps! that will get enough data for weather manipulation.
#print details
execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @a[distance=..10] run function world_boarder_shrine:main/tasks/12/print/details
#open the system printing
scoreboard players set printing wbs.vars 0
