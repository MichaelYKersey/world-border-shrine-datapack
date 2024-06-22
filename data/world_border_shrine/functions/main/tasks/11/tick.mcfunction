#refresh ticking
schedule function world_border_shrine:main/tasks/11/tick 1t replace
#update item channels
execute as @e[type=minecraft:interaction,tag=world_border_shrine] at @s as @e[distance=..3,type=minecraft:item] run function world_border_shrine:main/tasks/11/item_drain

#run again on failed conditions
execute unless score main.11.netherite_ingot wbs.item_drain matches 0 run return 1
#once all conditions pass call end function
function world_border_shrine:main/tasks/11/end