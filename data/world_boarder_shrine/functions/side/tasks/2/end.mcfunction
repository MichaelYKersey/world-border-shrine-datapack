#end ticking
schedule clear world_boarder_shrine:side/tasks/2/tick

#cleanup all things that trigger completion

#call end sequence
function world_boarder_shrine:side/tasks/2/print/end/0
function world_boarder_shrine:side/list/manager/add_complete {item:2}
scoreboard players add side_expansion_total wbs.vars 16
function world_boarder_shrine:util/world_boarder_refresh
