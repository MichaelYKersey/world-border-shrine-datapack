#end ticking
schedule clear world_boarder_shrine:main/tasks/0/tick

#cleanup all things that trigger completion

#call end sequence
function world_boarder_shrine:main/tasks/0/print/end/0
#advance
function world_boarder_shrine:main/queue_remove
function world_boarder_shrine:util/world_boarder_refresh
