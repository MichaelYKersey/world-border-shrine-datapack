#end ticking
schedule clear world_boarder_shrine:main/tasks/4/tick

#cleanup all things that trigger completion
#setup for item sacrifices
scoreboard players reset main.4.diamond wbs.item_drain
scoreboard players reset main.4.gold_ingot wbs.item_drain
scoreboard players reset main.4.iron_ingot wbs.item_drain
scoreboard players reset main.4.redstone wbs.item_drain
scoreboard players reset main.4.copper_ingot wbs.item_drain

#call end sequence
function world_boarder_shrine:main/tasks/4/print/end/0
#advance
function world_boarder_shrine:main/queue_remove
function world_boarder_shrine:util/world_boarder_refresh
