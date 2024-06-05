#first flavor mesage in sequence
#wait for system to stop printing
execute unless score printing wbs.vars matches 0 run return run schedule function world_boarder_shrine:main/tasks/-1/print/start/0 1t replace
#reserve system printing
scoreboard players set printing wbs.vars 1

#run sequence in final command put bellow command
scoreboard players set printing wbs.vars 0