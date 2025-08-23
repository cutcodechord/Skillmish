#> c3func:player_id/set_id
#

# PlayerにIDを設定

# 設定
    $scoreboard players operation @s $(score) = $current $(score)
    $scoreboard players add $current $(score) 1