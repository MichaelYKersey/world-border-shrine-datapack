#wait for system to stop printing
execute unless score printing wbs.vars matches 0 run return run schedule function world_border_shrine:main/tasks/10/print/start/0 1t replace
#reserve system printing
scoreboard players set printing wbs.vars 1
execute as @e[type=minecraft:interaction,tag=world_border_shrine] at @s as @a[distance=..10] run tellraw @s {"text":"A while ago the drones collected some samples from a ruin to the NORTH. I have concluded these blocks don't match the other geological samples.","color":"#9933ff"}
schedule function world_border_shrine:main/tasks/10/print/start/1 3s replace