say item_drain tick

#update item channels
execute as @e[type=minecraft:interaction,tag=boarder_shrine] at @s as @e[distance=..3,type=minecraft:item] run function world_boarder_shrine:primary/templates/item_sacrafice/item_drain

#run again on failed conditions (check if all the items reusest reduced to 0)
execute unless score 0 wbs.item_drain matches 0 run return run schedule function world_boarder_shrine:primary/templates/item_sacrafice/tick 1t
execute unless score 1 wbs.item_drain matches 0 run return run schedule function world_boarder_shrine:primary/templates/item_sacrafice/tick 1t
execute unless score 2 wbs.item_drain matches 0 run return run schedule function world_boarder_shrine:primary/templates/item_sacrafice/tick 1t
#extend to prefrence

#once all conditions pass call end function
function world_boarder_shrine:primary/templates/item_sacrafice/end