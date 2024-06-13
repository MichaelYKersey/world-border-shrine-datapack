#end ticking
schedule clear world_boarder_shrine:main/tasks/10/tick

#cleanup all things that trigger completion
#setup for item sacrifices
scoreboard players reset main.10.netherrack wbs.item_drain
scoreboard players reset main.10.quartz wbs.item_drain
scoreboard players reset main.10.minecraft:soul_sand wbs.item_drain

#call end sequence
function world_boarder_shrine:main/tasks/10/print/end/0

#advance
function world_boarder_shrine:main/queue_remove
function world_boarder_shrine:util/world_boarder_refresh
