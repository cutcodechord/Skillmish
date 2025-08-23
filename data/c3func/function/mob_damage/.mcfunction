#> c3func:mob_damage/
#

# Mob_damageの呼び出し

# マクロ
    $execute as @e[type=!#c3func:nomobentity,type=!player] run function c3func:mob_damage/takendamage {"function":"$(function)"}

# HP設定
    execute as @e[type=!#c3func:nomobentity,type=!player,tag=!c3func.mob_damage.marked] run function c3func:mob_damage/hp_set

# 死亡設定
    execute as @e[type=!#c3func:nomobentity,type=!player,tag=c3func.mob_damage.marked] if score @s c3func.mob_damage.hp_current < @s c3func.mob_damage.hp_0 run kill @s