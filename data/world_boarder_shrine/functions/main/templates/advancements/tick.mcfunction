#refresh ticking
schedule function world_boarder_shrine:main/templates/advancements/tick 1t replace

#updates such as Item drain feeding
scoreboard players set temp0 wbs.reg 0
execute @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as give @a[distance=..5] if predicate world_boarder_shrine:advancements/adventure/kill_a_mob scoreboard players set temp0 wbs.reg 1

#run again on failed conditions
execute if score temp0 wbs.reg matches 1 run return 1

#once all conditions pass call end function
function world_boarder_shrine:main/templates/advancements/end