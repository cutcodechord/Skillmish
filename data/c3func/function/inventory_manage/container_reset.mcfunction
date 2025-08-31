#> c3func:inventory_manage/container_reset
#

# アイテムをリセット
# 配置
    $execute unless items block ~ ~ ~ $(slot) $(item) run function c3func:inventory_manage/container_throw {slot_nbt:"$(slot_nbt)",x:"~",y:"~1",z:"~"}
    $item replace block ~ ~ ~ $(slot) with $(item) 