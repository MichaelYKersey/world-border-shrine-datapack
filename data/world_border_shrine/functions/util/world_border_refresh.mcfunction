scoreboard players set temp0 wbs.reg 32
scoreboard players operation temp0 wbs.reg *= main_current wbs.vars
scoreboard players add temp0 wbs.reg 16
execute if score temp0 wbs.reg matches ..47 run scoreboard players set temp0 wbs.reg 48
scoreboard players operation temp0 wbs.reg += side_expansion_total wbs.vars
execute store result score temp1 wbs.reg run worldborder get
execute if score temp0 wbs.reg < temp1 wbs.reg run return run tellraw @a {"text":"MESSAGE ADMIN: A world border size tracking error occurred","color":"red"}
execute if score temp0 wbs.reg > temp1 wbs.reg run function world_border_shrine:util/fog_recession
execute store result storage minecraft:world_border_shrine param.size int 1 run scoreboard players get temp0 wbs.reg
function world_border_shrine:util/set_world_border with storage minecraft:world_border_shrine param