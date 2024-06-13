#end ticking
schedule clear world_boarder_shrine:main/tasks/3/tick

#cleanup all things that trigger completion
#setup for item sacrifices
scoreboard players reset main.3.grass wbs.item_drain
scoreboard players reset main.3.leaf_blocks wbs.item_drain
scoreboard players reset main.3.saplings wbs.item_drain
scoreboard players reset main.3.wheat wbs.item_drain

#call end sequence
function world_boarder_shrine:main/tasks/3/print/end/0

#advance
function world_boarder_shrine:main/queue_remove
function world_boarder_shrine:util/world_boarder_refresh
