# pust into list with order like this: front,item,back
$scoreboard players set $(item) wbs.side.complete.previous $(front)
$scoreboard players set $(item) wbs.side.complete.next $(back)
$scoreboard players set $(front) wbs.side.complete.next $(item)
$scoreboard players set $(back) wbs.side.complete.previous $(item)