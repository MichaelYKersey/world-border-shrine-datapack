#wait for system to stop printing
execute unless score printing wbs.vars matches 0 run return run schedule function world_border_shrine:main/tasks/8/print/start/0 1t replace
#reserve system printing
scoreboard players set printing wbs.vars 1
execute as @e[type=minecraft:interaction,tag=world_border_shrine] at @s as @a[distance=..10] run tellraw @s {"text":"Drones were used to gather your petrified bodies. But, now bodies are becoming scarce and a lower return on investment.","color":"#9933ff"}
schedule function world_border_shrine:main/tasks/8/print/start/1 3s replace