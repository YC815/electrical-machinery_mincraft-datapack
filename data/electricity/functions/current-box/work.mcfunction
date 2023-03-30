# 放置
execute as @e[type=minecraft:marker,tag=cb, tag=new] at @s run setblock ~ ~ ~ minecraft:dropper{Items:[{Count:1b,Slot:4b,id:"minecraft:spyglass",tag:{Tags:["gui","cb-gui"]}}],CustomName:'[{"text":"","italic":false},{"text":"電量儲箱"}]'}
execute as @e[type=minecraft:marker,tag=cb, tag=new] at @s run tag @s remove new

# 破壞
execute as @e[type=minecraft:marker,tag=cb, tag=!new] at @s run execute if block ~ ~ ~ air run kill @e[type=minecraft:item,distance=..1]
execute as @e[type=minecraft:marker,tag=cb, tag=!new] at @s run execute if block ~ ~ ~ air run function electricity:current-box/get
execute as @e[type=minecraft:marker,tag=cb, tag=!new] at @s run execute if block ~ ~ ~ air run kill @s

# 運作
execute as @e[type=minecraft:marker,tag=cb, tag=!new] at @s run item replace block ~ ~ ~ container.4 with minecraft:spyglass{Tags:[gui, cb-gui]}
execute as @e[type=minecraft:marker,tag=cb, tag=!new] at @s run item modify block ~ ~ ~ container.4 electricity:cb