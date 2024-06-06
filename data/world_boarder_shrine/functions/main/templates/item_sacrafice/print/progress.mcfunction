#wait for system to stop printing
tellraw @s {"text":"Items Left for Item Drain (main Task: -1):","bold":true}
tellraw @s ["•",{"score":{"name":"0","objective":"wbs.item_drain"}}," stone"]
tellraw @s ["•",{"score":{"name":"1","objective":"wbs.item_drain"}}," dirt"]
tellraw @s ["•",{"score":{"name":"2","objective":"wbs.item_drain"}}," iron block"]