#setup for task
#setup for item sacrifices
scoreboard players set main.3.grass wbs.item_drain 16
scoreboard players set main.3.leaf_blocks wbs.item_drain 16
scoreboard players set main.3.saplings wbs.item_drain 16
scoreboard players set main.3.wheat wbs.item_drain 16

#call the tick
function world_boarder_shrine:main/tasks/3/tick

#call start print sequence
function world_boarder_shrine:main/tasks/3/print/start/0
