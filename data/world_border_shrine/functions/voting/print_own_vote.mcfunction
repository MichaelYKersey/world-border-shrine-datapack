execute if score @s wbs.votes matches 1 run return run tellraw @s ["","Your current vote: ",{"text":"Yes","color":"dark_green"}]
execute if score @s wbs.votes matches 0 run return run tellraw @s ["","Your current vote: ",{"text":"No","color":"dark_red"}]
tellraw @s ["","Your current vote: ",{"text":"Null/Nuetral","color":"gray"}]