scoreboard players operation temp0 wbs.reg = @s wbs.main_archive.start
scoreboard players enable @s wbs.main_archive.start
scoreboard players set @s wbs.main_archive.start -1

execute at @s unless entity @e[distance=..10,type=minecraft:interaction,tag=world_boarder_shrine] run return run tellraw @s "get closer to the shrine to access the archive"
execute if score temp0 wbs.reg matches ..0 run return run tellraw @s "task id must be >0"
execute if score temp0 wbs.reg > main_last_queued wbs.vars run return run tellraw @s "Requested task is not avalible yet."
execute store result storage minecraft:world_boarder_shrine param.index int 1 run scoreboard players get temp0 wbs.reg
function world_boarder_shrine:main/index/print/start with storage minecraft:world_boarder_shrine param