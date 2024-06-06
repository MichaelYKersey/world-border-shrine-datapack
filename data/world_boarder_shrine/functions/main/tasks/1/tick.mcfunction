#refresh ticking
schedule function world_boarder_shrine:main/tasks/1/tick 1t replace
#run again on failed conditions
scoreboard players set temp0 wbs.reg 0
execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @a[distance=..5] if predicate world_boarder_shrine:advancements/minecraft/story/root run scoreboard players set temp0 wbs.reg 1
execute unless score temp0 wbs.reg matches 1 run return 1
#once all conditions pass call end function
function world_boarder_shrine:main/tasks/1/end