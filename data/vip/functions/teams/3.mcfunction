# VIP 3 teams


# red win
execute if score blue internal matches 0 if score green internal matches 0 if score red internal matches 1 run tag @a[team=red] add winner
execute if score blue internal matches 0 if score green internal matches 0 if score red internal matches 1 run function vip:win

# blue win
execute if score red internal matches 0 if score green internal matches 0 if score blue internal matches 1 run tag @a[team=blue] add winner
execute if score red internal matches 0 if score green internal matches 0 if score blue internal matches 1 run function vip:win

# green win
execute if score red internal matches 0 if score green internal matches 1 if score blue internal matches 0 run tag @a[team=green] add winner
execute if score red internal matches 0 if score green internal matches 1 if score blue internal matches 0 run function vip:win