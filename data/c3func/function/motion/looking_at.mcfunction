#> c3func:motion/looking_at
#
# 必要 : 
#   $horizontalpower
#   $verticalpower


# AECの召喚
    execute positioned 0.0 0.0 0.0 rotated as @s run summon minecraft:marker ^ ^ ^0.4 {Tags:["c3func.looking_at.vector"]}
    data modify storage c3func.looking_at Pos set from entity @e[tag=c3func.looking_at.vector,limit=1] Pos

# 位置取得
    execute store result score $x c3func.general.temp run data get storage c3func.looking_at Pos[0] 1000
    execute store result score $y c3func.general.temp run data get storage c3func.looking_at Pos[1] 1000
    execute store result score $z c3func.general.temp run data get storage c3func.looking_at Pos[2] 1000

# ベクトル補正
    scoreboard players operation $x c3func.general.temp *= $horizontalpower c3func.general.temp
    scoreboard players operation $y c3func.general.temp *= $verticalpower c3func.general.temp
    scoreboard players operation $z c3func.general.temp *= $horizontalpower c3func.general.temp

# Motion適用
    execute store result storage c3func.looking_at Pos[0] double 0.00001 run scoreboard players get $x c3func.general.temp
    execute store result storage c3func.looking_at Pos[1] double 0.00001 run scoreboard players get $y c3func.general.temp
    execute store result storage c3func.looking_at Pos[2] double 0.00001 run scoreboard players get $z c3func.general.temp
    data modify entity @s Motion set from storage c3func.looking_at Pos

# リセット
    #data remove storage c3func.looking_at Pos
    scoreboard players reset $x
    scoreboard players reset $y
    scoreboard players reset $z
    scoreboard players reset $horizontalpower
    scoreboard players reset $verticalpower
    kill @e[tag=c3func.looking_at.vector]