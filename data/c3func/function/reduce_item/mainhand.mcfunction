#> c3func:reduce_item/mainhand
#

# メインハンドのアイテムを減らす

# アイテムコピー
    item replace entity @e[type=armor_stand,tag=c3func.reduce_item.amstd] weapon.mainhand from entity @s weapon.mainhand

# アイテムの個数をゲット＆減算
    execute store result score @e[type=armor_stand,tag=c3func.reduce_item.amstd] c3func.general.temp run data get entity @e[type=armor_stand,tag=c3func.reduce_item.amstd,limit=1] HandItems.[0].count
    $scoreboard players remove @e[type=armor_stand,tag=c3func.reduce_item.amstd] c3func.general.temp $(count)

# 0以下なら空気に
    execute as @e[type=armor_stand,tag=c3func.reduce_item.amstd,scores={c3func.general.temp=..0}] run item replace entity @s weapon.mainhand with air

# Storageに一時保存
    execute store result storage c3func.reduce_item count byte 1 run scoreboard players get @e[type=armor_stand,tag=c3func.reduce_item.amstd,limit=1] c3func.general.temp

# スコアリセット
    scoreboard players reset @e[type=armor_stand,tag=c3func.reduce_item.amstd,limit=1] c3func.general.temp

# 個数をセット、プレイヤーに戻す
    data modify entity @e[type=armor_stand,tag=c3func.reduce_item.amstd,limit=1] HandItems.[0].count set from storage c3func.reduce_item count
    item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=c3func.reduce_item.amstd,limit=1] weapon.mainhand

# Storageを削除
    data remove storage c3func.reduce_item count
