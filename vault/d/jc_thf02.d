BEGIN ~JC_THF02~

IF ~Global("ReturnNashQuest","GLOBAL",4) Dead("JC_THF01")~ THEN BEGIN 2THF00
  SAY @0
  IF ~CheckStatLT(LastTalkedToBy,15,INT)~ THEN REPLY @1 GOTO 2THF01
  IF ~CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @2 GOTO 2THF02
END

IF ~~ THEN BEGIN 2THF01
  SAY @3
  IF ~~ THEN REPLY @4 JOURNAL @5 DO ~ForceSpell(Myself,WIZARD_IMPROVED_INVISIBILITY) ChangeEnemyAlly(Myself,EVILCUTOFF)
Enemy() CreateCreature("GOLEMS",[-1.-1],0) CreateCreature("GOLEMS",[-1.-1],0) CreateCreature("STALKE",[-1.-1],0)CreateCreature("STALKE",[-1.-1],0) SetGlobal("ReturnNashQuest","GLOBAL",7)~ EXIT
END

IF ~~ THEN BEGIN 2THF02
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 2THF03
  IF ~~ THEN REPLY @8 GOTO 2THF04
  IF ~~ THEN REPLY @9 GOTO 2THF03
END

IF ~~ THEN BEGIN 2THF03
  SAY @10
  IF ~~ THEN REPLY @4 JOURNAL @5 DO ~ForceSpell(Myself,WIZARD_IMPROVED_INVISIBILITY) ChangeEnemyAlly(Myself,EVILCUTOFF)
Enemy() CreateCreature("GOLEMS",[-1.-1],0) CreateCreature("GOLEMS",[-1.-1],0) CreateCreature("STALKE",[-1.-1],0)CreateCreature("STALKE",[-1.-1],0) SetGlobal("ReturnNashQuest","GLOBAL",7)~ EXIT
END

IF ~~ THEN BEGIN 2THF04
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 2THF05
  IF ~~ THEN REPLY @13 JOURNAL @14 DO ~AddexperienceParty(3000) ForceSpell(Myself,WIZARD_IMPROVED_INVISIBILITY) ChangeEnemyAlly(Myself,EVILCUTOFF) Enemy() CreateCreature("GOLEMS",[-1.-1],0)	CreateCreature("GOLEMS",[-1.-1],0) CreateCreature("STALKE",[-1.-1],0) CreateCreature("STALKE",[-1.-1],0) SetGlobal("ReturnNashQuest","GLOBAL",7)~ EXIT
END

IF ~~ THEN BEGIN 2THF05
  SAY @15
  IF ~~ THEN REPLY @16 JOURNAL @17 DO ~AddexperienceParty(6000) ForceSpell(Myself,WIZARD_IMPROVED_INVISIBILITY) ChangeEnemyAlly(Myself,EVILCUTOFF) Enemy() CreateCreature("GOLEMS",[-1.-1],0)	CreateCreature("GOLEMS",[-1.-1],0) CreateCreature("STALKE",[-1.-1],0) CreateCreature("STALKE",[-1.-1],0) SetGlobal("ReturnNashQuest","GLOBAL",7)~ EXIT
END