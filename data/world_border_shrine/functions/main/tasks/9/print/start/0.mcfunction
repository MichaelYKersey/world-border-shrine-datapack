#wait for system to stop printing
execute unless score printing wbs.vars matches 0 run return run schedule function world_border_shrine:main/tasks/9/print/start/0 1t replace
#reserve system printing
scoreboard players set printing wbs.vars 1
execute as @e[type=minecraft:interaction,tag=world_border_shrine] at @s as @a[distance=..10] run tellraw @s {"text":"I have been sensing some weird side effects from the fog. There are lots of green glowing orbs that seem to be absorbing into you.","color":"#9933ff"}
schedule function world_border_shrine:main/tasks/9/print/start/1 3s replace