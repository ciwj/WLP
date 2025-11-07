#
# Update recipes - tick tagged
#

execute as @a if score $saddleRecipe saddleRecipe matches 0 run recipe take @a wlp:saddle_alt
execute as @a if score $saddleRecipe saddleRecipe matches 1 run recipe give @a wlp:saddle_alt

execute as @a if score $tntRecipe tntRecipe matches 0 run recipe take @a wlp:tnt_alt
execute as @a if score $tntRecipe tntRecipe matches 1 run recipe give @a wlp:tnt_alt

execute as @a if score $nametagRecipe nametagRecipe matches 0 run recipe take @a wlp:nametag_alt
execute as @a if score $nametagRecipe nametagRecipe matches 1 run recipe give @a wlp:nametag_alt