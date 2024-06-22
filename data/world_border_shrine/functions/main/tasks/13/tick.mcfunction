#refresh ticking
schedule function world_border_shrine:main/tasks/13/tick 1t replace

#run again on failed conditions
#nearby player nbt
execute as @e[type=minecraft:interaction,tag=world_border_shrine] at @s unless entity @a[distance=..5,nbt={Inventory:[{components:{"minecraft:stored_enchantments":{levels:{"minecraft:silk_touch":1}}}}]}] run return 1
#once all conditions pass call end function
function world_border_shrine:main/tasks/13/end