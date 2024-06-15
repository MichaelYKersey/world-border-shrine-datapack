#refresh ticking
schedule function world_boarder_shrine:main/tasks/10/tick 1t replace
#update item channels
execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @e[distance=..3,type=minecraft:item] run function world_boarder_shrine:main/tasks/10/item_drain

#run again on failed conditions
execute unless score main.10.netherrack wbs.item_drain matches 0 run return 1
execute unless score main.10.quartz wbs.item_drain matches 0 run return 1
execute unless score main.10.soul_sand wbs.item_drain matches 0 run return 1
#once all conditions pass call end function
function world_boarder_shrine:main/tasks/10/end