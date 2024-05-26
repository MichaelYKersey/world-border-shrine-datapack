tellraw @s {"text":"World Boarder Shrine Menu:","bold":true}
tellraw @s {"text":"1.print menu (this one)","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 1"}}
tellraw @s {"text":"2.current primary task progress","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 2"}}
tellraw @s {"text":"3.current primary task details","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 3"}}
tellraw @s {"text":"4.current primary task progress start message","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 4"}}
tellraw @s {"text":"5.previous primary task end message","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 5"}}
tellraw @s {"text":"6.preview queue details","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 6"}}

#TODO:maybe remove when no active poll?
tellraw @s {"text":"7.tally vote","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 7"}}
tellraw @s {"text":"8.vote yes","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 8"}}
tellraw @s {"text":"9.vote no","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 9"}}
tellraw @s {"text":"10.retract vote (vote null/neutral)","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 10"}}
tellraw @s {"text":"11.check own vote","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 11"}}

tellraw @s {"text":"12.primary tasks archive","clickEvent":{"action":"run_command","value":"/trigger wbs.menu set 12"}}