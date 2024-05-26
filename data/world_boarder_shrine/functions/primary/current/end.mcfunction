#forces end/completion (ususaly the taks's own tick function calls it's end function)
execute store result storage minecraft:world_boarder_shrine param.index int 1 run scoreboard players get current wbs.primary
function world_boarder_shrine:primary/index/end with storage minecraft:world_boarder_shrine param