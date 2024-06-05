#end ticking
schedule clear world_boarder_shrine:main/templates/item_sacrafice/tick

#cleanup all things that trigger completion
scoreboard players reset main.-1.stone wbs.item_drain
scoreboard players reset main.-1.dirt wbs.item_drain
scoreboard players reset main.-1.iron_block wbs.item_drain

#advance
function world_boarder_shrine:main/queue_remove

#call end sequence
function world_boarder_shrine:main/templates/item_sacrafice/print/end/0 