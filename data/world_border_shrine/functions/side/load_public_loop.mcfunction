$execute if score -1 wbs.k matches $(index) run return 1
$schedule function world_border_shrine:side/tasks/$(index)/tick 1t replace
$execute store result storage minecraft:world_border_shrine param.index int 1 run scoreboard players get $(index) wbs.side.public.next
function world_border_shrine:side/load_public_loop with storage minecraft:world_border_shrine param