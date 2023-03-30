# 放置
execute as @e[type=minecraft:marker,tag=tc, tag=new] at @s run setblock ~ ~ ~ redstone_lamp
execute as @e[type=minecraft:marker,tag=tc, tag=new] at @s run scoreboard players set @s tnt_copy 0
execute as @e[type=minecraft:marker,tag=tc, tag=new] at @s run tag @s remove new

# 破壞
execute as @e[type=minecraft:marker,tag=tc, tag=!new] at @s run execute if block ~ ~ ~ air run kill @e[type=minecraft:item,distance=..1]
execute as @e[type=minecraft:marker,tag=tc, tag=!new] at @s run execute if block ~ ~ ~ air run function electricity:tnt-copy/get
execute as @e[type=minecraft:marker,tag=tc, tag=!new] at @s run execute if block ~ ~ ~ air run kill @s

# 工作
execute as @e[type=marker,tag=tc, tag=!new, scores={tnt_copy=0}] at @s if block ~ ~ ~ minecraft:redstone_lamp[lit=true] run scoreboard players set @s tnt_copy 1
execute as @e[scores={tnt_copy=1}] at @s run function electricity:tnt-copy/copy
execute as @e[scores={tnt_copy=2},limit=1] at @s if block ~ ~ ~ minecraft:redstone_lamp[lit=false] run scoreboard players set @s tnt_copy 0