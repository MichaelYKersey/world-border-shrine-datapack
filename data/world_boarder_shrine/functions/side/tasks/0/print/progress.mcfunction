tellraw @s {"text":"Not with your hands[0] Progress:", "bold":true}
#an explicit task list for completion
tellraw @s "The fallowing items remain to be sacrificed:"
execute if score side.0.treasure wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"side.0.treasure","objective":"wbs.item_drain"}},"-treasure"]
execute if score side.0.cod wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"side.0.cod","objective":"wbs.item_drain"}},"-cod"]
execute if score side.0.salmon wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"side.0.salmon","objective":"wbs.item_drain"}},"-salmon"]
execute if score side.0.pufferfish wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"side.0.pufferfish","objective":"wbs.item_drain"}},"-pufferfish"]
execute if score side.0.tropical_fish wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"side.0.tropical_fish","objective":"wbs.item_drain"}},"-tropical_fish"]
execute if score side.0.lily_pad wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"side.0.lily_pad","objective":"wbs.item_drain"}},"-lily_pad"]
