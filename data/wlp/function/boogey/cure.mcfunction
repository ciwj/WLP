#
# Cure boogey
#

execute as @s[tag=boogey] run title @s title ["You've been ",{"text":"cured","color":"green"}]
execute as @s[tag=boogey] run title @a subtitle ["of the boogey curse!"]

execute as @s[tag=boogey] run tag @s remove boogey