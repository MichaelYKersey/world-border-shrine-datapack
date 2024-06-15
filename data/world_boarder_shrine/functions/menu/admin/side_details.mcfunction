scoreboard players operation temp0 wbs.reg = @s wbs.side_archive.details
scoreboard players enable @s wbs.side_archive.details
scoreboard players set @s wbs.side_archive.details -1

execute if score temp0 wbs.reg matches ..0 run return run tellraw @s {"text":"task id must be >=0","color":"red"}
#TODO: add safty
execute store result storage minecraft:world_boarder_shrine param.index int 1 run scoreboard players get temp0 wbs.reg
function world_boarder_shrine:side/index/end with storage minecraft:world_boarder_shrine param