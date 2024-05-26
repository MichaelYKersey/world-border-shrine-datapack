#incremnt last_queued
scoreboard players add last_queued wbs.primary 1
#if current==last_queued start current
execute if score current wbs.primary = last_queued wbs.primary run function world_boarder_shrine:primary/current/start