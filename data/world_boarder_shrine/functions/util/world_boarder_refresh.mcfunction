scoreboard players set temp0 wbs.reg 32
scoreboard players operation temp0 wbs.reg *= main_current wbs.vars
scoreboard players add temp0 wbs.reg 16
execute if score temp0 wbs.reg matches ..47 run scoreboard players set temp0 wbs.reg 48
execute store result storage minecraft:world_boarder_shrine param.size int 1 run scoreboard players get temp0 wbs.reg
function world_boarder_shrine:util/set_world_boarder with storage minecraft:world_boarder_shrine param