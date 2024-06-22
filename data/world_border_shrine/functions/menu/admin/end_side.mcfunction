execute unless entity @s[tag=shrine_admin] run return run scoreboard players reset @s wbs.admin.end_side
scoreboard players operation temp0 wbs.reg = @s wbs.admin.end_side
scoreboard players set @s wbs.admin.end_side -1
scoreboard players enable @s wbs.admin.end_side

execute if score temp0 wbs.reg matches ..-1 run return run tellraw @s {"text":"task id must be >=0","color":"red"}

execute store result storage minecraft:world_border_shrine param.item int 1 run scoreboard players get temp0 wbs.reg
execute store success score temp1 wbs.reg run function world_border_shrine:side/list/manager/is_complete with storage minecraft:world_border_shrine param
execute if score temp1 wbs.reg matches 1 run return run tellraw @s {"text":"Requested task is complete","color":"red"}

execute store result storage minecraft:world_border_shrine param.index int 1 run scoreboard players get temp0 wbs.reg
function world_border_shrine:side/index/end with storage minecraft:world_border_shrine param