#wait for system to stop printing
execute unless score printing wbs.vars matches 0 run return run schedule function world_boarder_shrine:primary/templates/item_drain/print/progress 1t replace
#reserve system printing
scoreboard players set printing wbs.vars 1

#print out itmes left to feed
execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @a[distance=..10] run tellraw @s ["",{"text":"Items Left:","bold":true},{"translate":""},"\n","•",{"score":{"name":"0","objective":"wbs.item_drain"}}," stone","\n","•",{"score":{"name":"1","objective":"wbs.item_drain"}}," dirt","\n","•",{"score":{"name":"2","objective":"wbs.item_drain"}}," iron blocks"]

#put below command in last funciton in the sequence, it un reserves the system printing
scoreboard players set printing wbs.vars 0