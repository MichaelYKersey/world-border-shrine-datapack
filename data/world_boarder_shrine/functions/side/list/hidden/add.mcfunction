#return if c.p exists
$scoreboard players set temp0 wbs.reg $(item)
execute unless score temp0 wbs.reg matches 0.. run return fail
$execute if score $(item) wbs.side.hidden.previous matches -1.. run return run tellraw @s {"text":"Item already in list","color":"red"}
#call find place and insert loop (start at back of list)
$data modify storage minecraft:world_boarder_shrine param.item set value $(item)
execute store result storage minecraft:world_boarder_shrine param.front int 1 run scoreboard players get -1 wbs.side.hidden.previous
data modify storage minecraft:world_boarder_shrine param.back set value -1
function world_boarder_shrine:side/list/hidden/find_place_add with storage minecraft:world_boarder_shrine param