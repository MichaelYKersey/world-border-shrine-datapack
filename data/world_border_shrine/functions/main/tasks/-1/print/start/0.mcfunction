#first flavor mesage in sequence
#wait for system to stop printing
execute unless score printing wbs.vars matches 0 run return run schedule function world_border_shrine:main/tasks/-1/print/end/0 1t replace
#reserve system printing
scoreboard players set printing wbs.vars 1

#put below command in last funciton in the sequence, it un reserves the system printing
scoreboard players set printing wbs.vars 0