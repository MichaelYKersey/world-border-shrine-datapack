execute unless score @s wbs.menu matches 0 run function world_boarder_shrine:menu/main
execute unless score @s wbs.main_archive.start matches -1 run function world_boarder_shrine:menu/archive/main_start
execute unless score @s wbs.main_archive.details matches -1 run function world_boarder_shrine:menu/archive/main_details
execute unless score @s wbs.main_archive.end matches -1 run function world_boarder_shrine:menu/archive/main_end
execute unless score @s wbs.side_archive.start matches -1 run function world_boarder_shrine:menu/archive/side_start
execute unless score @s wbs.side_archive.details matches -1 run function world_boarder_shrine:menu/archive/side_details
execute unless score @s wbs.side_archive.details matches -1 run function world_boarder_shrine:menu/archive/side_progress
execute unless score @s wbs.side_archive.end matches -1 run function world_boarder_shrine:menu/archive/side_end