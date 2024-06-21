execute if score @s wbs.votes matches 0 run return run function world_border_shrine:util/return
execute if score @s wbs.votes matches 1 run scoreboard players remove ~yes wbs.votes 1
scoreboard players add ~no wbs.votes 1
scoreboard players set @s wbs.votes 0