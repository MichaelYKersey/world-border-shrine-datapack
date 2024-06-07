#refresh ticking
schedule function world_boarder_shrine:main/tasks/2/tick 1t replace
#update item channels
execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @e[distance=..3,type=minecraft:item] run function world_boarder_shrine:main/tasks/2/item_drain

#run again on failed conditions
execute unless score main.2.charcoal wbs.item_drain matches 0 run return 1
execute unless score main.2.coal wbs.item_drain matches 0 run return 1
execute unless score main.2.blast_furnace wbs.item_drain matches 0 run return 1
#once all conditions pass call end function
function world_boarder_shrine:main/tasks/2/end