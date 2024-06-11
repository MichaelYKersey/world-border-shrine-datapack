#wait for system to stop printing
execute unless score printing wbs.vars matches 0 run return run schedule function world_boarder_shrine:main/tasks/10/print/end/0 1t replace
#reserve system printing
scoreboard players set printing wbs.vars 1
execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @a[distance=..10] run tellraw @s Interesting, a stable portal! The magic of this place is so intriguing. I'll process these data samples asap.
schedule function world_boarder_shrine:main/tasks/10/print/end/1 10s replace