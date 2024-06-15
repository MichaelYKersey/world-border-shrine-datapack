scoreboard players enable @s wbs.menu
scoreboard players set @s wbs.menu 0

scoreboard players enable @s wbs.main_archive.start
scoreboard players set @s wbs.main_archive.start -1
scoreboard players enable @s wbs.main_archive.details
scoreboard players set @s wbs.main_archive.details -1
scoreboard players enable @s wbs.main_archive.end
scoreboard players set @s wbs.main_archive.end -1

scoreboard players enable @s wbs.side_archive.start
scoreboard players set @s wbs.side_archive.start -1
scoreboard players enable @s wbs.side_archive.details
scoreboard players set @s wbs.side_archive.details -1
scoreboard players enable @s wbs.side_archive.progress
scoreboard players set @s wbs.side_archive.progress -1
scoreboard players enable @s wbs.side_archive.end
scoreboard players set @s wbs.side_archive.end -1

execute unless entity @s[tag=shrine_admin] run return 1
scoreboard players enable @s wbs.admin.end_side
scoreboard players set @s wbs.admin.end_side -1