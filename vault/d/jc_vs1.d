BEGIN ~JC_VS1~

IF ~!PartyHasItem("SW1H19")~ THEN BEGIN 1VS0 
  SAY @0
  IF ~~ THEN DO ~ForceSpell(Myself,WIZARD_FIREBALL) ForceSpell(Myself,WIZARD_FIREBALL) ForceSpell(Myself,WIZARD_IMPROVED_INVISIBILITY)~ EXIT
END

IF ~PartyHasItem("SW1H19")~ THEN BEGIN 1VS1 
  SAY @1
  IF ~~ THEN REPLY @2 DO ~ForceSpell(Myself,WIZARD_FIREBALL) Wait(1) ForceSpell(Myself,WIZARD_FIREBALL) Wait(4)
ActionOverride(Player1,LeaveAreaLUAPanic("ARA101","",[-1.-1],0)) ActionOverride(Player1,LeaveAreaLUA("ARA101","",[-1.-1],0))
ActionOverride(Player2,LeaveAreaLUA("ARA101","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("ARA101","",[-1.-1],0))
ActionOverride(Player4,LeaveAreaLUA("ARA101","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("ARA101","",[-1.-1],0))
ActionOverride(Player6,LeaveAreaLUA("ARA101","",[-1.-1],0))~ EXIT
  IF ~~ THEN REPLY @3 DO ~ForceSpell(Myself,WIZARD_FIREBALL) ForceSpell(Myself,WIZARD_IMPROVED_INVISIBILITY)~ EXIT
END