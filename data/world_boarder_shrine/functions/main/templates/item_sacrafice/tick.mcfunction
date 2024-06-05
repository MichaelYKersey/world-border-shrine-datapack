#refresh ticking
schedule function world_boarder_shrine:main/templates/item_sacrafice/tick 1t replace

#update item channels
execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @e[distance=..3,type=minecraft:item] run function world_boarder_shrine:main/templates/item_sacrafice/item_drain

#run again on failed conditions (check if all the items reusest reduced to 0)
execute unless score main.-1.stone wbs.item_drain matches 0 run return 1
execute unless score main.-1.dirt wbs.item_drain matches 0 run return 1
execute unless score main.-1.iron_block wbs.item_drain matches 0 run return 1
#extend to prefrence

#once all conditions pass call end function
function world_boarder_shrine:main/templates/item_sacrafice/end