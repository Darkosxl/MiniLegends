# Debug Tick Function
# Check for any book held
execute as @a[nbt={SelectedItem:{id:"minecraft:book"}}] run title @s actionbar {"text":"DEBUG: Holding A Book","color":"yellow"}
# Check for specific Tome (updated to match new MiniLegendsData format)
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{MiniLegendsData:{TomeType:"rein"}}}}}] run title @s actionbar {"text":"DEBUG: Holding Tome of reiN","color":"green"}
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{MiniLegendsData:{TomeType:"apollon"}}}}}] run title @s actionbar {"text":"DEBUG: Holding Tome of Apollon","color":"green"}
