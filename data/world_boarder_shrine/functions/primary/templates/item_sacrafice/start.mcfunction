say item_drain start

#set the values on the item chanels that need counting
scoreboard players set 0 wbs.item_drain 16
scoreboard players set 1 wbs.item_drain 32
scoreboard players set 2 wbs.item_drain 1
#extend pattern to all items counts you want

#call the tick
function world_boarder_shrine:primary/templates/item_sacrafice/tick