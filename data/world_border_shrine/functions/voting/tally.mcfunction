#get null votes (online but haven't voted)
scoreboard players set temp0 wbs.reg 0
#score is vote, 0 is no, 1 is yes, else is abset
execute as @a unless score @s wbs.votes matches 0..1 run scoreboard players add temp0 wbs.reg 1

#sum for total in temp1
scoreboard players set temp1 wbs.reg 0
scoreboard players operation temp1 wbs.reg += temp0 wbs.reg
scoreboard players operation temp1 wbs.reg += ~yes wbs.votes
scoreboard players operation temp1 wbs.reg += ~no wbs.votes

#find winner
#temp2 = 3*yes
scoreboard players set temp2 wbs.reg 3
scoreboard players operation temp2 wbs.reg *= ~yes wbs.votes
#temp5 = 2*total
scoreboard players set temp3 wbs.reg 2
scoreboard players operation temp3 wbs.reg *= temp1 wbs.reg

#update status
#set ~status to result of yes*3>=total*2 = yes>=total*2/3
execute store result score ~status wbs.votes run execute if score temp2 wbs.reg >= temp3 wbs.reg
#if total<5 always no pass
execute unless score temp1 wbs.reg matches 5.. run scoreboard players set ~status wbs.votes 0

#calc yes%
scoreboard players set temp2 wbs.reg 100
scoreboard players operation temp2 wbs.reg *= ~yes wbs.votes
scoreboard players operation temp2 wbs.reg /= temp1 wbs.reg