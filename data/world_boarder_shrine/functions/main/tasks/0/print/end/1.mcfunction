execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @a[distance=..10] run tellraw @s {"text":"hello, you all might be wondering how you got here. The world has been filled with a toxic petrifying gas.","color":"#9933ff"}
schedule function world_boarder_shrine:main/tasks/0/print/end/2 3s replace