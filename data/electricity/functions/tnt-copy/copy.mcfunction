execute if score @e[limit=1,distance=..16, type=marker, tag=cb] electricity matches 15.. run scoreboard players set @s tnt_copy 2
execute if score @e[limit=1,distance=..16, type=marker, tag=cb] electricity matches 15.. run scoreboard players remove @e[limit=1,distance=..16, type=marker, tag=cb] electricity 15
execute if score @s tnt_copy matches 2 run summon tnt ~ ~-0.5 ~ {Fuse:30}
