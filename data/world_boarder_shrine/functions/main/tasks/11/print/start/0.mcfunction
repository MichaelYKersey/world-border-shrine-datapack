#wait for system to stop printing
execute unless score printing wbs.vars matches 0 run return run schedule function world_border_shrine:main/tasks/11/print/start/0 1t replace
#reserve system printing
scoreboard players set printing wbs.vars 1
execute as @e[type=minecraft:interaction,tag=world_border_shrine] at @s as @a[distance=..10] run tellraw @s {"text":"According to the samples, there are small chunks of highly heat resistant metal within the ground's composition. If we could get a larger chunk it could greatly increase our technology efficiency.","color":"#9933ff"}
#print details
execute as @e[type=minecraft:interaction,tag=world_border_shrine] at @s as @a[distance=..10] run function world_border_shrine:main/tasks/11/print/details
#open the system printing
scoreboard players set printing wbs.vars 0
