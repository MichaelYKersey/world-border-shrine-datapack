#set the values on the item chanels that need counting
scoreboard players set main.-1.0 wbs.item_drain 16
scoreboard players set main.-1.1 wbs.item_drain 32
scoreboard players set main.-1.2 wbs.item_drain 1
#extend pattern to all items counts you want

#call the tick
function world_boarder_shrine:main/templates/item_sacrafice/tick

#call start sequence
function world_boarder_shrine:main/templates/item_sacrafice/print/start/0