execute unless entity @s[tag=shrine_admin] run return run scoreboard players reset @s wbs.admin.end_side
scoreboard players operation temp0 wbs.reg = @s wbs.admin.end_side
scoreboard players set @s wbs.admin.end_side -1
scoreboard players enable @s wbs.admin.end_side

execute if score temp0 wbs.reg matches ..0 run return run tellraw @s {"text":"task id must be >=0","color":"red"}
# #TODO: add safety
execute store result storage minecraft:world_boarder_shrine param.index int 1 run scoreboard players get temp0 wbs.reg
function world_boarder_shrine:side/index/end with storage minecraft:world_boarder_shrine param