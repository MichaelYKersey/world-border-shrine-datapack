execute at @s if score main_current wbs.vars > main_last_queued wbs.vars run tellraw @s {"text":"archive entry is inaccessible","color":"red"}
function world_boarder_shrine:main/current/print/progress