BEGIN ~D5FPSP2~

IF ~Global("D5FPSPNT","GLOBAL",1)~ THEN BEGIN d5fpsp2
  SAY ~Choose an ability:~
  IF ~~ THEN REPLY ~Cast spells spontaneously~ GOTO d5fpsp2_1			//	spontaneous
  IF ~~ THEN REPLY ~No change, cast spells normally~ GOTO d5fpsp2_2			//	no change
END

IF ~~ THEN BEGIN d5fpsp2_1 		// spontaneous
  SAY ~Cast spells spontaneously?~
  IF ~~ THEN REPLY ~Confirmed, cast spontaneously.~ DO ~ApplySpellRES("D5FPSPT",Myself)~ EXIT 
  IF ~~ THEN REPLY ~Reconsider~ GOTO d5fpsp2 
END
IF ~~ THEN BEGIN d5fpsp2_2 		// no change
  SAY ~Cast spells normally?~
  IF ~~ THEN REPLY ~Confirmed, no change, cast spells normally.~ EXIT 
  IF ~~ THEN REPLY ~Reconsider~ GOTO d5fpsp2 
END
