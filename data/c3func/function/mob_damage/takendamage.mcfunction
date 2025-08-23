#> c3func:mob_damage/takendamage
#

# ダメージ検知

# 現在のHPをスコアに代入
    execute store result score @s c3func.mob_damage.hp_current run data get entity @s Health 100

# hp_currentとhp_oldを比較
    $execute if score @s c3func.mob_damage.hp_current < @s c3func.mob_damage.hp_old run function c3func:mob_damage/damage_howmuch {"function":"$(function)"}

# hp_oldを更新
    execute store result score @s c3func.mob_damage.hp_old run data get entity @s Health 100