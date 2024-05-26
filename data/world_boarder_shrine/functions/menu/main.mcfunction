#functions acessed by main

#Print menu
execute if score @s wbs.menu matches 1 run function world_boarder_shrine:menu/main/print_menu
#Current primary Progress
execute if score @s wbs.menu matches 2 run function world_boarder_shrine:menu/main/print_current_progress
#Current primary Details
execute if score @s wbs.menu matches 3 run function world_boarder_shrine:menu/main/print_current_details
#Current primary Start
execute if score @s wbs.menu matches 4 run function world_boarder_shrine:menu/main/print_current_start
#Previous primary End
execute if score @s wbs.menu matches 5 run function world_boarder_shrine:menu/main/print_previous_end
#Queue Preview
execute if score @s wbs.menu matches 6 run function world_boarder_shrine:menu/main/print_queue
#Vote Tally
execute if score @s wbs.menu matches 7 run function world_boarder_shrine:menu/main/tally_vote
#Vote Yes
execute if score @s wbs.menu matches 8 run function world_boarder_shrine:menu/main/vote_yes
#Vote No
execute if score @s wbs.menu matches 9 run function world_boarder_shrine:menu/main/vote_no
#Retract Vote
execute if score @s wbs.menu matches 10 run function world_boarder_shrine:menu/main/vote_null
#Current Self Vote
execute if score @s wbs.menu matches 11 run function world_boarder_shrine:menu/main/print_vote
#Primary Archive Info
execute if score @s wbs.menu matches 12 run function world_boarder_shrine:menu/main/print_primary_archive_menu.mcfunciton

scoreboard players enable @s wbs.menu
scoreboard players set @s wbs.menu 0