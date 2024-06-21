#incremnt last_queued
scoreboard players add main_last_queued wbs.vars 1
#if current==last_queued start current
execute if score main_current wbs.vars = main_last_queued wbs.vars run function world_border_shrine:main/current/start