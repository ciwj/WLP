#
# Pick a boogey
#

execute if score $boogeyEnabled boogeyEnabled matches 1 if score $gameState gameState matches 2 run title @a title ["The boogeyman"]
execute if score $boogeyEnabled boogeyEnabled matches 1 if score $gameState gameState matches 2 run title @a subtitle ["is about to be chosen"]

execute if score $boogeyEnabled boogeyEnabled matches 1 if score $gameState gameState matches 2 run schedule function wlp:boogey/picker_helper_1 15s append 
execute if score $boogeyEnabled boogeyEnabled matches 1 if score $gameState gameState matches 2 run schedule function wlp:boogey/picker_helper_2 20s append 
