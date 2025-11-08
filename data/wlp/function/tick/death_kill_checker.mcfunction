#
# Runs every tick
#

execute as @a if score @s deathCheck matches 1 run function wlp:utils/remove_life
execute as @a run scoreboard players set @s deathCheck 0

execute as @a if score @s killCheck matches 1 run function wlp:utils/killed_player
execute as @a run scoreboard players set @s killCheck 0
