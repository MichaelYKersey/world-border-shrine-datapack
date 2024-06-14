tellraw @s {"text":"Not with your hands[0] Progress:", "bold":true,"color":"#00cc44"}
#an explicit task list for completion
tellraw @s {"text":"The fallowing items remain to be sacrificed:","color":"#00cc44"}
execute if score side.0.treasure wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"side.0.treasure","objective":"wbs.item_drain"},"color":"#00cc44"},{"text":"-treasure","color":"#00cc44"}]
execute if score side.0.cod wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"side.0.cod","objective":"wbs.item_drain"},"color":"#00cc44"},{"text":"-cod","color":"#00cc44"}]
execute if score side.0.salmon wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"side.0.salmon","objective":"wbs.item_drain"},"color":"#00cc44"},{"text":"-salmon","color":"#00cc44"}]
execute if score side.0.pufferfish wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"side.0.pufferfish","objective":"wbs.item_drain"},"color":"#00cc44"},{"text":"-pufferfish","color":"#00cc44"}]
execute if score side.0.tropical_fish wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"side.0.tropical_fish","objective":"wbs.item_drain"},"color":"#00cc44"},{"text":"-tropical_fish","color":"#00cc44"}]
execute if score side.0.lily_pad wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"side.0.lily_pad","objective":"wbs.item_drain"},"color":"#00cc44"},{"text":"-lily_pad","color":"#00cc44"}]
