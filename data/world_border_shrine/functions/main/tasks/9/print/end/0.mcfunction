#wait for system to stop printing
execute unless score printing wbs.vars matches 0 run return run schedule function world_border_shrine:main/tasks/9/print/end/0 1t replace
#reserve system printing
scoreboard players set printing wbs.vars 1
execute as @e[type=minecraft:interaction,tag=world_border_shrine] at @s as @a[distance=..10] run tellraw @s {"text":"Interesting. they can be condensed objects to give them seemingly magical effects. we will need more research on this later","color":"#9933ff"}
#open the system printing
scoreboard players set printing wbs.vars 0
