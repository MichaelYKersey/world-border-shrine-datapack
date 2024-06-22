#end ticking
schedule clear world_border_shrine:side/tasks/0/tick

#cleanup all things that trigger completion
#setup for item sacrifices
scoreboard players reset side.0.treasure wbs.item_drain
scoreboard players reset side.0.cod wbs.item_drain
scoreboard players reset side.0.salmon wbs.item_drain
scoreboard players reset side.0.pufferfish wbs.item_drain
scoreboard players reset side.0.tropical_fish wbs.item_drain
scoreboard players reset side.0.lily_pad wbs.item_drain

#call end sequence
function world_border_shrine:side/tasks/0/print/end/0
function world_border_shrine:side/list/manager/add_complete {item:0}
scoreboard players add side_expansion_total wbs.vars 32
function world_border_shrine:util/world_border_refresh
