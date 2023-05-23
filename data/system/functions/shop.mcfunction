execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:nether_star"}}] run scoreboard players add @s hold-shop 1
execute as @a if entity @s[nbt=!{SelectedItem:{id:"minecraft:nether_star"}}] run scoreboard players set @s hold-shop 0

execute as @a at @s if score @s hold-shop matches 1 run summon minecraft:wandering_trader ~ ~-2 ~ {DespawnDelay:-1,Offers:{Recipes:[{maxUses:999999,rewardExp:0b,buy:{id:"emerald",Count:8},sell:{id:"golden_apple",Count:1}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",Count:16},sell:{id:"snowball",Count:1,tag:{display:{Name:'[{"text":"Slowball","italic":false,"color":"aqua"},{"text":" (Right Click)","color":"gray"}]',Lore:['[{"text":"Creates a slow aura effect","italic":false,"color":"white"}]','[{"text":"when thrown on the ground.","italic":false,"color":"white"}]']}}}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",Count:20},sell:{id:"hay_block",Count:1,tag:{display:{Name:'[{"text":"Haystack","italic":false,"color":"yellow"},{"text":" (Press Q)","color":"gray"}]',Lore:['[{"text":"Generate a large haystack","italic":false,"color":"white"}]','[{"text":"to protect you from enemies.","italic":false,"color":"white"}]']}}}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",Count:32},sell:{id:"diamond",Count:1}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",Count:5},sell:{id:"spectral_arrow",Count:1,tag:{display:{Lore:['[{"text":"Glowing (0:10)","italic":false,"color":"blue"}]']}}}},{maxUses:999999,rewardExp:0b,buy:{id:"emerald",Count:64},buyB:{id:"emerald",Count:64},sell:{id:"totem_of_undying",Count:1}}]},Invulnerable:1b,NoAI:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:999999,Amplifier:0,ShowParticles:0b},{Id:11,Duration:999999,Amplifier:0,ShowParticles:0b}]}
execute as @a at @s if score @s hold-shop matches 1 run team join shop-entity @e[type=minecraft:wandering_trader,limit=1,distance=..3]

execute as @a at @s if score @s hold-shop matches 0 run tp @e[type=minecraft:wandering_trader,limit=1,distance=..3] ~ -256 ~
execute as @a at @s if score @s hold-shop matches 0 run effect clear @s[team=ingame] weakness

execute as @a at @s if score @s hold-shop > default hold-shop run tp @e[type=minecraft:wandering_trader,limit=1,distance=..3] @s
execute as @a at @s if score @s hold-shop > default hold-shop run effect give @s[team=ingame] minecraft:weakness 11 255 true
execute as @a at @s if score @s hold-shop > default hold-shop run title @s actionbar [{"text":"Stand still to use ","color":"white"},{"text":"Shop Menu","color":"yellow"},{"text":". Attacking is ","color":"white"},{"text":"disabled","color":"red"},{"text":" while the Shop Menu is available!","color":"white"}]
