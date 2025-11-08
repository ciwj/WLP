#
# Datapack uninstall
#

# Remove teams

team remove wlp.darkgreen
team remove wlp.green
team remove wlp.yellow
team remove wlp.red
team remove wlp.spec 

tag @a remove player
tag @a remove spec
tag @a remove boogey

# Remove objectives

# Death checker
scoreboard objectives remove deathCheck
# Life counter - 0:random
scoreboard objectives remove lives 
# Game state check - 0:not started 1:game started/not in session 2: game started/in session
scoreboard objectives remove gameState
# Boogey toggle
scoreboard objectives remove boogeyEnabled
# Recipe management
gamerule doLimitedCrafting false

#
# Recipe objectives
#

scoreboard objectives remove saddleRecipe
scoreboard objectives remove tntRecipe
scoreboard objectives remove nametagRecipe