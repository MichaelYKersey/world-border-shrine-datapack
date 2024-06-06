#refresh ticking
schedule function world_boarder_shrine:main/tasks/5/tick 1t replace
#run again on failed conditions
execute unless score ~status wbs.votes matches 1 run return 1
#once all conditions pass call end function
function world_boarder_shrine:main/tasks/5/end