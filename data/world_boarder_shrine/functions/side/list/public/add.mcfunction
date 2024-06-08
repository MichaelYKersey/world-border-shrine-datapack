#return if c.p exists
$scoreboard players set temp0 wbs.reg $(item)
execute unless score temp0 wbs.reg matches 0.. run return fail
#insert item between head sentinal node
data modify storage minecraft:world_boarder_shrine param.front set value -1
$data modify storage minecraft:world_boarder_shrine param.item set value $(item)
execute store result storage minecraft:world_boarder_shrine param.back int 1 run scoreboard players get -1 wbs.side.public.next
function world_boarder_shrine:side/list/public/insert_between with storage minecraft:world_boarder_shrine param