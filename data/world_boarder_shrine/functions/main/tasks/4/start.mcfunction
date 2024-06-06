#setup for task
#setup for item sacrifices
scoreboard players set main.4.diamond wbs.item_drain 1
scoreboard players set main.4.gold_ingot wbs.item_drain 16
scoreboard players set main.4.iron_ingot wbs.item_drain 32
scoreboard players set main.4.redstone wbs.item_drain 64
scoreboard players set main.4.copper_ingot wbs.item_drain 64

#call the tick
function world_boarder_shrine:main/tasks/4/tick

#call start print sequence
function world_boarder_shrine:main/tasks/4/print/start/0
