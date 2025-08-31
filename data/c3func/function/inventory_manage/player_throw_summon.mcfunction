#> c3func:inventory_manage/player_throw_summon
#

# アイテムを召喚
    $summon minecraft:item $(x) $(y) $(z) {Item:{id:"$(id)",count:$(count),components:$(components)}}

    data remove storage c3func.player_throw id
    data remove storage c3func.player_throw components
    data remove storage c3func.player_throw count
    data remove storage c3func.player_throw x
    data remove storage c3func.player_throw y
    data remove storage c3func.player_throw z
