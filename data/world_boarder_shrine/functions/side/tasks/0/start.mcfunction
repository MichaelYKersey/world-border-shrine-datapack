#setup for task
#setup for item sacrifices
scoreboard players set side.0.treasure wbs.item_drain 1
scoreboard players set side.0.cod wbs.item_drain 1
scoreboard players set side.0.salmon wbs.item_drain 1
scoreboard players set side.0.pufferfish wbs.item_drain 1
scoreboard players set side.0.tropical_fish wbs.item_drain 1
scoreboard players set side.0.lily_pad wbs.item_drain 1
function world_boarder_shrine:side/list/manager/add_public {item:0}

#call the tick
function world_boarder_shrine:side/tasks/0/tick

#call start print sequence
function world_boarder_shrine:side/tasks/0/print/start/0
