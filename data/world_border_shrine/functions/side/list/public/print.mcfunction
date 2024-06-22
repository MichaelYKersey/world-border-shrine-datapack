$execute if score -1 wbs.k matches $(item) run return 1
$function world_border_shrine:side/tasks/$(item)/print/list_title
$execute store result storage minecraft:world_border_shrine param.item int 1 run scoreboard players get $(item) wbs.side.public.next
function world_border_shrine:side/list/public/print with storage minecraft:world_border_shrine param