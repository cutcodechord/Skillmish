#> c3func:inventory_manage/container_throw
#

# アイテムを投げる
    data modify storage c3func.container_throw components set value {}
    data modify storage c3func.container_throw count set value 1

    $data modify storage c3func.container_throw id set from block ~ ~ ~ Items[{Slot:$(slot_nbt)}].id
    $data modify storage c3func.container_throw components set from block ~ ~ ~ Items[{Slot:$(slot_nbt)}].components
    $data modify storage c3func.container_throw count set from block ~ ~ ~ Items[{Slot:$(slot_nbt)}].count

    
    $data merge storage c3func.container_throw {x:"$(x)",y:"$(y)",z:"$(z)"}

# アイテムをドロップ
    function c3func:inventory_manage/container_throw_summon with storage c3func.container_throw