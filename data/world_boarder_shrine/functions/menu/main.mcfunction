#functions acessed by main

scoreboard players enable @s wbs.menu
scoreboard players operation temp0 wbs.reg = @s wbs.menu
scoreboard players set @s wbs.menu 0

#eject on invalid
execute if score temp0 wbs.reg matches ..-3 run return run tellraw @s {"text":"invalid input","color":"red"}
execute if score temp0 wbs.reg matches 15.. run return run tellraw @s {"text":"invalid input","color":"red"}
#refreash triggers
execute if score temp0 wbs.reg matches -1 run return run function world_boarder_shrine:menu/init_player
#Print menu
execute if score temp0 wbs.reg matches 1 run return run function world_boarder_shrine:menu/main/print_menu
#Current main Progress
execute if score temp0 wbs.reg matches 2 run return run function world_boarder_shrine:menu/main/print_current_progress
#Current main Details
execute if score temp0 wbs.reg matches 3 run return run function world_boarder_shrine:menu/main/print_current_details
#Current main Start
execute if score temp0 wbs.reg matches 4 run return run function world_boarder_shrine:menu/main/print_current_start
#Previous main End
execute if score temp0 wbs.reg matches 5 run return run function world_boarder_shrine:menu/main/print_previous_end
#Queue Preview
execute if score temp0 wbs.reg matches 6 run return run function world_boarder_shrine:menu/main/print_queue
#Vote menu
execute if score temp0 wbs.reg matches 7 run return run function world_boarder_shrine:menu/main/print_vote_info
#Vote Tally
execute if score temp0 wbs.reg matches 8 run return run function world_boarder_shrine:menu/main/tally_vote
#Vote Yes
execute if score temp0 wbs.reg matches 9 run return run function world_boarder_shrine:menu/main/vote_yes
#Vote No
execute if score temp0 wbs.reg matches 10 run return run function world_boarder_shrine:menu/main/vote_no
#Retract Vote
execute if score temp0 wbs.reg matches 11 run return run function world_boarder_shrine:menu/main/vote_null
# main Archive Info
execute if score temp0 wbs.reg matches 12 run return run function world_boarder_shrine:menu/main/print_main_archive_menu
# side Archive Info
execute if score temp0 wbs.reg matches 13 run return run function world_boarder_shrine:menu/main/print_side_public_active_menu
execute if score temp0 wbs.reg matches -2 run return run function world_boarder_shrine:menu/main/print_side_hidden_active_menu
execute if score temp0 wbs.reg matches 14 run return run function world_boarder_shrine:menu/main/print_side_complete_menu