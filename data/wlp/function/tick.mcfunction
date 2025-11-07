#
# Runs every tick
#

execute as @a if score @s deathCheck matches 1 run function wlp:utils/process_death
execute as @a run scoreboard players set @s deathCheck 0


# execute if score $gameState gameState matches 1 run function wlp:tick/set_gamemode