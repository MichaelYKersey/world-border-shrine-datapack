#cleanup all things that trigger completion
scoreboard players reset 0 wbs.item_drain
scoreboard players reset 1 wbs.item_drain
scoreboard players reset 2 wbs.item_drain

#advance
function world_boarder_shrine:primary/queue_remove

#call end sequence
function world_boarder_shrine:primary/templates/item_sacrafice/print/end/0 