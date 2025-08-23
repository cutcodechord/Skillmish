#> c3func:mob_damage/damage_howmuch
#

# ダメージ量計算

# Tagを付与
    tag @s add c3func.mob_damage.hurt
    execute on attacker run tag @s add c3func.mob_damage.attacker

# 現在のHPをスコアに代入
    scoreboard players operation @s c3func.mob_damage.takendamage = @s c3func.mob_damage.hp_old

# TakenDamageを計算
    scoreboard players operation @s c3func.mob_damage.takendamage -= @s c3func.mob_damage.hp_current
    scoreboard players operation @s c3func.mob_damage.round = @s c3func.mob_damage.takendamage
    scoreboard players operation @s c3func.mob_damage.round %= $100 c3func.general.temp

# 四捨五入
    execute if score @s c3func.mob_damage.round matches 50.. run scoreboard players add @s c3func.mob_damage.takendamage 100

# 小数点以下を削除
    scoreboard players operation @s c3func.mob_damage.takendamage /= $100 c3func.general.temp

# 実行するFunction
    $function $(function)

# Tagを削除
    tag @s remove c3func.mob_damage.hurt

# Tagを削除
    tag @n[tag=c3func.mob_damage.attacker] remove c3func.mob_damage.attacker

