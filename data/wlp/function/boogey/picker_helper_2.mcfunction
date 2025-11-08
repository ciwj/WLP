#
# Boogey announcement helper function
#

execute as @r[scores={lives=2..}] run tag @s add boogey
execute as @a[tag=boogey] run title @s title [{"text":"The Boogeyman","color":"red"}]
execute as @a[tag=!boogey] run title @s title [{"text":"NOT The Boogeyman","color":"green"}]