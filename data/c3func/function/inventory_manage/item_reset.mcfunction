#> c3func:inventory_manage/item_reset
#

# アイテムをリセット
# 配置
    $execute unless items entity @s $(slot) $(item) run function c3func:inventory_manage/player_throw {slot_nbt:"$(slot_nbt)",x:"~",y:"~",z:"~"}
    $item replace entity @s $(slot) with $(item)