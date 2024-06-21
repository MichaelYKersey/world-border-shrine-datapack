execute at @s unless entity @e[distance=..10,type=minecraft:interaction,tag=world_border_shrine] run return run tellraw @s {"text":"get closer to the shrine to tally vote (current limitation hope to fix later if a bother)","color":"red"}
function world_border_shrine:voting/tally
function world_border_shrine:voting/print_tally