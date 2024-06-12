$execute if score -1 wbs.k matches $(index) run return 1
$schedule function world_boarder_shrine:side/tasks/$(index)/tick 1t replace
$execute store result storage minecraft:world_boarder_shrine param.index int 1 run scoreboard players get $(index) wbs.side.hidden.next
function world_boarder_shrine:side/load_hidden_loop with storage minecraft:world_boarder_shrine param