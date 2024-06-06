execute at @s if score main_current wbs.vars > main_last_queued wbs.vars run tellraw @s "archive entry is inaccessible"
function world_boarder_shrine:main/current/print/progress