#an explicit task list for completion
execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @a[distance=..10] run tellraw @s ["",{"text":"You need to feed the shrine:\n•16 stone\n•32 dirt\n•1 iron block"}]