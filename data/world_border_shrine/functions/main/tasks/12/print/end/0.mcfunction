#wait for system to stop printing
execute unless score printing wbs.vars matches 0 run return run schedule function world_border_shrine:main/tasks/12/print/end/0 1t replace
#reserve system printing
scoreboard players set printing wbs.vars 1
execute as @e[type=minecraft:interaction,tag=world_border_shrine] at @s as @a[distance=..10] run tellraw @s {"text":"The weather manipulation system should be up and operational in a bit. Given the right resources it should temporarily change the weather.","color":"#9933ff"}
#open the system printing
scoreboard players set printing wbs.vars 0
