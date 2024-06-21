execute as @e[type=minecraft:interaction,tag=world_border_shrine] at @s as @a[distance=..10] run tellraw @s {"text":"I have released some chemicals to depetrify you and clear out the fog. But those won't last forever so we better get moving to get a permanent fog clearing station","color":"#9933ff"}
#open the system printing
scoreboard players set printing wbs.vars 0
