scoreboard players set printing wbs.vars 0
function world_boarder_shrine:side/patch_update
execute unless score main_current wbs.vars > main_last_queued wbs.vars run function world_boarder_shrine:main/current/tick

execute store result storage minecraft:world_boarder_shrine param.index int 1 run scoreboard players get -1 wbs.side.hidden.next
function world_boarder_shrine:side/load_hidden_loop with storage minecraft:world_boarder_shrine param

execute store result storage minecraft:world_boarder_shrine param.index int 1 run scoreboard players get -1 wbs.side.public.next
function world_boarder_shrine:side/load_public_loop with storage minecraft:world_boarder_shrine param

function world_boarder_shrine:util/world_boarder_refresh