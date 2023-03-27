# 召喚 
execute as @e[type=minecraft:marker,tag=se, tag=new] at @s run setblock ~ ~ ~ minecraft:daylight_detector
scoreboard players set @e[type=minecraft:marker,tag=se, tag=new] timerI 20
execute as @e[type=minecraft:marker,tag=se, tag=new] at @s run tag @s remove new

# 破壞
execute as @e[type=minecraft:marker,tag=se, tag=!new] at @s run execute if block ~ ~ ~ air run kill @e[type=minecraft:item,distance=..1]
execute as @e[type=minecraft:marker,tag=se, tag=!new] at @s run execute if block ~ ~ ~ air run function electricity:solar-energy/get
execute as @e[type=minecraft:marker,tag=se, tag=!new] at @s run execute if block ~ ~ ~ air run kill @s

# 電力
scoreboard players remove @e[type=minecraft:marker,tag=se, tag=!new, scores={timerI=1..}] timerI 1
execute as @e[type=minecraft:marker,tag=se, tag=!new,scores={timerI=1}] at @s run function electricity:solar-energy/regc
