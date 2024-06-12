# pust into list with order like this: front,item,back
$scoreboard players set $(item) wbs.side.hidden.previous $(front)
$scoreboard players set $(item) wbs.side.hidden.next $(back)
$scoreboard players set $(front) wbs.side.hidden.next $(item)
$scoreboard players set $(back) wbs.side.hidden.previous $(item)