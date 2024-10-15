/script if false then CastSpellByName("Stormstrike") end
/script WeaponSwap("*YOUR 2HAND WEAPON HERE*"); --#1
/script WeaponSwap("*YOUR 1HAND WEAPON HERE*", "YOUR SHIELD/OFFHAND HERE*"); --#2

/script shaman_1button()
// OR // 
/script shaman_1buttongrp()

/attack



-- This is a SAMPLE of what text would go in the left box. You would replace the *YOUR WEAPON HERE* with whatever weapon you want to equip if you so desire.
-- You would use EITHER #1 or #2 for whichever weapon setup you want. You can also change the "Stormstrike" to whatever is in your spell book you would like to use as the icon for this macro.
-- If you are solo, use main /script 1button. If you want to use the group setup, make sure the macro is changed to /script 1buttongrp.

-- I stopped using the weapon swap macro as part of the script macro, so I can swap to shield with same atk button. Using weapon swap macro is best practice to not accidentally vendor weapons.
