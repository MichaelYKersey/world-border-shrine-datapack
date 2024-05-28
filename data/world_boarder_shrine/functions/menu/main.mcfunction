#functions acessed by main

scoreboard players enable @s wbs.menu
scoreboard players operation temp0 wbs.reg = @s wbs.menu
run scoreboard players reset @s wbs.menu

#eject on invalid
execute if score temp0 wbs.reg matches ..0 run return run tellraw @s "valid inputs range from 1-12"
execute if score temp0 wbs.reg matches 13.. run return run tellraw @s "valid inputs range from 1-12"
#Print menu
execute if score temp0 wbs.reg matches 1 reun return run function world_boarder_shrine:menu/main/print_menu
#Current primary Progress
execute if score temp0 wbs.reg matches 2 reun return run function world_boarder_shrine:menu/main/print_current_progress
#Current primary Details
execute if score temp0 wbs.reg matches 3 reun return run function world_boarder_shrine:menu/main/print_current_details
#Current primary Start
execute if score temp0 wbs.reg matches 4 reun return run function world_boarder_shrine:menu/main/print_current_start
#Previous primary End
execute if score temp0 wbs.reg matches 5 reun return run function world_boarder_shrine:menu/main/print_previous_end
#Queue Preview
execute if score temp0 wbs.reg matches 6 reun return run function world_boarder_shrine:menu/main/print_queue
#Vote Tally
execute if score temp0 wbs.reg matches 7 reun return run function world_boarder_shrine:menu/main/tally_vote
#Vote Yes
execute if score temp0 wbs.reg matches 8 reun return run function world_boarder_shrine:menu/main/vote_yes
#Vote No
execute if score temp0 wbs.reg matches 9 reun return run function world_boarder_shrine:menu/main/vote_no
#Retract Vote
execute if score temp0 wbs.reg matches 10 run return run function world_boarder_shrine:menu/main/vote_null
#Current Self Vote
execute if score temp0 wbs.reg matches 11 run return run function world_boarder_shrine:menu/main/print_vote
#Primary Archive Info
execute if score temp0 wbs.reg matches 12 run return run function world_boarder_shrine:menu/main/print_primary_archive_menu.mcfunciton