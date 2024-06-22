#refresh ticking
schedule function world_border_shrine:main/tasks/0/tick 1t replace

#run again on failed conditions
#once all conditions pass call end function
function world_border_shrine:main/tasks/0/end