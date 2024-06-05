#item_1 counter will acept/drain stone items
execute as @s[nbt={Item:{id:"minecraft:stone"}}] run function world_boarder_shrine:item_drain/feed {channel:"main.-1.stone"}
#item_2 counter will acept/drain dirt items
execute as @s[nbt={Item:{id:"minecraft:dirt"}}] run function world_boarder_shrine:item_drain/feed {channel:"main.-1.dirt"}
#item_3 counter will acept/drain iron_block items
execute as @s[nbt={Item:{id:"minecraft:iron_block"}}] run function world_boarder_shrine:item_drain/feed {channel:"main.-1.iron_block"}
#extend pattern to all items you want