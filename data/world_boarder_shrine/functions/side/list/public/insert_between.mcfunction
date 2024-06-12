# pust into list with order like this: front,item,back
$scoreboard players set $(item) wbs.side.public.previous $(front)
$scoreboard players set $(item) wbs.side.public.next $(back)
$scoreboard players set $(front) wbs.side.public.next $(item)
$scoreboard players set $(back) wbs.side.public.previous $(item)