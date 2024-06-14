execute at @s unless entity @e[distance=..10,type=minecraft:interaction,tag=world_boarder_shrine] run return run tellraw @s {"text":"get closer to the shrine to tally vote (current limitation hope to fix later if a bother)","color":"red"}
function world_boarder_shrine:voting/tally
function world_boarder_shrine:voting/print_tally