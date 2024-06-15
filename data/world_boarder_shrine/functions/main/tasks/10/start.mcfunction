#setup for task
#setup for item sacrifices
scoreboard players set main.10.netherrack wbs.item_drain 64
scoreboard players set main.10.quartz wbs.item_drain 16
scoreboard players set main.10.soul_sand wbs.item_drain 32

#call the tick
function world_boarder_shrine:main/tasks/10/tick

#call start print sequence
function world_boarder_shrine:main/tasks/10/print/start/0
