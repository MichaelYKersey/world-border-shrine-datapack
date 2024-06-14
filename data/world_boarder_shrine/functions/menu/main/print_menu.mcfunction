tellraw @s {"text":"World Boarder Shrine Menu:","bold":true}
tellraw @s {"text":"\u2022print menu (this one)","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 1"}}
tellraw @s {"text":"\u2022current main task progress","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 2"}}
tellraw @s {"text":"\u2022current main task details","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 3"}}
tellraw @s {"text":"\u2022current main task progress start message","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 4"}}
tellraw @s {"text":"\u2022previous main task end message","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 5"}}
tellraw @s {"text":"\u2022preview queue details","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 6"}}
tellraw @s {"text":"\u2022vote info/menu","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 7"}}
tellraw @s {"text":"\u2022main tasks archive","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 12"}}
tellraw @s {"text":"\u2022public active side tasks archive","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 13"}}
tellraw @s {"text":"\u2022complete side tasks archive","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 14"}}
tellraw @s {"text":"\u2022debug:refesh triggers","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set -1"}}