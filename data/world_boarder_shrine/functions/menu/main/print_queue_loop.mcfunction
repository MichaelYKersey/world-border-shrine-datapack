execute if score temp0 wbs.reg > main_last_queued wbs.vars run return 1
execute store result storage minecraft:world_border_shrine param.index int 1 run scoreboard players get temp0 wbs.reg
function world_border_shrine:main/index/print/details with storage minecraft:world_border_shrine param
scoreboard players add temp0 wbs.reg 1
function world_border_shrine:menu/main/print_queue_loop