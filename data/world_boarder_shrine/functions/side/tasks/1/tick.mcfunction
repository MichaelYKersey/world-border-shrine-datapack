#refresh ticking
schedule function world_boarder_shrine:side/tasks/1/tick 1t replace

#run again on failed conditions
#once all conditions pass call end function
function world_boarder_shrine:side/tasks/1/end