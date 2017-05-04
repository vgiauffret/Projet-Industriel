PROGRAM_NAME='EIB_Table'
(*{{PS_SOURCE_INFO(PROGRAM STATS)                          *)
(***********************************************************)
(*  FILE CREATED ON: 04/25/2002 AT: 15:44:29               *)
(***********************************************************)
(*  FILE_LAST_MODIFIED_ON: 07/19/2006  AT: 18:39:11        *)
(***********************************************************)
(*  ORPHAN_FILE_PLATFORM: 1                                *)
(***********************************************************)
(*!!FILE REVISION:                                         *)
(*  REVISION DATE: 01/21/2004                              *)
(*                                                         *)
(*  COMMENTS:                                              *)
(*                                                         *)
(***********************************************************)
(*!!FILE REVISION:                                         *)
(*  REVISION DATE: 04/25/2002                              *)
(*                                                         *)
(*  COMMENTS:                                              *)
(*                                                         *)
(***********************************************************)
(*}}PS_SOURCE_INFO                                         *)
(***********************************************************)

DEFINE_VARIABLE
Counter


DEFINE_START
Counter=0
WAIT_UNTIL ([vdvKNX, 3001])	// Startverzögerung, Modul meldet bereit für ADD
{
	Counter = 1
}

#INCLUDE 'EIB_Tools.axi'

DEFINE_PROGRAM

WAIT 1
{
	IF(Counter)
	{
		SWITCH(Counter)
		{
			CASE  1:	EIBAdd(vdvKNX,  1, eibSwitch, '0/0/1', "")	//Lumière Gauche
			CASE  2:	EIBAdd(vdvKNX,  2, eibSwitch, '0/0/2', "")  	//Lumière droite
			CASE  3:	EIBAdd(vdvKNX,  3, eibSwitch, '0/1/0', "")  	//Volet Montée
			CASE  4:	EIBAdd(vdvKNX,  4, eibSwitch, '0/1/1', "")  	//Volet Descente
			CASE  5:	EIBAdd(vdvKNX,  5, eibSwitch, '0/1/2', "")  	//Inclinaison Montée/Stop
			DEFAULT:  Counter = 0
		}	// Switch
		IF (Counter)
		{
			Counter ++
		}
  }	// IF (Counter)
}	// WAIT
