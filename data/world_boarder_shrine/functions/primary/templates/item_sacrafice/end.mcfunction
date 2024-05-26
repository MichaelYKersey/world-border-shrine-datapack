say item_drain end

#run end code

#message
say you completed the item sacrafice template task

#if you want a multipart output put the last stuff in the final command in the chain

#cleanup all things that trigger completion
scoreboard players reset 0 wbs.item_drain
scoreboard players reset 1 wbs.item_drain
scoreboard players reset 2 wbs.item_drain

#advance
function world_boarder_shrine:primary/queue_remove