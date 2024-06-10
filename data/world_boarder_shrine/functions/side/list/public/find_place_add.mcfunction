#start at back and go tward front util item in front is less than
#if front < item insert
$scoreboard players set temp0 wbs.reg $(front)
$execute if score temp0 wbs.reg matches ..$(item) run return run function world_boarder_shrine:side/list/public/insert_between with storage minecraft:world_boarder_shrine param
#else iterate to next
$data modify storage minecraft:world_boarder_shrine param.item set value $(item)
$execute store result storage minecraft:world_boarder_shrine param.front int 1 run scoreboard players get $(front) wbs.side.public.previous
$execute store result storage minecraft:world_boarder_shrine param.back int 1 run scoreboard players get $(back) wbs.side.public.previous
function world_boarder_shrine:side/list/public/find_place_add with storage minecraft:world_boarder_shrine param