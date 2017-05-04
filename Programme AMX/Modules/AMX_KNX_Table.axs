MODULE_NAME='AMX_KNX_Table'(DEV dvKNX)
(*####                                                                          *)
(*# Legal Notice :                                                              *)
(*#    Copyright, AMX LLC, 2009                                                 *)
(*#    Private, proprietary information, the sole property of AMX LLC.  The     *)
(*#    contents, ideas, and concepts expressed herein are not to be disclosed   *)
(*#    except within the confines of a confidential relationship and only       *)
(*#    then on a need to know basis.                                            *)
(*#                                                                             *)
(*#    Any entity in possession of this AMX Software shall not, and shall not   *)
(*#    permit any other person to, disclose, display, loan, publish, transfer   *)
(*#    (whether by sale, assignment, exchange, gift, operation of law or        *)
(*#    otherwise), license, sublicense, copy, or otherwise disseminate this     *)
(*#    AMX Software.                                                            *)
(*#                                                                             *)
(*#    This AMX Software is owned by AMX and is protected by United States      *)
(*#    copyright laws, patent laws, international treaty provisions, and/or     *)
(*#    state of Texas trade secret laws.                                        *)
(*#                                                                             *)
(*#    Portions of this AMX Software may, from time to time, include            *)
(*#    pre-release code and such code may not be at the level of performance,   *)
(*#    compatibility and functionality of the final code. The pre-release code  *)
(*#    may not operate correctly and may be substantially modified prior to     *)
(*#    final release or certain features may not be generally released. AMX is  *)
(*#    not obligated to make or support any pre-release code. All pre-release   *)
(*#    code is provided "as is" with no warranties.                             *)
(*#                                                                             *)
(*#    This AMX Software is provided with restricted rights. Use, duplication,  *)
(*#    or disclosure by the Government is subject to restrictions as set forth  *)
(*#    in subparagraph (1)(ii) of The Rights in Technical Data and Computer     *)
(*#    Software clause at DFARS 252.227-7013 or subparagraphs (1) and (2) of    *)
(*#    the Commercial Computer Software Restricted Rights at 48 CFR 52.227-19,  *)
(*#    as applicable.                                                           *)
(*####                                                                          *)
(*{{PS_SOURCE_INFO(PROGRAM STATS)                          *)
(***********************************************************)
(*  FILE CREATED ON: 05/22/2009 						               *)
(***********************************************************)
(*  FILE_LAST_MODIFIED_ON: 													       *)
(***********************************************************)
(*  ORPHAN_FILE_PLATFORM:                                  *)
(***********************************************************)
(*!!FILE REVISION:                                         *)
(*  REVISION DATE: 						                             *)
(*                                                         *)
(*  COMMENTS:  For this example code both NXBs will be     *)
(*             configured with the same ETS address.       *)
(*																												 *)
(*		ALL Group Addresses must be modified to use site     *)
(*    specific addressing.																 *)
(*		AMX cannot provide support for ETS configuration	   *)
(*																												 *)				
(*																												 *)					
(*                                                         *)
(***********************************************************)
(*!!FILE REVISION:                                         *)
(*  REVISION DATE: 						                             *)
(*                                                         *)
(*  COMMENTS:                                              *)
(*                                                         *)
(***********************************************************)
(*}}PS_SOURCE_INFO                                         *)
(***********************************************************)
DEFINE_CONSTANT

DEFINE_VARIABLE

integer counter
constant TL_KNX_Table_ID =	1
long TL_Array_KNX_Table[] =	{200}

DEFINE_START
Counter=0

#INCLUDE 'KNX_Tools.axi'

DEFINE_EVENT

data_event[dvKNX]
{
    online:  //Start configuration upload when NXB-KNX comes online.
    {
	wait 10 //1 second delay
	{
	    counter = 1
	    timeline_create (TL_KNX_table_ID,TL_Array_KNX_Table,1,timeline_relative,timeline_repeat)
	}
    }
}


timeline_event[TL_KNX_table_ID]
{
    if(Counter)
    {
	switch(Counter)
	{
	    //GeneralVilla
	    case 1: 
	    {
		KNXAdd(dvKnx, 1, knxSWITCH, '1/0/0', "")		// Villa_Lum_OnOff
		KNXAdd(dvKnx, 2, knxSWITCH, '1/0/1', "")		// Villa_Lum_Sig
		KNXAdd(dvKnx, 3, knxSWITCH, '1/0/2', "")		// Villa_Sto_Mnt
		KNXAdd(dvKnx, 4, knxSWITCH, '1/0/3', "")		// Villa_Sto_Des
		KNXAdd(dvKnx, 5, knxSWITCH, '1/0/4', "")		// Sous_Sol_Lum_OnOff
	    }
	    case 2: 
	    {
		KNXAdd(dvKnx, 6, knxSWITCH, '1/0/5', "")		// Sous_Sol_Lum_Sig
		KNXAdd(dvKnx, 7, knxSWITCH, '1/0/6', "")		// Sous_Sol_Sto_Mnt
		KNXAdd(dvKnx, 8, knxSWITCH, '1/0/7', "")		// Sous_Sol_Sto_Des
		KNXAdd(dvKnx, 9, knxSWITCH, '1/0/8', "")		// Rez_Lum_OnOff
		KNXAdd(dvKnx, 10, knxSWITCH, '1/0/9', "")		// Rez_Lum_Sig
	    }
	    case 3: 
	    {
		KNXAdd(dvKnx, 11, knxSWITCH, '1/0/10', "")	// Rez_Sto_Mnt
		KNXAdd(dvKnx, 12, knxSWITCH, '1/0/11', "")	// Rez_Sto_Des
		KNXAdd(dvKnx, 13, knxSWITCH, '1/0/12', "")	//Etage1_Lum_OnOff
		KNXAdd(dvKnx, 14, knxSWITCH, '1/0/13', "")	//Etage1_Lum_Sig
		KNXAdd(dvKnx, 15, knxSWITCH, '1/0/14', "")	//Etage1_Sto_Mnt
	    }
	    case 4: 
	    {
		KNXAdd(dvKnx, 16, knxSWITCH, '1/0/15', "")	//Etage1_Sto_Des
		KNXAdd(dvKnx, 17, knxSWITCH, '1/0/16', "")	//Etage2_Lum_OnOff
		KNXAdd(dvKnx, 18, knxSWITCH, '1/0/17', "")	//Etage2_Lum_Sig
		KNXAdd(dvKnx, 19, knxSWITCH, '1/0/18', "")	//Etage2_Sto_Mnt
		KNXAdd(dvKnx, 20, knxSWITCH, '1/0/19', "")	//Etage2_Sto_Des
	    }
	    case 5: 
	    {
		KNXAdd(dvKnx, 21, knxSWITCH, '1/0/20', "")	//Verrou_Lum_SousSol
		KNXAdd(dvKnx, 22, knxSWITCH, '1/0/21', "")	//Verrou_Lum_Rez
		KNXAdd(dvKnx, 23, knxSWITCH, '1/0/22', "")	//Verrou_Lum_1er
		KNXAdd(dvKnx, 24, knxSWITCH, '1/0/23', "")	//Verrou_Lum_2eme
		KNXAdd(dvKnx, 25, knxSWITCH, '1/0/24', "")	//Verrou_Lum_Villa
	    }
	
	    // Sous_Sol   (Commandes)
	    case 6: 
	    {
		KNXAdd(dvKnx, 26, knxSWITCH, '2/0/0', "")	//Billard_Lum_OnOff     		ZS001
		KNXAdd(dvKnx, 27, knxSWITCH, '2/0/1', "")	//Billard_Lum_Sig			ZS001
		KNXAdd(dvKnx, 28, knxSWITCH, '2/0/2', "")	//Cave_a_vin_Lum_OnOff	ZS002
		KNXAdd(dvKnx, 29, knxSWITCH, '2/0/3', "")	//Cave_a_vin_Lum_Sig		ZS002
		KNXAdd(dvKnx, 30, knxSWITCH, '2/0/4', "")	//Salle_de_bain_Lum_OnOff	ZS003
	    }
	    case 7: 
	    {
		KNXAdd(dvKnx, 31, knxSWITCH, '2/0/5', "")	//Salle_de_bain_Lum_Sig	ZS003
		KNXAdd(dvKnx, 32, knxSWITCH, '2/0/6', "")	//Toilette_Lum_OnOff		ZS004
		KNXAdd(dvKnx, 33, knxSWITCH, '2/0/7', "")	//Toilette_Lum_Sig		ZS004
		KNXAdd(dvKnx, 34, knxSWITCH, '2/0/8', "")	//Buanderie_Lum_OnOff	ZS005
		KNXAdd(dvKnx, 35, knxSWITCH, '2/0/9', "")	//Buanderie_Lum_Sig		ZS005
	    }
	    case 8: 
	    {
		KNXAdd(dvKnx, 36, knxSWITCH, '2/0/10', "")	//Coffre_Lum_OnOff		ZS006
		KNXAdd(dvKnx, 37, knxSWITCH, '2/0/11', "")	//Coffre_Lum_Sig			ZS006
		KNXAdd(dvKnx, 38, knxSWITCH, '2/0/12', "")	//Local_Techn_Lum_OnOff	ZS007
		KNXAdd(dvKnx, 39, knxSWITCH, '2/0/13', "")	//Local_Techn_Lum_Sig		ZS007
		KNXAdd(dvKnx, 40, knxSWITCH, '2/0/14', "")	//Escalier_Lum_OnOff	ZS009
	    }
	    case 9: 
	    {
		KNXAdd(dvKnx, 41, knxSWITCH, '2/0/15', "")	//Escalier_Lum_Sig		ZS009
		KNXAdd(dvKnx, 42, knxSWITCH, '2/0/16', "")	//Tunnel_Lum_OnOff
		KNXAdd(dvKnx, 43, knxSWITCH, '2/0/17', "")	//Tunnel_Lum_Sig
		KNXAdd(dvKnx, 44, knxSWITCH, '2/0/18', "")	//ZEXT_OnOff
		KNXAdd(dvKnx, 45, knxSWITCH, '2/0/19', "")	//PVS_01_BP1_Gen // all Billard on/off
	    }
	    case 10: 
	    {
		KNXAdd(dvKnx, 46, knxSWITCH, '2/0/20', "")	//PVS_01_BP2_DimM
		KNXAdd(dvKnx, 47, knxSWITCH, '2/0/21', "")	//PVS_01_BP3_DimP
		KNXAdd(dvKnx, 48, knxSWITCH, '2/0/22', "")	//PVS_01_BP4_Res
		KNXAdd(dvKnx, 49, knxSWITCH, '2/0/23', "")	//PVS_01_BP5_Scene1
		KNXAdd(dvKnx, 50, knxSWITCH, '2/0/24', "")	//PVS_01_BP6_Res
	    }	
	    case 11: 
	    {
		KNXAdd(dvKnx, 51, knxSWITCH, '2/0/25', "")	//PVS_01_BP7_Res
		KNXAdd(dvKnx, 52, knxSWITCH, '2/0/26', "")	//PVS_01_BP8_Res
		KNXAdd(dvKnx, 53, knxSWITCH, '2/0/27', "")	//PVS_01_Led1
		KNXAdd(dvKnx, 54, knxSWITCH, '2/0/28', "")	//PVS_01_Led2
		KNXAdd(dvKnx, 55, knxSWITCH, '2/0/29', "")	//PVS_01_Led3
	    }	
	    case 12: 
	    {
		KNXAdd(dvKnx, 56, knxSWITCH, '2/0/30', "")	//PVS_01_Led4
		KNXAdd(dvKnx, 57, knxSWITCH, '2/0/31', "")	//PVS_02_BP1_Gen
		KNXAdd(dvKnx, 58, knxSWITCH, '2/0/32', "")	//PVS_02_BP2_DimM
		KNXAdd(dvKnx, 59, knxSWITCH, '2/0/33', "")	//PVS_02_BP3_DimP
		KNXAdd(dvKnx, 60, knxSWITCH, '2/0/34', "")	//PVS_02_BP4_Res
	    }
	    case 13: 
	    {
		KNXAdd(dvKnx, 61, knxSWITCH, '2/0/35', "")	//PVS_02_BP5_Scene1
		KNXAdd(dvKnx, 62, knxSWITCH, '2/0/36', "")	//PVS_02_BP6_Res
		KNXAdd(dvKnx, 63, knxSWITCH, '2/0/37', "")	//PVS_02_BP7_Res
		KNXAdd(dvKnx, 64, knxSWITCH, '2/0/38', "")	//PVS_02_BP8_Res
		KNXAdd(dvKnx, 65, knxSWITCH, '2/0/39', "")	//PVS_02_Led1
	    }
	    case 14: 
	    {
		KNXAdd(dvKnx, 66, knxSWITCH, '2/0/40', "")	//PVS_02_Led2
		KNXAdd(dvKnx, 67, knxSWITCH, '2/0/41', "")	//PVS_02_Led3
		KNXAdd(dvKnx, 68, knxSWITCH, '2/0/42', "")	//PVS_02_Led4
		KNXAdd(dvKnx, 69, knxSWITCH, '2/0/43', "")	//PVS_03_BP1_Gen
		KNXAdd(dvKnx, 70, knxSWITCH, '2/0/44', "")	//PVS_03_BP2_DimM
	    }
	    case 15: 
	    {
		KNXAdd(dvKnx, 71, knxSWITCH, '2/0/45', "")	//PVS_03_BP3_DimP
		KNXAdd(dvKnx, 72, knxSWITCH, '2/0/46', "")	//PVS_03_BP4_Res
		KNXAdd(dvKnx, 73, knxSWITCH, '2/0/47', "")	//PVS_03_BP5_Scene1
		KNXAdd(dvKnx, 74, knxSWITCH, '2/0/48', "")	//PVS_03_BP6_Res
		KNXAdd(dvKnx, 75, knxSWITCH, '2/0/49', "")	//PVS_03_BP7_Res
	    }
	    case 16: 
	    {
		KNXAdd(dvKnx, 76, knxSWITCH, '2/0/50', "")	//PVS_03_BP8_Res
		KNXAdd(dvKnx, 77, knxSWITCH, '2/0/51', "")	//PVS_03_Led1
		KNXAdd(dvKnx, 78, knxSWITCH, '2/0/52', "")	//PVS_03_Led2
		KNXAdd(dvKnx, 79, knxSWITCH, '2/0/53', "")	//PVS_03_Led3
		KNXAdd(dvKnx, 80, knxSWITCH, '2/0/54', "")	//PVS_03_Led4
	    }
	    case 17: 
	    {
		KNXAdd(dvKnx, 81, knxSWITCH, '2/0/55', "")	//SVS_01_BP1_Gen
		KNXAdd(dvKnx, 82, knxSWITCH, '2/0/56', "")	//SVS_01_BP2_Res
		KNXAdd(dvKnx, 83, knxSWITCH, '2/0/57', "")	//SVS_02_BP1_Gen
		KNXAdd(dvKnx, 84, knxSWITCH, '2/0/58', "")	//SVS_02_BP2_Res
		KNXAdd(dvKnx, 85, knxSWITCH, '2/0/59', "")	//SVS_03_BP1_Gen
	    }
	    case 18: 
	    {
		KNXAdd(dvKnx, 86, knxSWITCH, '2/0/60', "")	//SVS_03_BP2_Res
		KNXAdd(dvKnx, 87, knxSWITCH, '2/0/61', "")	//SVS_04_BP1_Gen
		KNXAdd(dvKnx, 88, knxSWITCH, '2/0/62', "")	//SVS_04_BP2_Res
		KNXAdd(dvKnx, 89, knxSWITCH, '2/0/63', "")	//SVS_05_BP1_Gen
		KNXAdd(dvKnx, 90, knxSWITCH, '2/0/64', "")	//SVS_05_BP2_Res
	    }
	    case 19: 
	    {
		KNXAdd(dvKnx, 91, knxSWITCH, '2/0/65', "")	//SVS_06_BP1_Gen
		KNXAdd(dvKnx, 92, knxSWITCH, '2/0/66', "")	//SVS_06_BP2_Res
		KNXAdd(dvKnx, 93, knxSWITCH, '2/0/67', "")	//SVS_07_BP1_Gen
		KNXAdd(dvKnx, 94, knxSWITCH, '2/0/68', "")	//SVS_07_BP2_Res
		KNXAdd(dvKnx, 95, knxSWITCH, '2/0/69', "")	//SVS_08_BP1_Gen
	    }
	    case 20: 
	    {
		//KNXAdd(dvKnx, 96, knxSWITCH, '2/0/70', "")	//SVS_08_BP2_Res                     	Inexistant
		//KNXAdd(dvKnx, 97, knxSWITCH, '2/0/71', "")	//SVS_09_BP1_Gen			Inexistant
		KNXAdd(dvKnx, 98, knxSWITCH, '2/0/72', "")	//SVS_09_BP2_Res
		KNXAdd(dvKnx, 99, knxSWITCH, '2/0/73', "")	//SVS_10_BP1_Gen
		KNXAdd(dvKnx, 100, knxSWITCH, '2/0/74', "")	//SVS_10_BP2_Res
	    }
	    case 21: 
	    {
		KNXAdd(dvKnx, 101, knxSWITCH, '2/0/75', "")	//SVS_11_BP1_Gen
		KNXAdd(dvKnx, 102, knxSWITCH, '2/0/76', "")	//SVS_11_BP2_Res
		KNXAdd(dvKnx, 103, knxSWITCH, '2/0/77', "")	//DVS_01_Etat_Detect
		KNXAdd(dvKnx, 104, knxSWITCH, '2/0/78', "")	//DVS_02_Etat_Detect
		KNXAdd(dvKnx, 105, knxSWITCH, '2/0/79', "")	//DVS_03_Etat_Detect
	    }
	    case 22: 
	    {
		KNXAdd(dvKnx, 106, knxSWITCH, '2/0/80', "")	//ZESC_Lum_OnOff
		KNXAdd(dvKnx, 107, knxSWITCH, '2/0/81', "")	//ZESC_Lum_Sig
		// Sous Sol     Actionneurs
		KNXAdd(dvKnx, 108, knxSWITCH, '2/1/0', "")	//
		KNXAdd(dvKnx, 109, knxSWITCH, '2/1/1', "")	//
		KNXAdd(dvKnx, 110, knxSWITCH, '2/1/2', "")	//
	    }
	    case 23: 
	    {
		KNXAdd(dvKnx, 111, knxSWITCH, '2/1/3', "")	//
		KNXAdd(dvKnx, 112, knxSWITCH, '2/1/4', "")	//
		KNXAdd(dvKnx, 113, knxSWITCH, '2/1/5', "")	//
		KNXAdd(dvKnx, 114, knxSWITCH, '2/1/6', "")	//
		KNXAdd(dvKnx, 115, knxSWITCH, '2/1/7', "")	//
	    }
	    DEFAULT:  Counter = 0
	}	// Switch
	IF (Counter)
	{
	    Counter ++
	}
    }
}	

