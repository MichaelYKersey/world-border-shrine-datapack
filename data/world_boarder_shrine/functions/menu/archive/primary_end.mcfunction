scoreboard players enable @s wbs.primary_archive.end
scoreboard players operation temp0 wbs.reg = @s wbs.primary_archive.end
run scoreboard players reset @s wbs.primary_archive.end

execute if score temp0 wbs.reg matches ..0 run return run tellraw @s "task id must be >0"
execute if score temp0 wbs.reg > primary_last_queued wbs.vars run return run tellraw @s "Requested task is not avalible yet."
execute store result storage minecraft:world_boarder_shrine param.index int 1 run scoreboard players get temp0 wbs.reg
function world_boarder_shrine:primary/index/print/end with storage minecraft:world_boarder_shrine param