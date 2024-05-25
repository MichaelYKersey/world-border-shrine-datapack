execute if score @s wbs.votes matches 0 run scoreboard players remove ~no wbs.votes 1
execute if score @s wbs.votes matches 1 run scoreboard players remove ~yes wbs.votes 1
scoreboard players reset @s wbs.votes