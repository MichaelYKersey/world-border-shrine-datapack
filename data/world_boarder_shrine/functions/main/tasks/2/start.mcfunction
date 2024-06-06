#setup for task
#setup for item sacrifices
scoreboard players set main.2.charcoal wbs.item_drain 16
scoreboard players set main.2.coal wbs.item_drain 16
scoreboard players set main.2.blast_furnace wbs.item_drain 1

#call the tick
function world_boarder_shrine:main/tasks/2/tick

#call start print sequence
function world_boarder_shrine:main/tasks/2/print/start/0
