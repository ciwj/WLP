#
# Settings menu
#


tellraw @s [{"text":"----------\nwrpt's Life Pack Settings","bold":true},"\n\n"]
# Title and boogey toggle
tellraw @s ["Boogey: ",{"text":"Enabled","color":"green","click_event":{"action":"run_command","command":"function wlp:boogey/enable_boogey"}}," | ",{"text":"Disabled","color":"red","click_event":{"action":"run_command","command":"function wlp:boogey/disable_boogey"}}," (",{"score":{"name":"$boogeyEnabled","objective":"boogeyEnabled"},"hover_event":{"action":"show_text","value":"0 - Disabled, 1 - Enabled"}},")"]
# Alternative recipes menu
tellraw @s ["Alternative Recipes: ",{"text":"[Click Here]","click_event":{"action":"run_command","command":"function wlp:settings/alt_recipes_menu"}}]
