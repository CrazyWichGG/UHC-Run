execute if score lobby game-state matches 1 if score ingame game-state matches 0 at @e[type=minecraft:armor_stand,name="map-center",limit=1] positioned ~-25 -64 ~-25 as @a if entity @s[dx=49,dy=384,dz=49] run tag @s add lobby-inborder
execute if score lobby game-state matches 1 if score ingame game-state matches 0 at @e[type=minecraft:armor_stand,name="map-center",limit=1] positioned ~-25 -64 ~-25 as @a unless entity @s[dx=49,dy=384,dz=49] run tag @s remove lobby-inborder

execute if score lobby game-state matches 1 if score ingame game-state matches 0 run execute as @e[type=minecraft:armor_stand,name="map-center",limit=1] at @s run tp @a[tag=!lobby-inborder] ~ ~ ~