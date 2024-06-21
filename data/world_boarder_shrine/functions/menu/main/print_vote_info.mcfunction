tellraw @s {"text":"World Border Shrine Votting Menu:","bold":true,"color":"#00cc44"}
execute unless score ~status wbs.votes matches 0 run return run tellraw @s {"text":"there is no active vote","color":"red"}
function world_border_shrine:voting/print_own_vote
function world_border_shrine:main/current/print/voting_prompt
tellraw @s {"text":"\u2022tally vote","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 8"},"color":"#00cc44"}
tellraw @s {"text":"\u2022vote yes","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 9"},"color":"#00cc44"}
tellraw @s {"text":"\u2022vote no","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 10"},"color":"#00cc44"}
tellraw @s {"text":"\u2022vote null/nuetral","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 11"},"color":"#00cc44"}