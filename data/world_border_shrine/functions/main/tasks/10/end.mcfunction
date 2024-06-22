#end ticking
schedule clear world_border_shrine:main/tasks/10/tick

#cleanup all things that trigger completion
#setup for item sacrifices
scoreboard players reset main.10.netherrack wbs.item_drain
scoreboard players reset main.10.quartz wbs.item_drain
scoreboard players reset main.10.soul_sand wbs.item_drain

#call end sequence
function world_border_shrine:main/tasks/10/print/end/0

#advance
function world_border_shrine:main/queue_remove
function world_border_shrine:util/world_border_refresh
