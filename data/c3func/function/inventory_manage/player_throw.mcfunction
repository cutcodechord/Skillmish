#> c3func:inventory_manage/player_throw
#

# アイテムを投げる
    data modify storage c3func.player_throw components set value {}
    data modify storage c3func.player_throw count set value 1

    $data modify storage c3func.player_throw id set from entity @s Inventory[{Slot:$(slot_nbt)}].id
    $data modify storage c3func.player_throw components set from entity @s Inventory[{Slot:$(slot_nbt)}].components
    $data modify storage c3func.player_throw count set from entity @s Inventory[{Slot:$(slot_nbt)}].count

    $data merge storage c3func.player_throw {x:"$(x)",y:"$(y)",z:"$(z)"}

# アイテムをドロップ
    function c3func:inventory_manage/player_throw_summon with storage c3func.player_throw