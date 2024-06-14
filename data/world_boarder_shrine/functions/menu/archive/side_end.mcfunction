scoreboard players operation temp0 wbs.reg = @s wbs.main_archive.end
scoreboard players enable @s wbs.main_archive.end
scoreboard players set @s wbs.main_archive.end -1

execute if score temp0 wbs.reg matches ..0 run return run tellraw @s "task id must be >=0"
execute store result storage minecraft:world_boarder_shrine param.item int 1 run scoreboard players get temp0 wbs.reg
execute store success score temp1 wbs.reg run function world_boarder_shrine:side/list/manager/is_complete with storage minecraft:world_boarder_shrine
execute if score temp1 matches 0 wbs.vars run return run tellraw @s "Requested task is not avalible"
function world_boarder_shrine:side/index/print/end with storage minecraft:world_boarder_shrine param