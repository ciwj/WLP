#
# On player death
# 

# Change life colour
execute as @s[team=wlp.red] unless score $gameState gameState matches 0 run tellraw @s ["",{"text":"RIP <3"},]
execute as @s[team=wlp.red] unless score $gameState gameState matches 0 run summon lightning_bolt ~ ~ ~
execute as @s[team=wlp.red] unless score $gameState gameState matches 0 run team join wlp.spec

execute as @s[team=wlp.yellow] unless score $gameState gameState matches 0 run tellraw @s ["",{"text":"You are now a "},{"text":"red","color":"red"},{"text":" life!"}]
execute as @s[team=wlp.yellow] unless score $gameState gameState matches 0 run team join wlp.red

execute as @s[team=wlp.green] unless score $gameState gameState matches 0 run tellraw @s[team=wlp.green] ["",{"text":"You are now a "},{"text":"yellow","color":"yellow"},{"text":" life!"}]
execute as @s[team=wlp.green] unless score $gameState gameState matches 0 run team join wlp.yellow

# Remove life from counter
execute as @s unless score $gameState gameState matches 0 run scoreboard players remove @s lives 1

# Change dark green life colour if required
execute as @s[team=wlp.darkgreen] if score @s lives matches 3 unless score $gameState gameState matches 0 run tellraw @s ["",{"text":"You are now a "},{"text":"green","color":"green"},{"text":" life!"}]
execute as @s[team=wlp.darkgreen] if score @s lives matches 3 unless score $gameState gameState matches 0 run team join wlp.green

execute as @s[team=wlp.darkgreen] unless score @s lives matches 3 unless score $gameState gameState matches 0 run tellraw @s[team=wlp.darkgreen] ["You now have ",{"color":"dark_green","score":{"name":"@s","objective":"lives"}}," lives!"]


#Update gamemodes
gamemode survival @a[team=wlp.darkgreen]
gamemode survival @a[team=wlp.green]
gamemode survival @a[team=wlp.yellow]
gamemode survival @a[team=wlp.red]
gamemode spectator @a[team=wlp.spec]
