execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @a[distance=..10] run tellraw @s {"text":"Some drones will be call in soon for us to maintenance. We could also allocate some for your own use. Only issue is that we need a place to remotely operate them and maintain them.","color":"#9933ff"}
#print details
execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @a[distance=..10] run function world_boarder_shrine:main/tasks/8/print/details
#open the system printing
scoreboard players set printing wbs.vars 0
