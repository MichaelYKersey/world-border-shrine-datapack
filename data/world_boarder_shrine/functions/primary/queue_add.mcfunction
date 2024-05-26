#incremnt last_queued
scoreboard players add primary_last_queued wbs.vars 1
#if current==last_queued start current
execute if score primary_current wbs.vars = primary_last_queued wbs.vars run function world_boarder_shrine:primary/current/start