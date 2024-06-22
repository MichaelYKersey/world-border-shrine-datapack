#refresh ticking
schedule function world_border_shrine:side/tasks/0/tick 1t replace
#update item channels
execute as @e[type=minecraft:interaction,tag=world_border_shrine] at @s as @e[distance=..3,type=minecraft:item] run function world_border_shrine:side/tasks/0/item_drain

#run again on failed conditions
execute unless score side.0.treasure wbs.item_drain matches 0 run return 1
execute unless score side.0.cod wbs.item_drain matches 0 run return 1
execute unless score side.0.salmon wbs.item_drain matches 0 run return 1
execute unless score side.0.pufferfish wbs.item_drain matches 0 run return 1
execute unless score side.0.tropical_fish wbs.item_drain matches 0 run return 1
execute unless score side.0.lily_pad wbs.item_drain matches 0 run return 1
#once all conditions pass call end function
function world_border_shrine:side/tasks/0/end