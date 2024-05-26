#wait for system to stop printing
tellraw @s {"text":"Items Left for Item Drain (Primary Task: -1):","bold":true}
tellraw @p ["•",{"score":{"name":"0","objective":"wbs.item_drain"}}," stone"]
tellraw @p ["•",{"score":{"name":"1","objective":"wbs.item_drain"}}," dirt"]
tellraw @p ["•",{"score":{"name":"2","objective":"wbs.item_drain"}}," iron block"]