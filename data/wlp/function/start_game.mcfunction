#
# Start game and session
#

time set day
weather clear
effect give @a minecraft:saturation 5 5
effect give @a minecraft:instant_health 1 4

scoreboard players set $gameState gameState 2
# Set life count
execute unless score $lives lives matches 0 run scoreboard players operation @a[tag=player] lives = $lives lives
execute as @a[tag=player] if score $lives lives matches 0 store result score @s lives run random value 2..7

# Set teams
execute as @a[tag=player] if score @s lives matches 1 run team join wlp.red @s
execute as @a[tag=player] if score @s lives matches 2 run team join wlp.yellow @s
execute as @a[tag=player] if score @s lives matches 3 run team join wlp.green @s
execute as @a[tag=player,scores={lives=4..}] run team join wlp.darkgreen @s 
execute as @a[tag=spec] run team join wlp.spec

# Set gamemodes
gamemode survival @a[team=wlp.darkgreen]
gamemode survival @a[team=wlp.green]
gamemode survival @a[team=wlp.yellow]
gamemode survival @a[team=wlp.red]
gamemode spectator @a[team=wlp.spec]

# Death & kill checker
scoreboard objectives add deathCheck deathCount deathCheck
scoreboard players set @a deathCheck 0 
scoreboard objectives add killCheck playerKillCount
scoreboard players set @a[tag=player] killCheck 0

#Announce to players
title @a title ["Game started!"]

execute as @a[tag=player,scores={lives=4..}] run title @s subtitle ["You have ",{"color":"dark_green","score":{"name":"@s","objective":"lives"}}," lives"]
execute as @a[tag=player,scores={lives=3}] run title @s subtitle ["You have ",{"color":"green","score":{"name":"@s","objective":"lives"}}," lives"]
execute as @a[tag=player,scores={lives=2}] run title @s subtitle ["You have ",{"color":"yellow","score":{"name":"@s","objective":"lives"}}," lives"]
execute as @a[tag=player,scores={lives=1}] run title @s subtitle ["You have ",{"color":"red","score":{"name":"@s","objective":"lives"}}," lives"]