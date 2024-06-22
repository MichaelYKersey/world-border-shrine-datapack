scoreboard players set temp0 wbs.reg 5
scoreboard players operation temp0 wbs.reg += main_current wbs.vars
execute if score temp0 wbs.reg > main_last_queued wbs.vars run function world_border_shrine:main/queue_add