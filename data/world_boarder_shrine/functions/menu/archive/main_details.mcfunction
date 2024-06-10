scoreboard players operation temp0 wbs.reg = @s wbs.main_archive.details
scoreboard players enable @s wbs.main_archive.details
scoreboard players set @s wbs.main_archive.details -1

execute if score temp0 wbs.reg matches ..0 run return run tellraw @s "task id must be >0"
execute if score temp0 wbs.reg > main_last_queued wbs.vars run return run tellraw @s "Requested task is not avalible yet."
execute store result storage minecraft:world_boarder_shrine param.index int 1 run scoreboard players get temp0 wbs.reg
function world_boarder_shrine:main/index/print/details with storage minecraft:world_boarder_shrine param