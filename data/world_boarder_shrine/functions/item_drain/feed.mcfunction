#get feed_count - requested_count
execute store result score temp0 wbs.reg run data get entity @s Item.count
$scoreboard players operation temp0 wbs.reg -= $(channel) wbs.item_drain

#if <= item count run normal: kill and subtract
$execute if score temp0 wbs.reg matches ..0 run return run function world_border_shrine:item_drain/feed_normal {channel:$(channel)}
#else overflow case
$function world_border_shrine:item_drain/feed_overflow {channel:$(channel)}