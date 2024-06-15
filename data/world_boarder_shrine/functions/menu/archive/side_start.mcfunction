scoreboard players operation temp0 wbs.reg = @s wbs.side_archive.start
scoreboard players enable @s wbs.side_archive.start
scoreboard players set @s wbs.side_archive.start -1

execute if score temp0 wbs.reg matches ..0 run return run tellraw @s {"text":"task id must be >=0","color":"red"}
execute store result storage minecraft:world_boarder_shrine param.item int 1 run scoreboard players get temp0 wbs.reg
execute store success score temp1 wbs.reg run function world_boarder_shrine:side/list/manager/is_publicly_accessible with storage minecraft:world_boarder_shrine
execute unless entity @s[tag=shrine_admin] if score temp1 matches 0 wbs.vars run return run tellraw @s {"text":"Requested task is not avalible","color":"red"}
execute store result storage minecraft:world_boarder_shrine param.index int 1 run scoreboard players get temp0 wbs.reg
function world_boarder_shrine:side/index/print/start with storage minecraft:world_boarder_shrine param