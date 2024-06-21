#finds active tasks start function and calls it
execute store result storage minecraft:world_border_shrine param.index int 1 run scoreboard players get main_current wbs.vars
function world_border_shrine:main/index/start with storage minecraft:world_border_shrine param