# 1buttonshammy
shaman super macros
So far I have put together 2 macros, one for 1hand/shield and one for 2hander
The program checks for and applies lightning shield, rockbiter/or/windfury weapon, casts stormstrike on cooldown, casts flame shock and checks for flame shock debuff, if active casts earth shock. When below 30% mana, shocks are downranked to rank 3.

Known bugs: Sometimes it applies rockbiter when I want to cast windury.


shammy1button 1.1

Updated rotation (flame shock>earth shock) based on the gear I have now for solo play. Added downranking to rank 4 at 60% mana and rank 1 at 20%. Assuming you will be dropping at least windfury totem, I changed buff to rockbiter. That was only difference before so they should work the same no matter the weapons, but can easily swap earth/flame/frost or rockbiter/windfury. If I'm feeling lazy I just put it to windfury and let it brrrr without dropping totems.

Known bugs: Downranking code is sloppy will have to redo.



shammy1button 1.2

It has come to my attention that on turtle wow, the weapon buffs do not stack. So if you intend to use windfury as I do, you can't use the other ones. I guess in groups it's best to not use a weapon buff at all if you want to take advantage of windfury totem. So, code changed to apply and keep up windfury weapon. Also fixed downranking coding.



shaman1button 1.3

I swapped lightning shield for water shield and also added a group option. Spamming earth shock is lots of aggro, not bad for tanking, but in groups I opted to swap to flame shock. The "grp" version will scan target for the flame shock debuff and only cast if the debuff is not active. This also leaves earth shock available to use for it's spell silence ability. I also removed the weapon buff option in groups assuming I will be throwing down windfury totem, as they do not stack. If you are not for whatever reason, I left the code in there commented out so you can uncomment it and continue to auto weapon buff yourself if you wish. I stopped weapon swapping within this macro but left it because using weapon swap instead of /equip is VERY important, as /equip will leave you vulnerable to vendoring your items. Weaponswap macro is BEST PRACTICES.



REQUIRED ADDONS:

Super Macros, Quick Weapon Swap
