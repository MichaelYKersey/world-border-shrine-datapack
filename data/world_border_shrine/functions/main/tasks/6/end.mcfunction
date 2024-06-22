#end ticking
schedule clear world_border_shrine:main/tasks/6/tick

#cleanup all things that trigger completion

#call end sequence
function world_border_shrine:main/tasks/6/print/end/0

#advance
function world_border_shrine:main/queue_remove
function world_border_shrine:util/world_border_refresh
