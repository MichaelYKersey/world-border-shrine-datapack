#end ticking
schedule clear world_boarder_shrine:main/tasks/11/tick

#cleanup all things that trigger completion
#setup for item sacrifices
scoreboard players reset main.11.netherite_ingot wbs.item_drain

#call end sequence
function world_boarder_shrine:main/tasks/11/print/end/0
#advance
function world_boarder_shrine:main/queue_remove
function world_boarder_shrine:util/world_boarder_refresh
