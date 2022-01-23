# VIP finale


# period
execute if score time_s internal matches 800 if score period internal matches 0 run worldborder set 20 3600
execute if score time_s internal matches 900 if score period internal matches 0 run function vip:main_game

execute if score time_s internal matches 1800 if score period internal matches 1 run worldborder set 125 1850

execute if score time_s internal matches 3000 if score period internal matches 1 run worldborder set 80 650

# bossbar
execute if score period internal matches 0 run bossbar set vip:main name ["",{"text":"VIP \u0020 \u0020","color":"green","bold":true},{"text":"25 minutes of preparation before your team's VIP is chosen."}]
execute if score period internal matches 0 run bossbar set vip:main max 900