tellraw @s {"text":"World Border Shrine Menu:","bold":true,"color":"#00cc44"}
tellraw @s {"text":"\u2022print menu (this one)","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 1"},"color":"#00cc44"}
tellraw @s {"text":"\u2022current main task progress","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 2"},"color":"#00cc44"}
tellraw @s {"text":"\u2022current main task details","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 3"},"color":"#00cc44"}
tellraw @s {"text":"\u2022current main task start message","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 4"},"color":"#00cc44"}
tellraw @s {"text":"\u2022previous main task end message","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 5"},"color":"#00cc44"}
tellraw @s {"text":"\u2022preview queue details","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 6"},"color":"#00cc44"}
tellraw @s {"text":"\u2022vote info/menu","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 7"},"color":"#00cc44"}
tellraw @s {"text":"\u2022main tasks archive","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 12"},"color":"#00cc44"}
tellraw @s {"text":"\u2022public active side tasks archive","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 13"},"color":"#00cc44"}
tellraw @s {"text":"\u2022complete side tasks archive","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 14"},"color":"#00cc44"}

tellraw @s {"text":"\u2022debug:refesh triggers","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set -1"},"color":"#00cc44"}

execute unless entity @s[tag=shrine_admin] run return 1

execute if entity @s[tag=shrine_admin] run tellraw @s {"text":"\u2022admin:hidden side tasks archive","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set -2"},"color":"#00cc44"}