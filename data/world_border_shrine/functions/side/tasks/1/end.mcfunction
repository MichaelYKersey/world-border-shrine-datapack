#end ticking
schedule clear world_border_shrine:side/tasks/1/tick

#cleanup all things that trigger completion

#call end sequence
function world_border_shrine:side/tasks/1/print/end/0
function world_border_shrine:side/list/manager/add_complete {item:1}
scoreboard players add side_expansion_total wbs.vars 16
function world_border_shrine:util/world_border_refresh
