#finds active tasks's tick fuunction and calls it
execute store result storage minecraft:world_boarder_shrine param.index int 1 run scoreboard players get current wbs.primary
function world_boarder_shrine:primary/index/tick with storage minecraft:world_boarder_shrine param