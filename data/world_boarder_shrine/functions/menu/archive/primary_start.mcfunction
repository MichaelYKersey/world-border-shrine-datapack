execute if score @s wbs.primary_archive.start > primary_last_queued wbs.vars run return run tellraw @s "Requested task is not avalible yet."
execute store result storage minecraft:world_boarder_shrine param.index int 1 run scoreboard players get @s wbs.primary_archive.start
function world_boarder_shrine:primary/index/print/start/0 with storage minecraft:world_boarder_shrine param