#> c3func:mob_id/set_id
#

# MobにIDを設定

# 設定
    $scoreboard players operation @s $(score) = $current $(score)
    $scoreboard players add $current $(score) 1
