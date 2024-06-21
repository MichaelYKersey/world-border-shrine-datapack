scoreboard players operation temp0 wbs.reg = @s wbs.side_archive.end
scoreboard players enable @s wbs.side_archive.end
scoreboard players set @s wbs.side_archive.end -1

execute if score temp0 wbs.reg matches ..-1 run return run tellraw @s {"text":"task id must be >=0","color":"red"}
execute store result storage minecraft:world_border_shrine param.item int 1 run scoreboard players get temp0 wbs.reg
execute store success score temp1 wbs.reg run function world_border_shrine:side/list/manager/is_complete with storage minecraft:world_border_shrine param
execute unless entity @s[tag=shrine_admin] if score temp1 wbs.reg matches 0 run return run tellraw @s {"text":"Requested task is not avalible","color":"red"}
function world_border_shrine:side/index/print/end with storage minecraft:world_border_shrine param