scoreboard players operation temp0 wbs.reg = @s wbs.main_archive.end
scoreboard players enable @s wbs.main_archive.end
scoreboard players set @s wbs.main_archive.end -1

execute at @s unless entity @e[distance=..10,type=minecraft:interaction,tag=world_border_shrine] run return run tellraw @s {"text":"get closer to the shrine to access the archive","color":"red"}
execute if score temp0 wbs.reg matches ..-1 run return run tellraw @s {"text":"task id must be >-1","color":"red"}
execute if score temp0 wbs.reg >= main_current wbs.vars run return run tellraw @s {"text":"Requested task is not avalible yet.","color":"red"}
execute store result storage minecraft:world_border_shrine param.index int 1 run scoreboard players get temp0 wbs.reg
function world_border_shrine:main/index/print/end with storage minecraft:world_border_shrine param