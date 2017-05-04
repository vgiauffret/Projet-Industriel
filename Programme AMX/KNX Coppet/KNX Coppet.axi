PROGRAM_NAME='KNX Coppet'
timeline_event[TL_Table_KNX]
{
    SWITCH(Counter)  //Send config command in groups.  
    //Caution avoid sending large quantities of config commands without intermittent wait intervals.
    {
	//ALL Group Addresses must be modified to use site specific addressing
	//AMX cannot provide support for ETS configuration
	
	//GeneralVilla
	case 1: 
	{
		KNXAdd(dvKnx, Villa_Lum_OnOff, knxSWITCH, '1/0/0', "")		// Villa_Lum_OnOff
		KNXAdd(dvKnx, Villa_Lum_Sig, knxSWITCH, '1/0/1', "")		// Villa_Lum_Sig
		KNXAdd(dvKnx, Villa_Sto_Mnt, knxSWITCH, '1/0/2', "")		// Villa_Sto_Mnt
		KNXAdd(dvKnx, Villa_Sto_Des, knxSWITCH, '1/0/3', "")		// Villa_Sto_Des
		KNXAdd(dvKnx, Sous_Sol_Lum_OnOff, knxSWITCH, '1/0/4', "")	// Sous_Sol_Lum_OnOff
	}
	case 2: 
	{
		KNXAdd(dvKnx, Sous_Sol_Lum_Sig, knxSWITCH, '1/0/5', "")		// Sous_Sol_Lum_Sig
		KNXAdd(dvKnx, Sous_Sol_Sto_Mnt, knxSWITCH, '1/0/6', "")		// Sous_Sol_Sto_Mnt
		KNXAdd(dvKnx, Sous_Sol_Sto_Des, knxSWITCH, '1/0/7', "")		// Sous_Sol_Sto_Des
		KNXAdd(dvKnx, Rez_Lum_OnOff, knxSWITCH, '1/0/8', "")		// Rez_Lum_OnOff
		KNXAdd(dvKnx, Rez_Lum_Sig, knxSWITCH, '1/0/9', "")		// Rez_Lum_Sig
	}
	case 3: 
	{
		KNXAdd(dvKnx, Rez_Sto_Mnt, knxSWITCH, '1/0/10', "")		// Rez_Sto_Mnt
		KNXAdd(dvKnx, Rez_Sto_Des, knxSWITCH, '1/0/11', "")		// Rez_Sto_Des
		KNXAdd(dvKnx, Etage1_Lum_OnOff,knxSWITCH, '1/0/12', "")		//Etage1_Lum_OnOff
		KNXAdd(dvKnx, Etage1_Lum_Sig, knxSWITCH, '1/0/13', "")		//Etage1_Lum_Sig
		KNXAdd(dvKnx, Etage1_Sto_Mnt, knxSWITCH, '1/0/14', "")		//Etage1_Sto_Mnt
	}
	case 4: 
	{
		KNXAdd(dvKnx, Etage1_Sto_Des, knxSWITCH, '1/0/15', "")		//Etage1_Sto_Des
		KNXAdd(dvKnx, Etage2_Lum_OnOff, knxSWITCH, '1/0/16', "")	//Etage2_Lum_OnOff
		KNXAdd(dvKnx, Etage2_Lum_Sig, knxSWITCH, '1/0/17', "")		//Etage2_Lum_Sig
		KNXAdd(dvKnx, Etage2_Sto_Mnt, knxSWITCH, '1/0/18', "")		//Etage2_Sto_Mnt
		KNXAdd(dvKnx, Etage2_Sto_Des, knxSWITCH, '1/0/19', "")		//Etage2_Sto_Des
	}
	case 5: 
	{
		KNXAdd(dvKnx, Verrou_Lum_SousSol, knxSWITCH, '1/0/20', "")	//Verrou_Lum_SousSol
		KNXAdd(dvKnx, Verrou_Lum_Rez, knxSWITCH, '1/0/21', "")		//Verrou_Lum_Rez
		KNXAdd(dvKnx, Verrou_Lum_1er, knxSWITCH, '1/0/22', "")		//Verrou_Lum_1er
		KNXAdd(dvKnx, Verrou_Lum_2eme, knxSWITCH, '1/0/23', "")		//Verrou_Lum_2eme
		KNXAdd(dvKnx, Verrou_Lum_Villa, knxSWITCH, '1/0/24', "")	//Verrou_Lum_Villa
	}
	
	
	
	    // Sous_Sol   (Commandes)
	
	
	
	case 6: 
	{
		//Eclairage par zone
		KNXAdd(dvKnx, Billard_Lum_OnOff, knxSWITCH, '2/0/0', "")		//Billard_Lum_OnOff     		ZS001
		KNXAdd(dvKnx, Billard_Lum_Sig, knxSWITCH, '2/0/1', "")			//Billard_Lum_Sig			ZS001
		KNXAdd(dvKnx, Cave_a_vin_Lum_OnOff, knxSWITCH, '2/0/2', "")		//Cave_a_vin_Lum_OnOff		ZS002
		KNXAdd(dvKnx, Cave_a_vin_Lum_Sig, knxSWITCH, '2/0/3', "")		//Cave_a_vin_Lum_Sig		ZS002
		KNXAdd(dvKnx, Salle_de_bain_Lum_OnOff, knxSWITCH, '2/0/4', "")		//Salle_de_bain_Lum_OnOff	ZS003
	}
	case 7: 
	{
		KNXAdd(dvKnx, Salle_de_bain_Lum_Sig, knxSWITCH, '2/0/5', "")		//Salle_de_bain_Lum_Sig		ZS003
		KNXAdd(dvKnx, Toilette_Lum_OnOff, knxSWITCH, '2/0/6', "")		//Toilette_Lum_OnOff		ZS004
		KNXAdd(dvKnx, Toilette_Lum_Sig, knxSWITCH, '2/0/7', "")			//Toilette_Lum_Sig			ZS004
		KNXAdd(dvKnx, Buanderie_Lum_OnOff, knxSWITCH, '2/0/8', "")		//Buanderie_Lum_OnOff		ZS005
		KNXAdd(dvKnx, Buanderie_Lum_Sig, knxSWITCH, '2/0/9', "")		//Buanderie_Lum_Sig		ZS005
	}
	case 8: 
	{
		KNXAdd(dvKnx, Coffre_Lum_OnOff, knxSWITCH, '2/0/10', "")		//Coffre_Lum_OnOff			ZS006
		KNXAdd(dvKnx, Coffre_Lum_Sig, knxSWITCH, '2/0/11', "")			//Coffre_Lum_Sig			ZS006
		KNXAdd(dvKnx, Local_Techn_Lum_OnOff, knxSWITCH, '2/0/12', "")		//Local_Techn_Lum_OnOff	ZS007
		KNXAdd(dvKnx, Local_Techn_Lum_Sig, knxSWITCH, '2/0/13', "")		//Local_Techn_Lum_Sig		ZS007
		KNXAdd(dvKnx, Escalier_Lum_OnOff, knxSWITCH, '2/0/14', "")		//Escalier_Lum_OnOff		ZS009
	}
	case 9: 
	{
		KNXAdd(dvKnx, Escalier_Lum_Sig, knxSWITCH, '2/0/15', "")		//Escalier_Lum_Sig			ZS009
		KNXAdd(dvKnx, Tunnel_Lum_OnOff, knxSWITCH, '2/0/16', "")		//Tunnel_Lum_OnOff
		KNXAdd(dvKnx, Tunnel_Lum_Sig, knxSWITCH, '2/0/17', "")			//Tunnel_Lum_Sig
		KNXAdd(dvKnx, ZEXT_OnOff, knxSWITCH, '2/0/18', "")			//ZEXT_OnOff
		//Clavier Billard
		KNXAdd(dvKnx, PVS_01_BP1_General, knxSWITCH, '2/0/19', "")		//PVS_01_BP1_General
	}
	case 10: 
	{
		KNXAdd(dvKnx, PVS_01_BP2_DimM, knxDim4, '2/0/20', "")			//PVS_01_BP2_DimM
		KNXAdd(dvKnx, PVS_01_BP3_DimP, knxDim4, '2/0/21', "")			//PVS_01_BP3_DimP
		KNXAdd(dvKnx, PVS_01_BP4_Res, knxSWITCH, '2/0/22', "")			//PVS_01_BP4_Res
		KNXAdd(dvKnx, PVS_01_BP5_Scene1, knxSWITCH, '2/0/23', "")		//PVS_01_BP5_Scene1
		KNXAdd(dvKnx, PVS_01_BP6_Res , knxSWITCH, '2/0/24', "")			//PVS_01_BP6_Res
	}	
	case 11: 
	{
		KNXAdd(dvKnx, PVS_01_BP7_Res, knxSWITCH, '2/0/25', "")			//PVS_01_BP7_Res
		KNXAdd(dvKnx, PVS_01_BP8_Res, knxSWITCH, '2/0/26', "")			//PVS_01_BP8_Res
		//Retour etat clavier Billard	
		KNXAdd(dvKnx, PVS_01_Led1, knxSWITCH, '2/0/27', "")			//PVS_01_Led1
		KNXAdd(dvKnx, PVS_01_Led2, knxSWITCH, '2/0/28', "")			//PVS_01_Led2
		KNXAdd(dvKnx, PVS_01_Led3, knxSWITCH, '2/0/29', "")			//PVS_01_Led3
	}	
	case 12: 
	{
		KNXAdd(dvKnx, PVS_01_Led4, knxSWITCH, '2/0/30', "")			//PVS_01_Led4
		//Clavier Cave a vin
		KNXAdd(dvKnx, PVS_02_BP1_General, knxSWITCH, '2/0/31', "")		//PVS_02_BP1_General
		KNXAdd(dvKnx, PVS_02_BP2_DimM, knxDim4, '2/0/32', "")			//PVS_02_BP2_DimM
		KNXAdd(dvKnx, PVS_02_BP3_DimP, knxDim4, '2/0/33', "")			//PVS_02_BP3_DimP
		KNXAdd(dvKnx, PVS_02_BP4_Res, knxSWITCH, '2/0/34', "")			//PVS_02_BP4_Res
	}
	case 13: 
	{
		KNXAdd(dvKnx, PVS_02_BP5_Scene1, knxSWITCH, '2/0/35', "")		//PVS_02_BP5_Scene1
		KNXAdd(dvKnx, PVS_02_BP6_Res, knxSWITCH, '2/0/36', "")			//PVS_02_BP6_Res
		KNXAdd(dvKnx, PVS_02_BP7_Res, knxSWITCH, '2/0/37', "")			//PVS_02_BP7_Res
		KNXAdd(dvKnx, PVS_02_BP8_Res, knxSWITCH, '2/0/38', "")			//PVS_02_BP8_Res
		//Retour etat clavier cave a vin
		KNXAdd(dvKnx, PVS_02_Led1, knxSWITCH, '2/0/39', "")			//PVS_02_Led1
	}
	case 14: 
	{
		KNXAdd(dvKnx, PVS_02_Led2, knxSWITCH, '2/0/40', "")			//PVS_02_Led2
		KNXAdd(dvKnx, PVS_02_Led3, knxSWITCH, '2/0/41', "")			//PVS_02_Led3
		KNXAdd(dvKnx, PVS_02_Led4, knxSWITCH, '2/0/42', "")			//PVS_02_Led4
		//Clavier Cage escalier
		KNXAdd(dvKnx, PVS_03_BP1_General, knxSWITCH, '2/0/43', "")		//PVS_03_BP1_General
		KNXAdd(dvKnx, PVS_03_BP2_DimM, knxDim4, '2/0/44', "")			//PVS_03_BP2_DimM
	}
	case 15: 
	{
		KNXAdd(dvKnx, PVS_03_BP3_DimP, knxDim4, '2/0/45', "")			//PVS_03_BP3_DimP
		KNXAdd(dvKnx, PVS_03_BP4_Res, knxSWITCH, '2/0/46', "")			//PVS_03_BP4_Res
		KNXAdd(dvKnx, PVS_03_BP5_Scene1, knxSWITCH, '2/0/47', "")		//PVS_03_BP5_Scene1
		KNXAdd(dvKnx, PVS_03_BP6_Res, knxSWITCH, '2/0/48', "")			//PVS_03_BP6_Res
		KNXAdd(dvKnx, PVS_03_BP7_Res, knxSWITCH, '2/0/49', "")			//PVS_03_BP7_Res
	}
	case 16: 
	{
		KNXAdd(dvKnx, PVS_03_BP8_Res, knxSWITCH, '2/0/50', "")			//PVS_03_BP8_Res
		//Retour etat clavier cage escalier
		KNXAdd(dvKnx, PVS_03_Led1, knxSWITCH, '2/0/51', "")			//PVS_03_Led1
		KNXAdd(dvKnx, PVS_03_Led2, knxSWITCH, '2/0/52', "")			//PVS_03_Led2
		KNXAdd(dvKnx, PVS_03_Led3, knxSWITCH, '2/0/53', "")			//PVS_03_Led3
		KNXAdd(dvKnx, PVS_03_Led4, knxSWITCH, '2/0/54', "")			//PVS_03_Led4
	}
	case 17: 
	{
		//Bouton poussoir cave a vin droite
		KNXAdd(dvKnx, SVS_01_BP1_Gen, knxSWITCH, '2/0/55', "")			//SVS_01_BP1_Gen
		KNXAdd(dvKnx, SVS_01_BP2_Res, knxSWITCH, '2/0/56', "")			//SVS_01_BP2_Res
		//Bouton poussoir cave a vin gauche
		KNXAdd(dvKnx, SVS_02_BP1_Gen, knxSWITCH, '2/0/57', "")			//SVS_02_BP1_Gen
		KNXAdd(dvKnx, SVS_02_BP2_Res, knxSWITCH, '2/0/58', "")			//SVS_02_BP2_Res
		//Bouton poussoir salle de bain
		KNXAdd(dvKnx, SVS_03_BP1_Gen, knxSWITCH, '2/0/59', "")			//SVS_03_BP1_Gen
	}
	case 18: 
	{
		KNXAdd(dvKnx, SVS_03_BP2_Res, knxSWITCH, '2/0/60', "")			//SVS_03_BP2_Res
		//Bouton poussoir salle de bain (toilette)
		KNXAdd(dvKnx, SVS_04_BP1_Gen, knxSWITCH, '2/0/61', "")			//SVS_04_BP1_Gen
		KNXAdd(dvKnx, SVS_04_BP2_Res, knxSWITCH, '2/0/62', "")			//SVS_04_BP2_Res
		//Bouton poussoir toilette
		KNXAdd(dvKnx, SVS_05_BP1_Gen, knxSWITCH, '2/0/63', "")			//SVS_05_BP1_Gen
		KNXAdd(dvKnx, SVS_05_BP2_Res, knxSWITCH, '2/0/64', "")			//SVS_05_BP2_Res
	}
	case 19: 
	{
		//Bouton poussoir buanderie
		KNXAdd(dvKnx, SVS_06_BP1_Gen, knxSWITCH, '2/0/65', "")			//SVS_06_BP1_Gen
		KNXAdd(dvKnx, SVS_06_BP2_Res, knxSWITCH, '2/0/66', "")			//SVS_06_BP2_Res
		//Bouton poussoir coffre
		KNXAdd(dvKnx, SVS_07_BP1_Gen, knxSWITCH, '2/0/67', "")			//SVS_07_BP1_Gen
		KNXAdd(dvKnx, SVS_07_BP2_Res, knxSWITCH, '2/0/68', "")			//SVS_07_BP2_Res
		//Bouton poussoir local technique
		KNXAdd(dvKnx, SVS_08_BP1_Gen, knxSWITCH, '2/0/69', "")			//SVS_08_BP1_Gen
	}
	case 20: 
	{
		KNXAdd(dvKnx, SVS_08_BP2_Res, knxSWITCH, '2/0/70', "")			//SVS_08_BP2_Res    			
		//Bouton poussoir Escalier
		KNXAdd(dvKnx, SVS_09_BP1_Gen, knxSWITCH, '2/0/71', "")			//SVS_09_BP1_Gen
		KNXAdd(dvKnx, SVS_09_BP2_Res, knxSWITCH, '2/0/72', "")			//SVS_09_BP2_Res
		//Bouton poussoir tunnel
		KNXAdd(dvKnx, SVS_10_BP1_Gen, knxSWITCH, '2/0/73', "")			//SVS_10_BP1_Gen
		KNXAdd(dvKnx, SVS_10_BP2_Res, knxSWITCH, '2/0/74', "")			//SVS_10_BP2_Res
	}
	case 21: 
	{
		//Bouton poussoir tunnel
		KNXAdd(dvKnx, SVS_11_BP1_Gen, knxSWITCH, '2/0/75', "")			//SVS_11_BP1_Gen
		KNXAdd(dvKnx, SVS_11_BP2_Res, knxSWITCH, '2/0/76', "")			//SVS_11_BP2_Res
		//Capteur mouvement
		KNXAdd(dvKnx, DVS_01_Etat_Detect, knxSWITCH, '2/0/77', "")		//DVS_01_Etat_Detect
		KNXAdd(dvKnx, DVS_02_Etat_Detect, knxSWITCH, '2/0/78', "")		//DVS_02_Etat_Detect
		KNXAdd(dvKnx, DVS_03_Etat_Detect, knxSWITCH, '2/0/79', "")		//DVS_03_Etat_Detect
	}
	case 22: 
	{
		KNXAdd(dvKnx, ZESC_Lum_OnOff, knxSWITCH, '2/0/80', "")			//ZESC_Lum_OnOff
		KNXAdd(dvKnx, ZESC_Lum_Sig, knxSWITCH, '2/0/81', "")			//ZESC_Lum_Sig
	}
	
	
	
	//Commandes Rez
	
	
	
	case 23: 
	{
		KNXAdd(dvKnx, Couloir_Lum_OnOff, knxSWITCH, '2/2/0', "")	//Couloir_Lum_OnOff		ZR00
		KNXAdd(dvKnx, Couloir_Lum_Sig, knxSWITCH, '2/2/1', "")		//Couloir_Lum_Sig		ZR00
		KNXAdd(dvKnx, Couloir_Sto_Mnt, knxSWITCH, '2/2/2', "")		//Couloir_Sto_Mnt		ZR00
		KNXAdd(dvKnx, Couloir_Sto_Des, knxSWITCH, '2/2/3', "")		//Couloir_Sto_Des		ZR00
		KNXAdd(dvKnx, Dining_Lum_OnOff, knxSWITCH, '2/2/4', "")		//Dining_Lum_OnOff		ZR01
	}
	case 24: 
	{
		KNXAdd(dvKnx, Dinning_Lum_Sig, knxSWITCH, '2/2/5', "")		//Dinning_Lum_Sig		ZR01
		KNXAdd(dvKnx, Dining_Sto_Mnt, knxSWITCH, '2/2/6', "")		//Dining_Sto_Mnt		ZR01
		KNXAdd(dvKnx, Dining_Sto_Des, knxSWITCH, '2/2/7', "")		//Dining_Sto_Des		ZR01
		KNXAdd(dvKnx, Petit_Salon_Lum_OnOff, knxSWITCH, '2/2/8', "")	//Petit_Salon_Lum_OnOff	ZR02
		KNXAdd(dvKnx, Petit_Salon_Lum_Sig, knxSWITCH, '2/2/9', "")	//Petit_Salon_Lum_Sig	ZR02
	}
	case 25: 
	{
		KNXAdd(dvKnx, Petit_Salon_Sto_Mnt, knxSWITCH, '2/2/10', "")	//Petit_Salon_Sto_Mnt	ZR02
		KNXAdd(dvKnx, Petit_Salon_Sto_Des, knxSWITCH, '2/2/11', "")	//Petit_Salon_Sto_Des	ZR02
		KNXAdd(dvKnx, Entrée_Lum_OnOff, knxSWITCH, '2/2/12', "")	//Entrée_Lum_OnOff		ZR03
		KNXAdd(dvKnx, Entrée_Lum_Sig, knxSWITCH, '2/2/13', "")		//Entrée_Lum_Sig		ZR03
		KNXAdd(dvKnx, Entrée_Sto_Mnt, knxSWITCH, '2/2/14', "")		//Entrée_Sto_Mnt		ZR03
	}
	case 26: 
	{
		KNXAdd(dvKnx, Entrée_Sto_Des, knxSWITCH, '2/2/15', "")		//Entrée_Sto_Des		ZR03
		KNXAdd(dvKnx, Cuisine_Lum_OnOff, knxSWITCH, '2/2/16', "")	//Cuisine_Lum_OnOff	ZR04
		KNXAdd(dvKnx, Cuisine_Lum_Sig, knxSWITCH, '2/2/17', "")		//Cuisine_Lum_Sig		ZR04
		KNXAdd(dvKnx, Cuisine_Sto_Mnt, knxSWITCH, '2/2/18', "")		//Cuisine_Sto_Mnt		ZR04
		KNXAdd(dvKnx, Cuisine_Sto_Des, knxSWITCH, '2/2/19', "")		//Cuisine_Sto_Des		ZR04
	}
	case 27: 
	{
		KNXAdd(dvKnx, Grand_Salon_Lum_OnOff, knxSWITCH, '2/2/20', "")	//Grand_Salon_Lum_OnOff		ZR05
		KNXAdd(dvKnx, Grand_Salon_Lum_Sig, knxSWITCH, '2/2/21', "")	//Grand_Salon_Lum_Sig		ZR05
		KNXAdd(dvKnx, Grand_Salon_Sto_Mnt, knxSWITCH, '2/2/22', "")	//Grand_Salon_Sto_Mnt		ZR05
		KNXAdd(dvKnx, Grand_Salon_Sto_Des, knxSWITCH, '2/2/23', "")	//Grand_Salon_Sto_Des		ZR05
		//Clavier cage escalier
		KNXAdd(dvKnx, PVR_O1_BP1_General, knxSWITCH, '2/2/24', "")	//PVR_O1_BP1_General
	}
	case 27: 
	{
		KNXAdd(dvKnx, PVR_O1_BP2_DimM, knxDim4, '2/2/25', "")		//PVR_O1_BP2_DimM
		KNXAdd(dvKnx, PVR_O1_BP3_DimP, knxDim4, '2/2/26', "")		//PVR_O1_BP3_DimP
		KNXAdd(dvKnx, PVR_O1_BP4_Res, knxSWITCH, '2/2/27', "")		//PVR_O1_BP4_Res
		KNXAdd(dvKnx, PVR_O1_BP5_Scene1, knxSWITCH, '2/2/28', "")	//PVR_O1_BP5_Scene1
		KNXAdd(dvKnx, PVR_O1_BP6_Res, knxSWITCH, '2/2/29', "")		//PVR_O1_BP6_Res
	}
	case 28: 
	{
		KNXAdd(dvKnx, PVR_O1_BP7_Res, knxSWITCH, '2/2/30', "")		//PVR_O1_BP7_Res
		KNXAdd(dvKnx, PVR_O1_BP8_Res, knxSWITCH, '2/2/31', "")		//PVR_O1_BP8_Res
		//Retour etat clavier cage escalier
		KNXAdd(dvKnx, PVR_O1_Led1, knxSWITCH, '2/2/32', "")		//PVR_O1_Led1
		KNXAdd(dvKnx, PVR_O1_Led2, knxSWITCH, '2/2/33', "")		//PVR_O1_Led2
		KNXAdd(dvKnx, PVR_O1_Led3, knxSWITCH, '2/2/34', "")		//PVR_O1_Led3
	}
	case 29: 
	{
		KNXAdd(dvKnx, PVR_O1_Led4, knxSWITCH, '2/2/35', "")		//PVR_O1_Led4
		//Clavier Dining (Lac)
		KNXAdd(dvKnx, PVR_O2_BP1_General, knxSWITCH, '2/2/36', "")	//PVR_O2_BP1_General
		KNXAdd(dvKnx, PVR_O2_BP2_DimM, knxDim4, '2/2/37', "")		//PVR_O2_BP2_DimM
		KNXAdd(dvKnx, PVR_O2_BP3_DimP, knxDim4, '2/2/38', "")		//PVR_O2_BP3_DimP
		KNXAdd(dvKnx, PVR_O2_BP4_Res, knxSWITCH, '2/2/39', "")		//PVR_O2_BP4_Res
	}
	case 30: 
	{
		KNXAdd(dvKnx, PVR_O2_BP5_Scene1, knxSWITCH, '2/2/40', "")	//PVR_O2_BP5_Scene1
		KNXAdd(dvKnx, PVR_O2_BP6_Res, knxSWITCH, '2/2/41', "")		//PVR_O2_BP6_Res
		KNXAdd(dvKnx, PVR_O2_BP7_Res, knxSWITCH, '2/2/42', "")		//PVR_O2_BP7_Res
		KNXAdd(dvKnx, PVR_O2_BP8_Res, knxSWITCH, '2/2/43', "")		//PVR_O2_BP8_Res
		//Retour etat clavier Dining (Lac)
		KNXAdd(dvKnx, PVR_O2_Led1, knxSWITCH, '2/2/44', "")		//PVR_O2_Led1
	}
	case 31: 
	{
		KNXAdd(dvKnx, PVR_O2_Led2, knxSWITCH, '2/2/45', "")		//PVR_O2_Led2
		KNXAdd(dvKnx, PVR_O2_Led3, knxSWITCH, '2/2/46', "")		//PVR_O2_Led3
		KNXAdd(dvKnx, PVR_O2_Led4, knxSWITCH, '2/2/47', "")		//PVR_O2_Led4
		//Clavier Dinning (Couloir)
		KNXAdd(dvKnx, PVR_O3_BP1_General, knxSWITCH, '2/2/48', "")	//PVR_O3_BP1_General
		KNXAdd(dvKnx, PVR_O3_BP2_DimM, knxDim4, '2/2/49', "")		//PVR_O3_BP2_DimM
	}
	case 32: 
	{
		KNXAdd(dvKnx, PVR_O3_BP3_DimP, knxDim4, '2/2/50', "")		//PVR_O3_BP3_DimP
		KNXAdd(dvKnx, PVR_O3_BP4_Res, knxSWITCH, '2/2/51', "")		//PVR_O3_BP4_Res
		KNXAdd(dvKnx, PVR_O3_BP5_Scene1, knxSWITCH, '2/2/52', "")	//PVR_O3_BP5_Scene1
		KNXAdd(dvKnx, PVR_O3_BP6_Res, knxSWITCH, '2/2/53', "")		//PVR_O3_BP6_Res
		KNXAdd(dvKnx, PVR_O3_BP7_Res, knxSWITCH, '2/2/54', "")		//PVR_O3_BP7_Res
	}
	case 33: 
	{
		KNXAdd(dvKnx, PVR_O3_BP8_Res, knxSWITCH, '2/2/55', "")		//PVR_O3_BP8_Res
		//Retour etat clavier dinning (Couloir)
		KNXAdd(dvKnx, PVR_O3_Led1, knxSWITCH, '2/2/56', "")		//PVR_O3_Led1
		KNXAdd(dvKnx, PVR_O3_Led2, knxSWITCH, '2/2/57', "")		//PVR_O3_Led2
		KNXAdd(dvKnx, PVR_O3_Led3, knxSWITCH, '2/2/58', "")		//PVR_O3_Led3
		KNXAdd(dvKnx, PVR_O3_Led4, knxSWITCH, '2/2/59', "")		//PVR_O3_Led4
	}
	case 34: 
	{
		//Clavier Petit Salon
		KNXAdd(dvKnx, PVR_O4_BP1_General, knxSWITCH, '2/2/60', "")	//PVR_O4_BP1_General
		KNXAdd(dvKnx, PVR_O4_BP2_DimM, knxDim4, '2/2/61', "")		//PVR_O4_BP2_DimM
		KNXAdd(dvKnx, PVR_O4_BP3_DimP, knxDim4, '2/2/62', "")		//PVR_O4_BP3_DimP
		KNXAdd(dvKnx, PVR_O4_BP4_Res, knxSWITCH, '2/2/63', "")		//PVR_O4_BP4_Res
		KNXAdd(dvKnx, PVR_O4_BP5_Scene1, knxSWITCH, '2/2/64', "")	//PVR_O4_BP5_Scene1
	}
	case 35: 
	{
		KNXAdd(dvKnx, PVR_O4_BP6_Res, knxSWITCH, '2/2/65', "")		//PVR_O4_BP6_Res
		KNXAdd(dvKnx, PVR_O4_BP7_Res, knxSWITCH, '2/2/66', "")		//PVR_O4_BP7_Res
		KNXAdd(dvKnx, PVR_O4_BP8_Res, knxSWITCH, '2/2/67', "")		//PVR_O4_BP8_Res
		//Retour etat clavier Petit Salon
		KNXAdd(dvKnx, PVR_O4_Led1, knxSWITCH, '2/2/68', "")		//PVR_O4_Led1
		KNXAdd(dvKnx, PVR_O4_Led2, knxSWITCH, '2/2/69', "")		//PVR_O4_Led2
	}
	case 36: 
	{
		KNXAdd(dvKnx, PVR_O4_Led3, knxSWITCH, '2/2/70', "")		//PVR_O4_Led3
		KNXAdd(dvKnx, PVR_O4_Led4, knxSWITCH, '2/2/71', "")		//PVR_O4_Led4
		//Clavier Entree Principal
		KNXAdd(dvKnx, PVR_O5_BP1_General, knxSWITCH, '2/2/72', "")	//PVR_O5_BP1_General
		KNXAdd(dvKnx, PVR_O5_BP2_DimM, knxDim4, '2/2/73', "")		//PVR_O5_BP2_DimM
		KNXAdd(dvKnx, PVR_O5_BP3_DimP, knxDim4, '2/2/74', "")		//PVR_O5_BP3_DimP
	}
	case 37: 
	{
		KNXAdd(dvKnx, PVR_O5_BP4_Res, knxSWITCH, '2/2/75', "")		//PVR_O5_BP4_Res
		KNXAdd(dvKnx, PVR_O5_BP5_Scene1, knxSWITCH, '2/2/76', "")	//PVR_O5_BP5_Scene1
		KNXAdd(dvKnx, PVR_O5_BP6_Res, knxSWITCH, '2/2/77', "")		//PVR_O5_BP6_Res
		KNXAdd(dvKnx, PVR_O5_BP7_Res, knxSWITCH, '2/2/78', "")		//PVR_O5_BP7_Res
		KNXAdd(dvKnx, PVR_O5_BP8_Res, knxSWITCH, '2/2/79', "")		//PVR_O5_BP8_Res
	}
	case 38: 
	{
		//Retour etat clavier Entree Principal
		KNXAdd(dvKnx, PVR_O5_Led1, knxSWITCH, '2/2/80', "")		//PVR_O5_Led1
		KNXAdd(dvKnx, PVR_O5_Led2, knxSWITCH, '2/2/81', "")		//PVR_O5_Led2
		KNXAdd(dvKnx, PVR_O5_Led3, knxSWITCH, '2/2/82', "")		//PVR_O5_Led3
		KNXAdd(dvKnx, PVR_O5_Led4, knxSWITCH, '2/2/83', "")		//PVR_O5_Led4
		//Clavier Entree Principal 2
		KNXAdd(dvKnx, PVR_O6_BP1_General, knxSWITCH, '2/2/84', "")	//PVR_O6_BP1_General
	}
	case 39: 
	{
		KNXAdd(dvKnx, PVR_O6_BP2_DimM, knxDim4, '2/2/85', "")		//PVR_O6_BP2_DimM
		KNXAdd(dvKnx, PVR_O6_BP3_DimP, knxDim4, '2/2/86', "")		//PVR_O6_BP3_DimP
		KNXAdd(dvKnx, PVR_O6_BP4_Res, knxSWITCH, '2/2/87', "")		//PVR_O6_BP4_Res
		KNXAdd(dvKnx, PVR_O6_BP5_Scene1, knxSWITCH, '2/2/88', "")	//PVR_O6_BP5_Scene1
		KNXAdd(dvKnx, PVR_O6_BP6_Res, knxSWITCH, '2/2/89', "")		//PVR_O6_BP6_Res	
	}
	case 40: 
	{
		KNXAdd(dvKnx, PVR_O6_BP7_Res, knxSWITCH, '2/2/90', "")		//PVR_O6_BP7_Res
		KNXAdd(dvKnx, PVR_O6_BP8_Res, knxSWITCH, '2/2/91', "")		//PVR_O6_BP8_Res
		//Retour etat clavier entree principal 2
		KNXAdd(dvKnx, PVR_O6_Led1, knxSWITCH, '2/2/92', "")		//PVR_O6_Led1
		KNXAdd(dvKnx, PVR_O6_Led2, knxSWITCH, '2/2/93', "")		//PVR_O6_Led2
		KNXAdd(dvKnx, PVR_O6_Led3, knxSWITCH, '2/2/94', "")		//PVR_O6_Led3
	}
	case 41: 
	{
		KNXAdd(dvKnx, PVR_O6_Led4, knxSWITCH, '2/2/95', "")		//PVR_O6_Led4
		//Clavier Cuisine (Entree)
		KNXAdd(dvKnx, PVR_O7_BP1_General, knxSWITCH, '2/2/96', "")	//PVR_O7_BP1_General
		KNXAdd(dvKnx, PVR_O7_BP2_DimM, knxDim4, '2/2/97', "")		//PVR_O7_BP2_DimM
		KNXAdd(dvKnx, PVR_O7_BP3_DimP, knxDim4, '2/2/98', "")		//PVR_O7_BP3_DimP
		KNXAdd(dvKnx, PVR_O7_BP4_Res, knxSWITCH, '2/2/99', "")		//PVR_O7_BP4_Res
	}
	case 42: 
	{
		KNXAdd(dvKnx, PVR_O7_BP5_Scene1, knxSWITCH, '2/2/100', "")	//PVR_O7_BP5_Scene1
		KNXAdd(dvKnx, PVR_O7_BP6_Res, knxSWITCH, '2/2/101', "")		//PVR_O7_BP6_Res
		KNXAdd(dvKnx, PVR_O7_BP7_Res, knxSWITCH, '2/2/102', "")		//PVR_O7_BP7_Res
		KNXAdd(dvKnx, PVR_O7_BP8_Res, knxSWITCH, '2/2/103', "")		//PVR_O7_BP8_Res
		//Retour etat clavier cuisine (Entree)
		KNXAdd(dvKnx, PVR_O7_Led1, knxSWITCH, '2/2/104', "")		//PVR_O7_Led1
	}
	case 43: 
	{
		KNXAdd(dvKnx, PVR_O7_Led2, knxSWITCH, '2/2/105', "")		//PVR_O7_Led2
		KNXAdd(dvKnx, PVR_O7_Led3, knxSWITCH, '2/2/106', "")		//PVR_O7_Led3
		KNXAdd(dvKnx, PVR_O7_Led4, knxSWITCH, '2/2/107', "")		//PVR_O7_Led4
		//Clavier Cuisine (Sortie)
		KNXAdd(dvKnx, PVR_O8_BP1_General, knxSWITCH, '2/2/108', "")	//PVR_O8_BP1_General
		KNXAdd(dvKnx, PVR_O8_BP2_DimM, knxDim4, '2/2/109', "")		//PVR_O8_BP2_DimM
	}
	case 44: 
	{
		KNXAdd(dvKnx, PVR_O8_BP3_DimP, knxDim4, '2/2/110', "")		//PVR_O8_BP3_DimP
		KNXAdd(dvKnx, PVR_O8_BP4_Res, knxSWITCH, '2/2/111', "")		//PVR_O8_BP4_Res
		KNXAdd(dvKnx, PVR_O8_BP5_Scene1, knxSWITCH, '2/2/112', "")	//PVR_O8_BP5_Scene1
		KNXAdd(dvKnx, PVR_O8_BP6_Res, knxSWITCH, '2/2/113', "")		//PVR_O8_BP6_Res
		KNXAdd(dvKnx, PVR_O8_BP7_Res, knxSWITCH, '2/2/114', "")		//PVR_O8_BP7_Res
	}
	case 45: 
	{
		KNXAdd(dvKnx, PVR_O8_BP8_Res, knxSWITCH, '2/2/115', "")		//PVR_O8_BP8_Res
		//Retour etat clavier cuisine (Sortie)
		KNXAdd(dvKnx, PVR_O8_Led1, knxSWITCH, '2/2/116', "")		//PVR_O8_Led1
		KNXAdd(dvKnx, PVR_O8_Led2, knxSWITCH, '2/2/117', "")		//PVR_O8_Led2
		KNXAdd(dvKnx, PVR_O8_Led3, knxSWITCH, '2/2/118', "")		//PVR_O8_Led3
		KNXAdd(dvKnx, PVR_O8_Led4, knxSWITCH, '2/2/119', "")		//PVR_O8_Led4
	}
	case 46: 
	{
		//Clavier Cuisine (vers dependance)
		KNXAdd(dvKnx, PVR_O9_BP1_General, knxSWITCH, '2/2/120', "")	//PVR_O9_BP1_General
		KNXAdd(dvKnx, PVR_O9_BP2_DimM, knxDim4, '2/2/121', "")		//PVR_O9_BP2_DimM
		KNXAdd(dvKnx, PVR_O9_BP3_DimP, knxDim4, '2/2/122', "")		//PVR_O9_BP3_DimP
		KNXAdd(dvKnx, PVR_O9_BP4_Res, knxSWITCH, '2/2/123', "")		//PVR_O9_BP4_Res
		KNXAdd(dvKnx, PVR_O9_BP5_Scene1, knxSWITCH, '2/2/124', "")	//PVR_O9_BP5_Scene1
	}
	case 47: 
	{
		KNXAdd(dvKnx, PVR_O9_BP6_Res, knxSWITCH, '2/2/125', "")		//PVR_O9_BP6_Res
		KNXAdd(dvKnx, PVR_O9_BP7_Res, knxSWITCH, '2/2/126', "")		//PVR_O9_BP7_Res
		KNXAdd(dvKnx, PVR_O9_BP8_Res, knxSWITCH, '2/2/127', "")		//PVR_O9_BP8_Res
		//Retour etat clavier cuisine (vers dependance)
		KNXAdd(dvKnx, PVR_O9_Led1, knxSWITCH, '2/2/128', "")		//PVR_O9_Led1
		KNXAdd(dvKnx, PVR_O9_Led2, knxSWITCH, '2/2/129', "")		//PVR_O9_Led2
	}
	case 48: 
	{
		KNXAdd(dvKnx, PVR_O9_Led3, knxSWITCH, '2/2/130', "")		//PVR_O9_Led3
		KNXAdd(dvKnx, PVR_O9_Led4, knxSWITCH, '2/2/131', "")		//PVR_O9_Led4
		//Clavier Grand Salon (coté Lac)
		KNXAdd(dvKnx, PVR_10_BP1_General, knxSWITCH, '2/2/132', "")	//PVR_10_BP1_General
		KNXAdd(dvKnx, PVR_10_BP2_DimM, knxDim4, '2/2/133', "")		//PVR_10_BP2_DimM
		KNXAdd(dvKnx, PVR_10_BP3_DimP, knxDim4, '2/2/134', "")		//PVR_10_BP3_DimP
	}
	case 49: 
	{
		KNXAdd(dvKnx, PVR_10_BP4_Res, knxSWITCH, '2/2/135', "")		//PVR_10_BP4_Res
		KNXAdd(dvKnx, PVR_10_BP5_Scene1, knxSWITCH, '2/2/136', "")	//PVR_10_BP5_Scene1
		KNXAdd(dvKnx, PVR_10_BP6_Res, knxSWITCH, '2/2/137', "")		//PVR_10_BP6_Res
		KNXAdd(dvKnx, PVR_10_BP7_Res, knxSWITCH, '2/2/138', "")		//PVR_10_BP7_Res
		KNXAdd(dvKnx, PVR_10_BP8_Res, knxSWITCH, '2/2/139', "")		//PVR_10_BP8_Res
	}
	case 50: 
	{
		//Retour etat Clavier Grand Salon (coté lac)
		KNXAdd(dvKnx, PVR_10_Led1, knxSWITCH, '2/2/140', "")		//PVR_10_Led1
		KNXAdd(dvKnx, PVR_10_Led2, knxSWITCH, '2/2/141', "")		//PVR_10_Led2
		KNXAdd(dvKnx, PVR_10_Led3, knxSWITCH, '2/2/142', "")		//PVR_10_Led3
		KNXAdd(dvKnx, PVR_10_Led4, knxSWITCH, '2/2/143', "")		//PVR_10_Led4
		//Clavier Grand Salon (coté couloir)
		KNXAdd(dvKnx, PVR_11_BP1_General, knxSWITCH, '2/2/144', "")	//PVR_11_BP1_General
	}
	case 51: 
	{
		KNXAdd(dvKnx, PVR_11_BP2_DimM, knxDim4, '2/2/145', "")		//PVR_11_BP2_DimM
		KNXAdd(dvKnx, PVR_11_BP3_DimP, knxDim4, '2/2/146', "")		//PVR_11_BP3_DimP
		KNXAdd(dvKnx, PVR_11_BP4_Res, knxSWITCH, '2/2/147', "")		//PVR_11_BP4_Res
		KNXAdd(dvKnx, PVR_11_BP5_Scene1, knxSWITCH, '2/2/148', "")	//PVR_11_BP5_Scene1
		KNXAdd(dvKnx, PVR_11_BP6_Res, knxSWITCH, '2/2/149', "")		//PVR_11_BP6_Res
	}
	case 52: 
	{
		KNXAdd(dvKnx, PVR_11_BP7_Res, knxSWITCH, '2/2/150', "")		//PVR_11_BP7_Res
		KNXAdd(dvKnx, PVR_11_BP8_Res, knxSWITCH, '2/2/151', "")		//PVR_11_BP8_Res
		//Retour etat clavier Grand Salon (coté couloir)
		KNXAdd(dvKnx, PVR_11_Led1, knxSWITCH, '2/2/152', "")		//PVR_11_Led1
		KNXAdd(dvKnx, PVR_11_Led2, knxSWITCH, '2/2/153', "")		//PVR_11_Led2
		KNXAdd(dvKnx, PVR_11_Led3, knxSWITCH, '2/2/154', "")		//PVR_11_Led3
	}
	case 53: 
	{
		KNXAdd(dvKnx, PVR_11_Led4, knxSWITCH, '2/2/155', "")		//PVR_11_Led4
		//Bouton poussoir escalier
		KNXAdd(dvKnx, SVR_01_BP1_General, knxSWITCH, '2/2/156', "")	//SVR_01_BP1_General
		KNXAdd(dvKnx, SVR_01_BP2_Res, knxSWITCH, '2/2/157', "")		//SVR_01_BP2_Res
		//Bouton poussoir couloir
		KNXAdd(dvKnx, SVR_02_BP1_General, knxSWITCH, '2/2/158', "")	//SVR_02_BP1_General
		KNXAdd(dvKnx, SVR_02_BP2_Res, knxSWITCH, '2/2/159', "")		//SVR_02_BP2_Res
	}
	case 54: 
	{
		//Store/Moustiquaires Dinning
		KNXAdd(dvKnx, MVR_01_2M_BP1_Sto1__Mnt, knxSWITCH, '2/2/160', "")//MVR_01_2M_BP1_Sto1__Mnt
		KNXAdd(dvKnx, MVR_01_2M_BP2_Sto1__Des, knxSWITCH, '2/2/161', "")//MVR_01_2M_BP2_Sto1__Des
		KNXAdd(dvKnx, MVR_01_2M_BP3_Sto1__Mnt, knxSWITCH, '2/2/162', "")//MVR_01_2M_BP3_Sto1__Mnt
		KNXAdd(dvKnx, MVR_01_2M_BP4_Sto1__Des, knxSWITCH, '2/2/163', "")//MVR_01_2M_BP4_Sto1__Des
		//Store/Moustiquaires Grand Salon
		KNXAdd(dvKnx, MVR_02_2M_BP1_Sto1__Mnt, knxSWITCH, '2/2/164', "")//MVR_02_2M_BP1_Sto1__Mnt
	}
	case 55: 
	{
		KNXAdd(dvKnx, MVR_02_2M_BP2_Sto1__Des, knxSWITCH, '2/2/165', "")//MVR_02_2M_BP2_Sto1__Des
		KNXAdd(dvKnx, MVR_02_2M_BP3_Sto1__Mnt, knxSWITCH, '2/2/166', "")//MVR_02_2M_BP3_Sto1__Mnt
		KNXAdd(dvKnx, MVR_02_2M_BP4_Sto1__Des, knxSWITCH, '2/2/167', "")//MVR_02_2M_BP4_Sto1__Des
		//Detecteur Couloir
		KNXAdd(dvKnx, DVR_01_Etat_Detect, knxSWITCH, '2/2/168', "")	//DVR_01_Etat_Detect
		//Detecteur Entree
		KNXAdd(dvKnx, DVR_02_Etat_Detect, knxSWITCH, '2/2/169', "")	//DVR_02_Etat_Detect
	}
	
	
	
	
	
	//  Commandes 1er Etages 
	
	
	
	
	case 56: 
	{
		//Eclairage par zone
		KNXAdd(dvKnx, Biblio_Lum_OnOff, knxSWITCH, '2/4/0', "")		//Biblio_Lum_OnOff			Z100
		KNXAdd(dvKnx, Biblio_Lum_Sig, knxSWITCH, '2/4/1', "")		//Biblio_Lum_Sig			Z100
		KNXAdd(dvKnx, Biblio_Sto_Mnt, knxSWITCH, '2/4/2', "")		//Biblio_Sto_Mnt			Z100
		KNXAdd(dvKnx, Biblio_Sto_Des, knxSWITCH, '2/4/3', "")		//Biblio_Sto_Des			Z100
		KNXAdd(dvKnx, MasterBed_Lum_OnOff, knxSWITCH, '2/4/4', "")	//MasterBed_Lum_OnOff			Z101
	}
	case 57: 
	{
		KNXAdd(dvKnx, MasterBed_Lum_Sig, knxSWITCH, '2/4/5', "")	//MasterBed_Lum_Sig			Z101
		KNXAdd(dvKnx, MasterBed_Sto_Mnt, knxSWITCH, '2/4/6', "")	//MasterBed_Sto_Mnt			Z101
		KNXAdd(dvKnx, MasterBed_Sto_Des, knxSWITCH, '2/4/7', "")	//MasterBed_Sto_Des			Z101
		KNXAdd(dvKnx, Gym_Lum_OnOff, knxSWITCH, '2/4/8', "")		//Gym_Lum_OnOff				Z102
		KNXAdd(dvKnx, Gym_Lum_Sig, knxSWITCH, '2/4/9', "")		//Gym_Lum_Sig				Z102
	}
	case 58: 
	{
		KNXAdd(dvKnx, Gym_Sto_Mnt, knxSWITCH, '2/4/10', "")		//Gym_Sto_Mnt				Z102
		KNXAdd(dvKnx, Gym_Sto_Des, knxSWITCH, '2/4/11', "")		//Gym_Sto_Des				Z102
		KNXAdd(dvKnx, BathRoom_Lum_OnOff, knxSWITCH, '2/4/12', "")	//BathRoom_Lum_OnOff			Z103
		KNXAdd(dvKnx, BathRoom_Lum_Sig, knxSWITCH, '2/4/13', "")	//BathRoom_Lum_Sig			Z103
		KNXAdd(dvKnx, BathRoom_Sto_Mnt, knxSWITCH, '2/4/14', "")	//BathRoom_Sto_Mnt			Z103
	}
	case 68: 
	{
		KNXAdd(dvKnx, BathRoom_Sto_Des, knxSWITCH, '2/4/15', "")	//BathRoom_Sto_Des			Z103
		KNXAdd(dvKnx, Shower_Lum_OnOff, knxSWITCH, '2/4/16', "")	//Shower_Lum_OnOff			Z104
		KNXAdd(dvKnx, Shower_Lum_Sig, knxSWITCH, '2/4/17', "")		//Shower_Lum_Sig			Z104
		KNXAdd(dvKnx, Shower_Sto_Mnt, knxSWITCH, '2/4/18', "")		//Shower_Sto_Mnt			Z104
		KNXAdd(dvKnx, Shower_Sto_Des, knxSWITCH, '2/4/19', "")		//Shower_Sto_Des			Z104
	}
	case 69: 
	{
		KNXAdd(dvKnx, WC_DressingMme_OnOff, knxSWITCH, '2/4/20', "")	//WC_DressingMme_OnOff			Z105
		KNXAdd(dvKnx, WC_DressingMme_Lum_Sig, knxSWITCH, '2/4/21', "")	//WC_DressingMme_Lum_Sig		Z105
		KNXAdd(dvKnx, WC_DressingMme_Sto_Mnt, knxSWITCH, '2/4/22', "")	//WC_DressingMme_Sto_Mnt		Z105
		KNXAdd(dvKnx, WC_DressingMme_Sto_Des, knxSWITCH, '2/4/23', "")	//WC_DressingMme_Sto_Des		Z105
		KNXAdd(dvKnx, DressingMme_Lum_OnOff, knxSWITCH, '2/4/24', "")	//DressingMme_Lum_OnOff			Z106
	}
	case 70: 
	{
		KNXAdd(dvKnx, DressingMme_Lum_Sig, knxSWITCH, '2/4/25', "")	//DressingMme_Lum_Sig			Z106
		KNXAdd(dvKnx, DressingMme_Sto_Mnt, knxSWITCH, '2/4/26', "")	//DressingMme_Sto_Mnt			Z106
		KNXAdd(dvKnx, DressingMme_Sto_Des, knxSWITCH, '2/4/27', "")	//DressingMme_Sto_Des			Z106
		KNXAdd(dvKnx, DressingMr_Lum_OnOff, knxSWITCH, '2/4/28', "")	//DressingMr_Lum_OnOff			Z107
		KNXAdd(dvKnx, DressingMr_Lum_Sig, knxSWITCH, '2/4/29', "")	//DressingMr_Lum_Sig			Z107
	}
	case 71: 
	{
		KNXAdd(dvKnx, DressingMr_Sto_Mnt, knxSWITCH, '2/4/30', "")	//DressingMr_Sto_Mnt			Z107
		KNXAdd(dvKnx, DressingMr_Sto_Des, knxSWITCH, '2/4/31', "")	//DressingMr_Sto_Des			Z107
		KNXAdd(dvKnx, WC_DressingMr_Lum_OnOff, knxSWITCH, '2/4/32', "")	//WC_DressingMr_Lum_OnOff		Z108
		KNXAdd(dvKnx, WC_DressingMr_Lum_Sig, knxSWITCH, '2/4/33', "")	//WC_DressingMr_Lum_Sig			Z108
		KNXAdd(dvKnx, WC_DressingMr_Sto_Mnt, knxSWITCH, '2/4/34', "")	//WC_DressingMr_Sto_Mnt			Z108
	}
	case 72: 
	{
		KNXAdd(dvKnx, WC_DressingMr_Sto_Des, knxSWITCH, '2/4/35', "")	//WC_DressingMr_Sto_Des			Z108
		KNXAdd(dvKnx, Entree_Lum_OnOff, knxSWITCH, '2/4/36', "")	//Entree_Lum_OnOff			Z110
		KNXAdd(dvKnx, Entree_Lum_Sig, knxSWITCH, '2/4/37', "")		//Entree_Lum_Sig			Z110
		KNXAdd(dvKnx, Entree_Sto_Mnt, knxSWITCH, '2/4/38', "")		//Entree_Sto_Mnt			Z110
		KNXAdd(dvKnx, Entree_Sto_Des, knxSWITCH, '2/4/39', "")		//Entree_Sto_Des			Z110
	}
	case 73: 
	{
		//Clavier Bibliotheque
		KNXAdd(dvKnx, PV1_01_BP1_General, knxSWITCH, '2/4/40', "")	//PV1_01_BP1_General
		KNXAdd(dvKnx, PV1_01_BP2_DimM, knxDim4, '2/4/41', "")		//PV1_01_BP2_DimM
		KNXAdd(dvKnx, PV1_01_BP3_DimP, knxDim4, '2/4/42', "")		//PV1_01_BP3_DimP	
		KNXAdd(dvKnx, PV1_01_BP4_Res, knxSWITCH, '2/4/43', "")		//PV1_01_BP4_Res
		KNXAdd(dvKnx, PV1_01_BP5_Scene1, knxSWITCH, '2/4/44', "")	//PV1_01_BP5_Scene1
	}
	case 74: 
	{
		KNXAdd(dvKnx, PV1_01_BP6_Res, knxSWITCH, '2/4/45', "")		//PV1_01_BP6_Res
		KNXAdd(dvKnx, PV1_01_BP7_Res, knxSWITCH, '2/4/46', "")		//PV1_01_BP7_Res
		KNXAdd(dvKnx, PV1_01_BP8_Res, knxSWITCH, '2/4/47', "")		//PV1_01_BP8_Res
		//Retour etat clavier Bibliotheque
		KNXAdd(dvKnx, PV1_01_Led1, knxSWITCH, '2/4/48', "")		//PV1_01_Led1
		KNXAdd(dvKnx, PV1_01_Led2, knxSWITCH, '2/4/49', "")		//PV1_01_Led2
	}
	case 75: 
	{
		KNXAdd(dvKnx, PV1_01_Led3, knxSWITCH, '2/4/50', "")		//PV1_01_Led3
		KNXAdd(dvKnx, PV1_01_Led4, knxSWITCH, '2/4/51', "")		//PV1_01_Led4
		//Clavier ChambreMaître (coté Lac)
		KNXAdd(dvKnx, PV1_02_BP1_General, knxSWITCH, '2/4/52', "")	//PV1_02_BP1_General
		KNXAdd(dvKnx, PV1_02_BP2_DimM, knxDim4, '2/4/53', "")		//PV1_02_BP2_DimM
		KNXAdd(dvKnx, PV1_02_BP3_DimP, knxDim4, '2/4/54', "")		//PV1_02_BP3_DimP
	}
	case 76: 
	{
		KNXAdd(dvKnx, PV1_02_BP4_Res, knxSWITCH, '2/4/55', "")		//PV1_02_BP4_Res
		KNXAdd(dvKnx, PV1_02_BP5_Scene1, knxSWITCH, '2/4/56', "")	//PV1_02_BP5_Scene1
		KNXAdd(dvKnx, PV1_02_BP6_Res, knxSWITCH, '2/4/57', "")		//PV1_02_BP6_Res
		KNXAdd(dvKnx, PV1_02_BP7_Res, knxSWITCH, '2/4/58', "")		//PV1_02_BP7_Res
		KNXAdd(dvKnx, PV1_02_BP8_Res, knxSWITCH, '2/4/59', "")		//PV1_02_BP8_Res
	}
	case 77: 
	{
		//Retour etat clavier ChambreMaître (coté Lac)
		KNXAdd(dvKnx, PV1_02_Led1, knxSWITCH, '2/4/60', "")		//PV1_02_Led1
		KNXAdd(dvKnx, PV1_02_Led2, knxSWITCH, '2/4/61', "")		//PV1_02_Led2
		KNXAdd(dvKnx, PV1_02_Led3, knxSWITCH, '2/4/62', "")		//PV1_02_Led3
		KNXAdd(dvKnx, PV1_02_Led4, knxSWITCH, '2/4/63', "")		//PV1_02_Led4
		//Clavier ChambreMaître (coté couloir)
		KNXAdd(dvKnx, PV1_03_BP1_General, knxSWITCH, '2/4/64', "")	//PV1_03_BP1_General
	}
	case 78: 
	{
		KNXAdd(dvKnx, PV1_03_BP2_DimM, knxDim4, '2/4/65', "")		//PV1_03_BP2_DimM
		KNXAdd(dvKnx, PV1_03_BP3_DimP, knxDim4, '2/4/66', "")		//PV1_03_BP3_DimP
		KNXAdd(dvKnx, PV1_03_BP4_Res, knxSWITCH, '2/4/67', "")		//PV1_03_BP4_Res
		KNXAdd(dvKnx, PV1_03_BP5_Scene1, knxSWITCH, '2/4/68', "")	//PV1_03_BP5_Scene1
		KNXAdd(dvKnx, PV1_03_BP6_Res, knxSWITCH, '2/4/69', "")		//PV1_03_BP6_Res
	}
	case 79: 
	{
		KNXAdd(dvKnx, PV1_03_BP7_Res, knxSWITCH, '2/4/70', "")		//PV1_03_BP7_Res
		KNXAdd(dvKnx, PV1_03_BP8_Res, knxSWITCH, '2/4/71', "")		//PV1_03_BP8_Res
		//Retour etat ChambreMaître (coté couloir)
		KNXAdd(dvKnx, PV1_03_Led1, knxSWITCH, '2/4/72', "")		//PV1_03_Led1
		KNXAdd(dvKnx, PV1_03_Led2, knxSWITCH, '2/4/73', "")		//PV1_03_Led2
		KNXAdd(dvKnx, PV1_03_Led3, knxSWITCH, '2/4/74', "")		//PV1_03_Led3
	}
	case 80: 
	{
		KNXAdd(dvKnx, PV1_03_Led4, knxSWITCH, '2/4/75', "")		//PV1_03_Led4
		//Clavier Gym (coté Lac)
		KNXAdd(dvKnx, PV1_04_BP1_General, knxSWITCH, '2/4/76', "")	//PV1_04_BP1_General
		KNXAdd(dvKnx, PV1_04_BP2_DimM, knxDim4, '2/4/77', "")		//PV1_04_BP2_DimM
		KNXAdd(dvKnx, PV1_04_BP3_DimP, knxDim4, '2/4/78', "")		//PV1_04_BP3_DimP
		KNXAdd(dvKnx, PV1_04_BP4_Res, knxSWITCH, '2/4/79', "")		//PV1_04_BP4_Res
	}
	case 81: 
	{
		KNXAdd(dvKnx, PV1_04_BP5_Scene1, knxSWITCH, '2/4/80', "")	//PV1_04_BP5_Scene1
		KNXAdd(dvKnx, PV1_04_BP6_Res, knxSWITCH, '2/4/81', "")		//PV1_04_BP6_Res
		KNXAdd(dvKnx, PV1_04_BP7_Res, knxSWITCH, '2/4/82', "")		//PV1_04_BP7_Res
		KNXAdd(dvKnx, PV1_04_BP8_Res, knxSWITCH, '2/4/83', "")		//PV1_04_BP8_Res
		//Retour etat clavier Gym (coté Lac)
		KNXAdd(dvKnx, PV1_04_Led1, knxSWITCH, '2/4/84', "")		//PV1_04_Led1
	}
	case 82: 
	{
		KNXAdd(dvKnx, PV1_04_Led2, knxSWITCH, '2/4/85', "")		//PV1_04_Led2
		KNXAdd(dvKnx, PV1_04_Led3, knxSWITCH, '2/4/86', "")		//PV1_04_Led3
		KNXAdd(dvKnx, PV1_04_Led4, knxSWITCH, '2/4/87', "")		//PV1_04_Led4
		//Clavier Gym (coté Shower)
		KNXAdd(dvKnx, PV1_05_BP1_General, knxSWITCH, '2/4/88', "")	//PV1_05_BP1_General
		KNXAdd(dvKnx, PV1_05_BP2_DimM, knxDim4, '2/4/89', "")		//PV1_05_BP2_DimM
	}
	case 83: 
	{
		KNXAdd(dvKnx, PV1_05_BP3_DimP, knxDim4, '2/4/90', "")		//PV1_05_BP3_DimP
		KNXAdd(dvKnx, PV1_05_BP4_Res, knxSWITCH, '2/4/91', "")		//PV1_05_BP4_Res
		KNXAdd(dvKnx, PV1_05_BP5_Scene1, knxSWITCH, '2/4/92', "")	//PV1_05_BP5_Scene1
		KNXAdd(dvKnx, PV1_05_BP6_Res, knxSWITCH, '2/4/93', "")		//PV1_05_BP6_Res
		KNXAdd(dvKnx, PV1_05_BP7_Res, knxSWITCH, '2/4/94', "")		//PV1_05_BP7_Res
	}
	case 84: 
	{
		KNXAdd(dvKnx, PV1_05_BP8_Res, knxSWITCH, '2/4/95', "")		//PV1_05_BP8_Res
		//Retour etat clavier Gym (coté Shower)
		KNXAdd(dvKnx, PV1_05_Led1, knxSWITCH, '2/4/96', "")		//PV1_05_Led1
		KNXAdd(dvKnx, PV1_05_Led2, knxSWITCH, '2/4/97', "")		//PV1_05_Led2
		KNXAdd(dvKnx, PV1_05_Led3, knxSWITCH, '2/4/98', "")		//PV1_05_Led3
		KNXAdd(dvKnx, PV1_05_Led4, knxSWITCH, '2/4/99', "")		//PV1_05_Led4
	}
	case 85: 
	{
		//Clavier Salle de bain
		KNXAdd(dvKnx, PV1_06_BP1_General, knxSWITCH, '2/4/100', "") 	//PV1_06_BP1_General
		KNXAdd(dvKnx, PV1_06_BP2_DimM, knxDim4, '2/4/101', "")   	//PV1_06_BP2_DimM
		KNXAdd(dvKnx, PV1_06_BP3_DimP, knxDim4, '2/4/102', "")   	//PV1_06_BP3_DimP
		KNXAdd(dvKnx, PV1_06_BP4_Res, knxSWITCH, '2/4/103', "") 	//PV1_06_BP4_Res
		KNXAdd(dvKnx, PV1_06_BP5_Scene1, knxSWITCH, '2/4/104', "") 	//PV1_06_BP5_Scene1
	}
	case 86: 
	{
		KNXAdd(dvKnx, PV1_06_BP6_Res, knxSWITCH, '2/4/105', "")		//PV1_06_BP6_Res
		KNXAdd(dvKnx, PV1_06_BP7_Res, knxSWITCH, '2/4/106', "")		//PV1_06_BP7_Res
		KNXAdd(dvKnx, PV1_06_BP8_Res, knxSWITCH, '2/4/107', "")		//PV1_06_BP8_Res
		//Retour etat clavier Salle de bain
		KNXAdd(dvKnx, PV1_06_Led1, knxSWITCH, '2/4/108', "")		//PV1_06_Led1
		KNXAdd(dvKnx, PV1_06_Led2, knxSWITCH, '2/4/109', "")		//PV1_06_Led2
	}
	case 87: 
	{
		KNXAdd(dvKnx, PV1_06_Led3, knxSWITCH, '2/4/110', "")		//PV1_06_Led3
		KNXAdd(dvKnx, PV1_06_Led4, knxSWITCH, '2/4/111', "")		//PV1_06_Led4
		//Clavier Shower
		KNXAdd(dvKnx, PV1_07_BP1_General, knxSWITCH, '2/4/112', "")	//PV1_07_BP1_General
		KNXAdd(dvKnx, PV1_07_BP2_DimM, knxDim4, '2/4/113', "")		//PV1_07_BP2_DimM
		KNXAdd(dvKnx, PV1_07_BP3_DimP, knxDim4, '2/4/114', "")		//PV1_07_BP3_DimP
	}
	case 88: 
	{
		KNXAdd(dvKnx, PV1_07_BP4_Res, knxSWITCH, '2/4/115', "")		//PV1_07_BP4_Res
		KNXAdd(dvKnx, PV1_07_BP5_Scene1, knxSWITCH, '2/4/116', "")	//PV1_07_BP5_Scene1
		KNXAdd(dvKnx, PV1_07_BP6_Res, knxSWITCH, '2/4/117', "")		//PV1_07_BP6_Res
		KNXAdd(dvKnx, PV1_07_BP7_Res, knxSWITCH, '2/4/118', "")		//PV1_07_BP7_Res
		KNXAdd(dvKnx, PV1_07_BP8_Res, knxSWITCH, '2/4/119', "")		//PV1_07_BP8_Res
	}
	case 89: 
	{
		//Retour etat clavier Shower
		KNXAdd(dvKnx, PV1_07_Led1, knxSWITCH, '2/4/120', "")		//PV1_07_Led1
		KNXAdd(dvKnx, PV1_07_Led2, knxSWITCH, '2/4/121', "")		//PV1_07_Led2
		KNXAdd(dvKnx, PV1_07_Led3, knxSWITCH, '2/4/122', "")		//PV1_07_Led3
		KNXAdd(dvKnx, PV1_07_Led4, knxSWITCH, '2/4/123', "")		//PV1_07_Led4
		//Clavier DressingMme
		KNXAdd(dvKnx, PV1_08_BP1_General, knxSWITCH, '2/4/124', "")	//PV1_08_BP1_General
	}
	case 90: 
	{
		KNXAdd(dvKnx, PV1_08_BP2_DimM, knxDim4, '2/4/125', "")		//PV1_08_BP2_DimM
		KNXAdd(dvKnx, PV1_08_BP3_DimP, knxDim4, '2/4/126', "")		//PV1_08_BP3_DimP
		KNXAdd(dvKnx, PV1_08_BP4_Res, knxSWITCH, '2/4/127', "")		//PV1_08_BP4_Res
		KNXAdd(dvKnx, PV1_08_BP5_Scene1, knxSWITCH, '2/4/128', "")	//PV1_08_BP5_Scene1
		KNXAdd(dvKnx, PV1_08_BP6_Res, knxSWITCH, '2/4/129', "")		//PV1_08_BP6_Res
	}
	case 91: 
	{
		KNXAdd(dvKnx, PV1_08_BP7_Res, knxSWITCH, '2/4/130', "")		//PV1_08_BP7_Res
		KNXAdd(dvKnx, PV1_08_BP8_Res, knxSWITCH, '2/4/131', "")		//PV1_08_BP8_Res
		//Retour clavier DressingMme
		KNXAdd(dvKnx, PV1_08_Led1, knxSWITCH, '2/4/132', "")		//PV1_08_Led1
		KNXAdd(dvKnx, PV1_08_Led2, knxSWITCH, '2/4/133', "")		//PV1_08_Led2
		KNXAdd(dvKnx, PV1_08_Led3, knxSWITCH, '2/4/134', "")		//PV1_08_Led3
	}
	case 92: 
	{
		KNXAdd(dvKnx, PV1_08_Led4, knxSWITCH, '2/4/135', "")		//PV1_08_Led4
		//Clavier Couloir DressingMr
		KNXAdd(dvKnx, PV1_09_BP1_General, knxSWITCH, '2/4/136', "")	//PV1_09_BP1_General
		KNXAdd(dvKnx, PV1_09_BP2_DimM, knxDim4, '2/4/137', "")		//PV1_09_BP2_DimM
		KNXAdd(dvKnx, PV1_09_BP3_DimP, knxDim4, '2/4/138', "")		//PV1_09_BP3_DimP
		KNXAdd(dvKnx, PV1_09_BP4_Res, knxSWITCH, '2/4/139', "")		//PV1_09_BP4_Res
	}
	case 93: 
	{
		KNXAdd(dvKnx, PV1_09_BP5_Scene1, knxSWITCH, '2/4/140', "")	//PV1_09_BP5_Scene1
		KNXAdd(dvKnx, PV1_09_BP6_Res, knxSWITCH, '2/4/141', "")		//PV1_09_BP6_Res
		KNXAdd(dvKnx, PV1_09_BP7_Res, knxSWITCH, '2/4/142', "")		//PV1_09_BP7_Res
		KNXAdd(dvKnx, PV1_09_BP8_Res, knxSWITCH, '2/4/143', "")		//PV1_09_BP8_Res
		//Retour etat Clavier Couloir DressingMr
		KNXAdd(dvKnx, PV1_09_Led1, knxSWITCH, '2/4/144', "")		//PV1_09_Led1
	}
	case 94: 
	{
		KNXAdd(dvKnx, PV1_09_Led2, knxSWITCH, '2/4/145', "")		//PV1_09_Led2
		KNXAdd(dvKnx, PV1_09_Led3, knxSWITCH, '2/4/146', "")		//PV1_09_Led3
		KNXAdd(dvKnx, PV1_09_Led4, knxSWITCH, '2/4/147', "")		//PV1_09_Led4
		// Clavier DressingMr
		KNXAdd(dvKnx, PV1_10_BP1_General, knxSWITCH, '2/4/148', "")	//PV1_10_BP1_General
		KNXAdd(dvKnx, PV1_10_BP2_DimM, knxDim4, '2/4/149', "")		//PV1_10_BP2_DimM
	}
	case 95: 
	{
		KNXAdd(dvKnx, PV1_10_BP3_DimP, knxDim4, '2/4/150', "")		//PV1_10_BP3_DimP
		KNXAdd(dvKnx, PV1_10_BP4_Res, knxSWITCH, '2/4/151', "")		//PV1_10_BP4_Res
		KNXAdd(dvKnx, PV1_10_BP5_Scene1, knxSWITCH, '2/4/152', "")	//PV1_10_BP5_Scene1
		KNXAdd(dvKnx, PV1_10_BP6_Res, knxSWITCH, '2/4/153', "")		//PV1_10_BP6_Res
		KNXAdd(dvKnx, PV1_10_BP7_Res, knxSWITCH, '2/4/154', "")		//PV1_10_BP7_Res
	}
	case 96: 
	{
		KNXAdd(dvKnx, PV1_10_BP8_Res, knxSWITCH, '2/4/155', "")		//PV1_10_BP8_Res
		//Retour etat Clavier DressingMr
		KNXAdd(dvKnx, PV1_10_Led1, knxSWITCH, '2/4/156', "")		//PV1_10_Led1
		KNXAdd(dvKnx, PV1_10_Led2, knxSWITCH, '2/4/157', "")		//PV1_10_Led2
		KNXAdd(dvKnx, PV1_10_Led3, knxSWITCH, '2/4/158', "")		//PV1_10_Led3
		KNXAdd(dvKnx, PV1_10_Led4, knxSWITCH, '2/4/159', "")		//PV1_10_Led4
	}
	case 97: 
	{
		//Clavier WC DressingMr
		KNXAdd(dvKnx, PV1_11_BP1_General, knxSWITCH, '2/4/160', "")	//PV1_11_BP1_General
		KNXAdd(dvKnx, PV1_11_BP2_DimM, knxDim4, '2/4/161', "")		//PV1_11_BP2_DimM
		KNXAdd(dvKnx, PV1_11_BP3_DimP, knxDim4, '2/4/162', "")		//PV1_11_BP3_DimP
		KNXAdd(dvKnx, PV1_11_BP4_Res, knxSWITCH, '2/4/163', "")		//PV1_11_BP4_Res
		KNXAdd(dvKnx, PV1_11_BP5_Scene1, knxSWITCH, '2/4/164', "")	//PV1_11_BP5_Scene1
	}
	case 98: 
	{
		KNXAdd(dvKnx, PV1_11_BP6_Res, knxSWITCH, '2/4/165', "")		//PV1_11_BP6_Res
		KNXAdd(dvKnx, PV1_11_BP7_Res, knxSWITCH, '2/4/166', "")		//PV1_11_BP7_Res
		KNXAdd(dvKnx, PV1_11_BP8_Res, knxSWITCH, '2/4/167', "")		//PV1_11_BP8_Res
		//Retour etat clavier WC DressingMr
		KNXAdd(dvKnx, PV1_11_Led1, knxSWITCH, '2/4/168', "")		//PV1_11_Led1
		KNXAdd(dvKnx, PV1_11_Led2, knxSWITCH, '2/4/169', "")		//PV1_11_Led2
	}
	case 99: 
	{
		KNXAdd(dvKnx, PV1_11_Led3, knxSWITCH, '2/4/170', "")		//PV1_11_Led3
		KNXAdd(dvKnx, PV1_11_Led4, knxSWITCH, '2/4/171', "")		//PV1_11_Led4
		//Clavier Porte Entree
		KNXAdd(dvKnx, PV1_12_BP1_General, knxSWITCH, '2/4/172', "")	//PV1_12_BP1_General
		KNXAdd(dvKnx, PV1_12_BP2_DimM, knxDim4, '2/4/173', "")		//PV1_12_BP2_DimM
		KNXAdd(dvKnx, PV1_12_BP3_DimP, knxDim4, '2/4/174', "")		//PV1_12_BP3_DimP
	}
	case 100: 
	{
		KNXAdd(dvKnx, PV1_12_BP4_Res, knxSWITCH, '2/4/175', "")		//PV1_12_BP4_Res
		KNXAdd(dvKnx, PV1_12_BP5_Scene1, knxSWITCH, '2/4/176', "")	//PV1_12_BP5_Scene1
		KNXAdd(dvKnx, PV1_12_BP6_Res, knxSWITCH, '2/4/177', "")		//PV1_12_BP6_Res
		KNXAdd(dvKnx, PV1_12_BP7_Res, knxSWITCH, '2/4/178', "")		//PV1_12_BP7_Res
		KNXAdd(dvKnx, PV1_12_BP8_Res, knxSWITCH, '2/4/179', "")		//PV1_12_BP8_Res
	}
	case 101: 
	{
		//Retour etat Clavier Porte Entree
		KNXAdd(dvKnx, PV1_12_Led1, knxSWITCH, '2/4/180', "")		//PV1_12_Led1
		KNXAdd(dvKnx, PV1_12_Led2, knxSWITCH, '2/4/181', "")		//PV1_12_Led2
		KNXAdd(dvKnx, PV1_12_Led3, knxSWITCH, '2/4/182', "")		//PV1_12_Led3
		KNXAdd(dvKnx, PV1_12_Led4, knxSWITCH, '2/4/183', "")		//PV1_12_Led4
		//Bouton Poussoir Escalier
		KNXAdd(dvKnx, SV1_01_BP1_Gen, knxSWITCH, '2/4/184', "")		//SV1_01_BP1_Gen
	}
	case 102: 
	{
		KNXAdd(dvKnx, SV1_01_BP2_Res, knxSWITCH, '2/4/185', "")		//SV1_01_BP2_Res
		//Bouton Poussoir  Couloir Dressing Mme
		KNXAdd(dvKnx, SV1_02_BP1_Gen, knxSWITCH, '2/4/186', "")		//SV1_02_BP1_Gen
		KNXAdd(dvKnx, SV1_02_BP2_Res, knxSWITCH, '2/4/187', "")		//SV1_02_BP2_Res
		//Bouton Poussoir WC Dressing Mme
		KNXAdd(dvKnx, SV1_03_BP1_Gen, knxSWITCH, '2/4/188', "")		//SV1_03_BP1_Gen
		KNXAdd(dvKnx, SV1_03_BP2_Res, knxSWITCH, '2/4/189', "")		//SV1_03_BP2_Res
	}
	case 103: 
	{
		// Moustiquaires / Stores   Chambre Maître
		KNXAdd(dvKnx, MV1_01_2M_BP1_Sto1_Mnt, knxSWITCH, '2/4/190', "")	//MV1_01_2M_BP1_Sto1_Mnt
		KNXAdd(dvKnx, MV1_01_2M_BP2_Sto1_Des, knxSWITCH, '2/4/191', "")	//MV1_01_2M_BP2_Sto1_Des
		KNXAdd(dvKnx, MV1_01_2M_BP3_Sto1_Mnt, knxSWITCH, '2/4/192', "")	//MV1_01_2M_BP3_Sto1_Mnt
		KNXAdd(dvKnx, MV1_01_2M_BP4_Sto1_Des, knxSWITCH, '2/4/193', "")	//MV1_01_2M_BP4_Sto1_Des
		// Moustiquaires / Stores  Gym (coté Lac)
		KNXAdd(dvKnx, MV1_02_2M_BP1_Sto1_Mnt, knxSWITCH, '2/4/194', "")	//MV1_02_2M_BP1_Sto1_Mnt
	}
	case 104: 
	{
		KNXAdd(dvKnx, MV1_02_2M_BP2_Sto1_Des, knxSWITCH, '2/4/195', "")	//MV1_02_2M_BP2_Sto1_Des
		KNXAdd(dvKnx, MV1_02_2M_BP3_Sto1_Mnt, knxSWITCH, '2/4/196', "")	//MV1_02_2M_BP3_Sto1_Mnt
		KNXAdd(dvKnx, MV1_02_2M_BP4_Sto1_Des, knxSWITCH, '2/4/197', "")	//MV1_02_2M_BP4_Sto1_Des
		//  Moustiquaires / Stores  Gym (coté Shower)
		KNXAdd(dvKnx, MV1_03_2M_BP1_Sto1_Mnt, knxSWITCH, '2/4/198', "")	//MV1_03_2M_BP1_Sto1_Mnt
		KNXAdd(dvKnx, MV1_03_2M_BP2_Sto1_Des, knxSWITCH, '2/4/199', "")	//MV1_03_2M_BP2_Sto1_Des
	}
	case 105: 
	{
		KNXAdd(dvKnx, MV1_03_2M_BP3_Sto1_Mnt, knxSWITCH, '2/4/200', "")	//MV1_03_2M_BP3_Sto1_Mnt
		KNXAdd(dvKnx, MV1_03_2M_BP4_Sto1_Des, knxSWITCH, '2/4/201', "")	//MV1_03_2M_BP4_Sto1_Des
		//  Moustiquaires / Stores Salle de bain
		KNXAdd(dvKnx, MV1_04_4M_BP1_Sto1_Mnt, knxSWITCH, '2/4/202', "")	//MV1_04_4M_BP1_Sto1_Mnt
		KNXAdd(dvKnx, MV1_04_4M_BP2_Sto1_Des, knxSWITCH, '2/4/203', "")	//MV1_04_4M_BP2_Sto1_Des
		KNXAdd(dvKnx, MV1_04_4M_BP3_Sto1_Mnt, knxSWITCH, '2/4/204', "")	//MV1_04_4M_BP3_Sto1_Mnt
	}
	case 106: 
	{
		KNXAdd(dvKnx, MV1_04_4M_BP4_Sto1_Des, knxSWITCH, '2/4/205', "")	//MV1_04_4M_BP4_Sto1_Des
		KNXAdd(dvKnx, MV1_04_4M_BP5_Sto1_Mnt, knxSWITCH, '2/4/206', "")	//MV1_04_4M_BP5_Sto1_Mnt
		KNXAdd(dvKnx, MV1_04_4M_BP6_Sto1_Des, knxSWITCH, '2/4/207', "")	//MV1_04_4M_BP6_Sto1_Des
		KNXAdd(dvKnx, MV1_04_4M_BP7_Sto1_Mnt, knxSWITCH, '2/4/208', "")	//MV1_04_4M_BP7_Sto1_Mnt
		KNXAdd(dvKnx, MV1_04_4M_BP8_Sto1_Des, knxSWITCH, '2/4/209', "")	//MV1_04_4M_BP8_Sto1_Des
	}
	case 107: 
	{
		//  Moustiquaires / Stores Dressing Mme
		KNXAdd(dvKnx, MV1_05_2M_BP1_Sto1_Mnt, knxSWITCH, '2/4/210', "")	//MV1_05_2M_BP1_Sto1_Mnt
		KNXAdd(dvKnx, MV1_05_2M_BP2_Sto1_Des, knxSWITCH, '2/4/211', "")	//MV1_05_2M_BP2_Sto1_Des
		KNXAdd(dvKnx, MV1_05_2M_BP3_Sto1_Mnt, knxSWITCH, '2/4/212', "")	//MV1_05_2M_BP3_Sto1_Mnt
		KNXAdd(dvKnx, MV1_05_2M_BP4_Sto1_Des, knxSWITCH, '2/4/213', "")	//MV1_05_2M_BP4_Sto1_Des
		//  Moustiquaires / Stores  Dressing Mr
		KNXAdd(dvKnx, MV1_06_2M_BP1_Sto1_Mnt, knxSWITCH, '2/4/214', "")	//MV1_06_2M_BP1_Sto1_Mnt
	}
	case 108: 
	{
		KNXAdd(dvKnx, MV1_06_2M_BP2_Sto1_Des, knxSWITCH, '2/4/215', "")	//MV1_06_2M_BP2_Sto1_Des
		KNXAdd(dvKnx, MV1_06_2M_BP3_Sto1_Mnt, knxSWITCH, '2/4/216', "")	//MV1_06_2M_BP3_Sto1_Mnt
		KNXAdd(dvKnx, MV1_06_2M_BP4_Sto1_Des, knxSWITCH, '2/4/217', "")	//MV1_06_2M_BP4_Sto1_Des
		//  Moustiquaires / Stores  WC Dressing Mr
		KNXAdd(dvKnx, MV1_07_2M_BP1_Sto1_Mnt, knxSWITCH, '2/4/218', "")	//MV1_07_2M_BP1_Sto1_Mnt
		KNXAdd(dvKnx, MV1_07_2M_BP2_Sto1_Des, knxSWITCH, '2/4/219', "")	//MV1_07_2M_BP2_Sto1_Des
	}
	case 109: 
	{
		KNXAdd(dvKnx, MV1_07_2M_BP3_Sto1_Mnt, knxSWITCH, '2/4/220', "")	//MV1_07_2M_BP3_Sto1_Mnt
		KNXAdd(dvKnx, MV1_07_2M_BP4_Sto1_Des, knxSWITCH, '2/4/221', "")	//MV1_07_2M_BP4_Sto1_Des
		//  Moustiquaires / Stores  Entree
		KNXAdd(dvKnx, MV1_08_M_BP1_Sto1_Mnt, knxSWITCH, '2/4/222', "")	//MV1_08_M_BP1_Sto1_Mnt
		KNXAdd(dvKnx, MV1_08_M_BP2_Sto1_Des, knxSWITCH, '2/4/223', "")	//MV1_08_M_BP2_Sto1_Des
	}
	
	
	
	//501........................................................---_______-------------
	//Commandes 2eme etage
	
	
	
	
	
	case 110: 
	{
		//Commandes par zone
		KNXAdd(dvKnx, Cage_escalier_Lum_OnOff, knxSWITCH, '2/6/0', "")	//Cage_escalier_Lum_OnOff
		KNXAdd(dvKnx, Cage_escalier_Sig, knxSWITCH, '2/6/1', "")	//Cage_escalier_Sig
		KNXAdd(dvKnx, Cage_escalier_Sto_Mnt, knxSWITCH, '2/6/2', "")	//Cage_escalier_Sto_Mnt
		KNXAdd(dvKnx, Cage_escalier_Sto_Des, knxSWITCH, '2/6/3', "")	//Cage_escalier_Sto_Des
		KNXAdd(dvKnx, Ch_Ivoire_Lum_OnOff, knxSWITCH, '2/6/4', "")	//Ch_Ivoire_Lum_OnOff
	}
	case 111: 
	{
		KNXAdd(dvKnx, Ch_Ivoire_Sig, knxSWITCH, '2/6/5', "")		//Ch_Ivoire_Sig
		KNXAdd(dvKnx, Ch_Ivoire_Sto_Mnt, knxSWITCH, '2/6/6', "")	//Ch_Ivoire_Sto_Mnt
		KNXAdd(dvKnx, Ch_Ivoire_Sto_Des, knxSWITCH, '2/6/7', "")	//Ch_Ivoire_Sto_Des
		KNXAdd(dvKnx, SDB_Ivoire_Lum_OnOff, knxSWITCH, '2/6/8', "")	//SDB_Ivoire_Lum_OnOff
		KNXAdd(dvKnx, SDB_Ivoire_Sig, knxSWITCH, '2/6/9', "")		//SDB_Ivoire_Sig
	}
	case 112: 
	{
		KNXAdd(dvKnx, SDB_Ivoire_Sto_Mnt, knxSWITCH, '2/6/10', "")	//SDB_Ivoire_Sto_Mnt
		KNXAdd(dvKnx, SDB_Ivoire_Sto_Des, knxSWITCH, '2/6/11', "")	//SDB_Ivoire_Sto_Des
		KNXAdd(dvKnx, Ch_Gold_Lum_OnOff, knxSWITCH, '2/6/12', "")	//Ch_Gold_Lum_OnOff
		KNXAdd(dvKnx, Ch_Gold_Sig, knxSWITCH, '2/6/13', "")		//Ch_Gold_Sig
		KNXAdd(dvKnx, Ch_Gold_Sto_Mnt, knxSWITCH, '2/6/14', "")		//Ch_Gold_Sto_Mnt
	}
	case 113: 
	{
		KNXAdd(dvKnx, Ch_Gold_Sto_Des, knxSWITCH, '2/6/15', "")		//Ch_Gold_Sto_Des
		KNXAdd(dvKnx, SDB_Ch_Gold_Lum_OnOff, knxSWITCH, '2/6/16', "")	//SDB_Ch_Gold_Lum_OnOff
		KNXAdd(dvKnx, SDB_Ch_Gold_Sig, knxSWITCH, '2/6/17', "")		//SDB_Ch_Gold_Sig
		KNXAdd(dvKnx, SDB_Ch_Gold_Sto_Mnt, knxSWITCH, '2/6/18', "")	//SDB_Ch_Gold_Sto_Mnt
		KNXAdd(dvKnx, SDB_Ch_Gold_Sto_Des, knxSWITCH, '2/6/19', "")	//SDB_Ch_Gold_Sto_Des
	}
	case 114: 
	{
		KNXAdd(dvKnx, Ch_Silver_Lum_OnOff, knxSWITCH, '2/6/20', "")	//Ch_Silver_Lum_OnOff
		KNXAdd(dvKnx, Ch_Silver_Sig, knxSWITCH, '2/6/21', "")		//Ch_Silver_Sig
		KNXAdd(dvKnx, Ch_Silver_Sto_Mnt, knxSWITCH, '2/6/22', "")	//Ch_Silver_Sto_Mnt
		KNXAdd(dvKnx, Ch_Silver_Sto_Des, knxSWITCH, '2/6/23', "")	//Ch_Silver_Sto_Des
		KNXAdd(dvKnx, SDB_Ch_Silver_Lum_OnOff, knxSWITCH, '2/6/24', "")	//SDB_Ch_Silver_Lum_OnOff
	}
	case 115: 
	{
		KNXAdd(dvKnx, SDB_Ch_Silver_Sig, knxSWITCH, '2/6/25', "")	//SDB_Ch_Silver_Sig
		KNXAdd(dvKnx, SDB_Ch_Silver_Sto_Mnt, knxSWITCH, '2/6/26', "")	//SDB_Ch_Silver_Sto_Mnt
		KNXAdd(dvKnx, SDB_Ch_Silver_Sto_Des, knxSWITCH, '2/6/27', "")	//SDB_Ch_Silver_Sto_Des
		KNXAdd(dvKnx, Ch_Parme_Lum_OnOff, knxSWITCH, '2/6/28', "")	//Ch_Parme_Lum_OnOff
		KNXAdd(dvKnx, Ch_Parme_Sig, knxSWITCH, '2/6/29', "")		//Ch_Parme_Sig
	}
	case 116: 
	{
		KNXAdd(dvKnx, Ch_Parme_Sto_Mnt, knxSWITCH, '2/6/30', "")	//Ch_Parme_Sto_Mnt
		KNXAdd(dvKnx, Ch_Parme_Sto_Des, knxSWITCH, '2/6/31', "")	//Ch_Parme_Sto_Des
		KNXAdd(dvKnx, SDB_Ch_Parme_Lum_OnOff, knxSWITCH, '2/6/32', "")	//SDB_Ch_Parme_Lum_OnOff
		KNXAdd(dvKnx, SDB_Ch_Parme_Sig, knxSWITCH, '2/6/33', "")	//SDB_Ch_Parme_Sig
		KNXAdd(dvKnx, SDB_Ch_Parme_Sto_Mnt, knxSWITCH, '2/6/34', "")	//SDB_Ch_Parme_Sto_Mnt
	}
	case 117: 
	{
		KNXAdd(dvKnx, SDB_Ch_Parme_Sto_Des, knxSWITCH, '2/6/35', "")	//SDB_Ch_Parme_Sto_Des
		//Clavier Face Ascenseur
		KNXAdd(dvKnx, PV2_01_BP1_General, knxSWITCH, '2/6/36', "")	//PV2_01_BP1_General
		KNXAdd(dvKnx, PV2_01_BP2_DimM, knxDim4, '2/6/37', "")		//PV2_01_BP2_DimM
		KNXAdd(dvKnx, PV2_01_BP3_DimP, knxDim4, '2/6/38', "")		//PV2_01_BP3_DimP
		KNXAdd(dvKnx, PV2_01_BP4_Res, knxSWITCH, '2/6/39', "")		//PV2_01_BP4_Res
	}
	case 118: 
	{
		KNXAdd(dvKnx, PV2_01_BP5_Scene1, knxSWITCH, '2/6/40', "")	//PV2_01_BP5_Scene1
		KNXAdd(dvKnx, PV2_01_BP6_Res, knxSWITCH, '2/6/41', "")		//PV2_01_BP6_Res
		KNXAdd(dvKnx, PV2_01_BP7_Res, knxSWITCH, '2/6/42', "")		//PV2_01_BP7_Res
		KNXAdd(dvKnx, PV2_01_BP8_Res, knxSWITCH, '2/6/43', "")		//PV2_01_BP8_Res
		//Retour etat clavier face Ascenseur
		KNXAdd(dvKnx, PV2_01_Led1, knxSWITCH, '2/6/44', "")		//PV2_01_Led1
	}
	case 119: 
	{
		KNXAdd(dvKnx, PV2_01_Led2, knxSWITCH, '2/6/45', "")		//PV2_01_Led2
		KNXAdd(dvKnx, PV2_01_Led3, knxSWITCH, '2/6/46', "")		//PV2_01_Led3
		KNXAdd(dvKnx, PV2_01_Led4, knxSWITCH, '2/6/47', "")		//PV2_01_Led4
		//Clavier Chambre Ivoire
		KNXAdd(dvKnx, PV2_02_BP1_General, knxSWITCH, '2/6/48', "")	//PV2_02_BP1_General
		KNXAdd(dvKnx, PV2_02_BP2_DimM, knxDim4, '2/6/49', "")		//PV2_02_BP2_DimM
	}
	case 120: 
	{
		KNXAdd(dvKnx, PV2_02_BP3_DimP, knxDim4, '2/6/50', "")		//PV2_02_BP3_DimP
		KNXAdd(dvKnx, PV2_02_BP4_Res, knxSWITCH, '2/6/51', "")		//PV2_02_BP4_Res
		KNXAdd(dvKnx, PV2_02_BP5_Scene1, knxSWITCH, '2/6/52', "")	//PV2_02_BP5_Scene1
		KNXAdd(dvKnx, PV2_02_BP6_Res, knxSWITCH, '2/6/53', "")		//PV2_02_BP6_Res
		KNXAdd(dvKnx, PV2_02_BP7_Res, knxSWITCH, '2/6/54', "")		//PV2_02_BP7_Res
	}
	case 121: 
	{
		KNXAdd(dvKnx, PV2_02_BP8_Res, knxSWITCH, '2/6/55', "")		//PV2_02_BP8_Res
		//Retour clavier Chambre Ivoire
		KNXAdd(dvKnx, PV2_02_Led1, knxSWITCH, '2/6/56', "")		//PV2_02_Led1
		KNXAdd(dvKnx, PV2_02_Led2, knxSWITCH, '2/6/57', "")		//PV2_02_Led2
		KNXAdd(dvKnx, PV2_02_Led3, knxSWITCH, '2/6/58', "")		//PV2_02_Led3
		KNXAdd(dvKnx, PV2_02_Led4, knxSWITCH, '2/6/59', "")		//PV2_02_Led4
	}
	case 122: 
	{
		//Clavier SDB Chambre Ivoire
		KNXAdd(dvKnx, PV2_03_BP1_General, knxSWITCH, '2/6/60', "")	//PV2_03_BP1_General
		KNXAdd(dvKnx, PV2_03_BP2_DimM, knxDim4, '2/6/61', "")		//PV2_03_BP2_DimM
		KNXAdd(dvKnx, PV2_03_BP3_DimP, knxDim4, '2/6/62', "")		//PV2_03_BP3_DimP
		KNXAdd(dvKnx, PV2_03_BP4_Res, knxSWITCH, '2/6/63', "")		//PV2_03_BP4_Res
		KNXAdd(dvKnx, PV2_03_BP5_Scene1, knxSWITCH, '2/6/64', "")	//PV2_03_BP5_Scene1
	}
	case 123: 
	{
		KNXAdd(dvKnx, PV2_03_BP6_Res, knxSWITCH, '2/6/65', "")		//PV2_03_BP6_Res
		KNXAdd(dvKnx, PV2_03_BP7_Res, knxSWITCH, '2/6/66', "")		//PV2_03_BP7_Res
		KNXAdd(dvKnx, PV2_03_BP8_Res, knxSWITCH, '2/6/67', "")		//PV2_03_BP8_Res
		//Retour etat clavier SDB Chambre Ivoir
		KNXAdd(dvKnx, PV2_03_Led1, knxSWITCH, '2/6/68', "")		//PV2_03_Led1
		KNXAdd(dvKnx, PV2_03_Led2, knxSWITCH, '2/6/69', "")		//PV2_03_Led2
	}
	case 124: 
	{
		KNXAdd(dvKnx, PV2_03_Led3, knxSWITCH, '2/6/70', "")		//PV2_03_Led3
		KNXAdd(dvKnx, PV2_03_Led4, knxSWITCH, '2/6/71', "")		//PV2_03_Led4
		//Clavier Chambre Gold
		KNXAdd(dvKnx, PV2_04_BP1_General, knxSWITCH, '2/6/72', "")	//PV2_04_BP1_General
		KNXAdd(dvKnx, PV2_04_BP2_DimM, knxDim4, '2/6/73', "")		//PV2_04_BP2_DimM
		KNXAdd(dvKnx, PV2_04_BP3_DimP, knxDim4, '2/6/74', "")		//PV2_04_BP3_DimP
	}
	case 125: 
	{
		KNXAdd(dvKnx, PV2_04_BP4_Res, knxSWITCH, '2/6/75', "")		//PV2_04_BP4_Res
		KNXAdd(dvKnx, PV2_04_BP5_Scene1, knxSWITCH, '2/6/76', "")	//PV2_04_BP5_Scene1
		KNXAdd(dvKnx, PV2_04_BP6_Res, knxSWITCH, '2/6/77', "")		//PV2_04_BP6_Res
		KNXAdd(dvKnx, PV2_04_BP7_Res, knxSWITCH, '2/6/78', "")		//PV2_04_BP7_Res
		KNXAdd(dvKnx, PV2_04_BP8_Res, knxSWITCH, '2/6/79', "")		//PV2_04_BP8_Res
	}
	case 126: 
	{
		//Retour etat Clavier Chambre Gold
		KNXAdd(dvKnx, PV2_04_Led1, knxSWITCH, '2/6/80', "")		//PV2_04_Led1
		KNXAdd(dvKnx, PV2_04_Led2, knxSWITCH, '2/6/81', "")		//PV2_04_Led2
		KNXAdd(dvKnx, PV2_04_Led3, knxSWITCH, '2/6/82', "")		//PV2_04_Led3
		KNXAdd(dvKnx, PV2_04_Led4, knxSWITCH, '2/6/83', "")		//PV2_04_Led4
		//Clavier SDB Gold
		KNXAdd(dvKnx, PV2_05_BP1_General, knxSWITCH, '2/6/84', "")	//PV2_05_BP1_General
	}
	case 127: 
	{
		KNXAdd(dvKnx, PV2_05_BP2_DimM, knxDim4, '2/6/85', "")		//PV2_05_BP2_DimM
		KNXAdd(dvKnx, PV2_05_BP3_DimP, knxDim4, '2/6/86', "")		//PV2_05_BP3_DimP
		KNXAdd(dvKnx, PV2_05_BP4_Res, knxSWITCH, '2/6/87', "")		//PV2_05_BP4_Res
		KNXAdd(dvKnx, PV2_05_BP5_Scene1, knxSWITCH, '2/6/88', "")	//PV2_05_BP5_Scene1
		KNXAdd(dvKnx, PV2_05_BP6_Res, knxSWITCH, '2/6/89', "")		//PV2_05_BP6_Res
	}
	case 128: 
	{
		KNXAdd(dvKnx, PV2_05_BP7_Res, knxSWITCH, '2/6/90', "")		//PV2_05_BP7_Res
		KNXAdd(dvKnx, PV2_05_BP8_Res, knxSWITCH, '2/6/91', "")		//PV2_05_BP8_Res
		//Retour etat Clavier SDB Gold
		KNXAdd(dvKnx, PV2_05_Led1, knxSWITCH, '2/6/92', "")		//PV2_05_Led1
		KNXAdd(dvKnx, PV2_05_Led2, knxSWITCH, '2/6/93', "")		//PV2_05_Led2
		KNXAdd(dvKnx, PV2_05_Led3, knxSWITCH, '2/6/94', "")		//PV2_05_Led3
	}
	case 129: 
	{
		KNXAdd(dvKnx, PV2_05_Led4, knxSWITCH, '2/6/95', "")		//PV2_05_Led4
		//Clavier Chambre Silver
		KNXAdd(dvKnx, PV2_06_BP1_General, knxSWITCH, '2/6/96', "")	//PV2_06_BP1_General
		KNXAdd(dvKnx, PV2_06_BP2_DimM, knxDim4, '2/6/97', "")		//PV2_06_BP2_DimM
		KNXAdd(dvKnx, PV2_06_BP3_DimP, knxDim4, '2/6/98', "")		//PV2_06_BP3_DimP
		KNXAdd(dvKnx, PV2_06_BP4_Res, knxSWITCH, '2/6/99', "")		//PV2_06_BP4_Res
	}
	case 130: 
	{
		KNXAdd(dvKnx, PV2_06_BP5_Scene1, knxSWITCH, '2/6/100', "")	//PV2_06_BP5_Scene1
		KNXAdd(dvKnx, PV2_06_BP6_Res, knxSWITCH, '2/6/101', "")		//PV2_06_BP6_Res
		KNXAdd(dvKnx, PV2_06_BP7_Res, knxSWITCH, '2/6/102', "")		//PV2_06_BP7_Res
		KNXAdd(dvKnx, PV2_06_BP8_Res, knxSWITCH, '2/6/103', "")		//PV2_06_BP8_Res
		//Retour etat Clavier Chambre Silver
		KNXAdd(dvKnx, PV2_06_Led1, knxSWITCH, '2/6/104', "")		//PV2_06_Led1
	}
	case 131: 
	{
		KNXAdd(dvKnx, PV2_06_Led2, knxSWITCH, '2/6/105', "")		//PV2_06_Led2
		KNXAdd(dvKnx, PV2_06_Led3, knxSWITCH, '2/6/106', "")		//PV2_06_Led3
		KNXAdd(dvKnx, PV2_06_Led4, knxSWITCH, '2/6/107', "")		//PV2_06_Led4
		//Clavier SDB Silver
		KNXAdd(dvKnx, PV2_07_BP1_General, knxSWITCH, '2/6/108', "")	//PV2_07_BP1_General
		KNXAdd(dvKnx, PV2_07_BP2_DimM, knxDim4, '2/6/109', "")		//PV2_07_BP2_DimM
	}
	case 132: 
	{
		KNXAdd(dvKnx, PV2_07_BP3_DimP, knxDim4, '2/6/110', "")		//PV2_07_BP3_DimP
		KNXAdd(dvKnx, PV2_07_BP4_Res, knxSWITCH, '2/6/111', "")		//PV2_07_BP4_Res
		KNXAdd(dvKnx, PV2_07_BP5_Scene1, knxSWITCH, '2/6/112', "")	//PV2_07_BP5_Scene1
		KNXAdd(dvKnx, PV2_07_BP6_Res, knxSWITCH, '2/6/113', "")		//PV2_07_BP6_Res
		KNXAdd(dvKnx, PV2_07_BP7_Res, knxSWITCH, '2/6/114', "")		//PV2_07_BP7_Res
	}
	case 133: 
	{
		KNXAdd(dvKnx, PV2_07_BP8_Res, knxSWITCH, '2/6/115', "")		//PV2_07_BP8_Res
		//Retour Clavier SDB Silver
		KNXAdd(dvKnx, PV2_07_Led1, knxSWITCH, '2/6/116', "")		//PV2_07_Led1
		KNXAdd(dvKnx, PV2_07_Led2, knxSWITCH, '2/6/117', "")		//PV2_07_Led2
		KNXAdd(dvKnx, PV2_07_Led3, knxSWITCH, '2/6/118', "")		//PV2_07_Led3
		KNXAdd(dvKnx, PV2_07_Led4, knxSWITCH, '2/6/119', "")		//PV2_07_Led4
	}
	case 134: 
	{
		//Clavier Chambre Parme 
		KNXAdd(dvKnx, PV2_08_BP1_General, knxSWITCH, '2/6/120', "")	//PV2_08_BP1_General
		KNXAdd(dvKnx, PV2_08_BP2_DimM, knxDim4, '2/6/121', "")		//PV2_08_BP2_DimM
		KNXAdd(dvKnx, PV2_08_BP3_DimP, knxDim4, '2/6/122', "")		//PV2_08_BP3_DimP
		KNXAdd(dvKnx, PV2_08_BP4_Res, knxSWITCH, '2/6/123', "")		//PV2_08_BP4_Res
		KNXAdd(dvKnx, PV2_08_BP5_Scene1, knxSWITCH, '2/6/124', "")	//PV2_08_BP5_Scene1
	}
	case 135: 
	{
		KNXAdd(dvKnx, PV2_08_BP6_Res, knxSWITCH, '2/6/125', "")		//PV2_08_BP6_Res
		KNXAdd(dvKnx, PV2_08_BP7_Res, knxSWITCH, '2/6/126', "")		//PV2_08_BP7_Res
		KNXAdd(dvKnx, PV2_08_BP8_Res, knxSWITCH, '2/6/127', "")		//PV2_08_BP8_Res
		//Retour Clavier Chambre Parme
		KNXAdd(dvKnx, PV2_08_Led1, knxSWITCH, '2/6/128', "")		//PV2_08_Led1
		KNXAdd(dvKnx, PV2_08_Led2, knxSWITCH, '2/6/129', "")		//PV2_08_Led2
	}
	case 136: 
	{
		KNXAdd(dvKnx, PV2_08_Led3, knxSWITCH, '2/6/130', "")		//PV2_08_Led3
		KNXAdd(dvKnx, PV2_08_Led4, knxSWITCH, '2/6/131', "")		//PV2_08_Led4
		//Clavier SDB Chambre Parme
		KNXAdd(dvKnx, PV2_09_BP1_General, knxSWITCH, '2/6/132', "")	//PV2_09_BP1_General
		KNXAdd(dvKnx, PV2_09_BP2_DimM, knxDim4, '2/6/133', "")		//PV2_09_BP2_DimM
		KNXAdd(dvKnx, PV2_09_BP3_DimP, knxDim4, '2/6/134', "")		//PV2_09_BP3_DimP
	}
	case 137: 
	{
		KNXAdd(dvKnx, PV2_09_BP4_Res, knxSWITCH, '2/6/135', "")		//PV2_09_BP4_Res
		KNXAdd(dvKnx, PV2_09_BP5_Scene1, knxSWITCH, '2/6/136', "")	//PV2_09_BP5_Scene1
		KNXAdd(dvKnx, PV2_09_BP6_Res, knxSWITCH, '2/6/137', "")		//PV2_09_BP6_Res
		KNXAdd(dvKnx, PV2_09_BP7_Res, knxSWITCH, '2/6/138', "")		//PV2_09_BP7_Res
		KNXAdd(dvKnx, PV2_09_BP8_Res, knxSWITCH, '2/6/139', "")		//PV2_09_BP8_Res
	}
	case 138: 
	{
		//Retour Clavier SDB Chambre Parme
		KNXAdd(dvKnx, PV2_09_Led1, knxSWITCH, '2/6/140', "")		//PV2_09_Led1
		KNXAdd(dvKnx, PV2_09_Led2, knxSWITCH, '2/6/141', "")		//PV2_09_Led2
		KNXAdd(dvKnx, PV2_09_Led3, knxSWITCH, '2/6/142', "")		//PV2_09_Led3
		KNXAdd(dvKnx, PV2_09_Led4, knxSWITCH, '2/6/143', "")		//PV2_09_Led4
		//Bouton Poussoir escalier
		KNXAdd(dvKnx, SV2_01_BP1_Gen, knxSWITCH, '2/6/144', "")		//SV2_01_BP1_Gen
	}
	case 139: 
	{
		KNXAdd(dvKnx, SV2_01_BP2_Res, knxSWITCH, '2/6/145', "")		//SV2_01_BP2_Res
		//Bouton Poussoir WC Chambre Ivoire
		KNXAdd(dvKnx, SV2_02_BP1_Gen, knxSWITCH, '2/6/146', "")		//SV2_02_BP1_Gen
		KNXAdd(dvKnx, SV2_02_BP2_Res, knxSWITCH, '2/6/147', "")		//SV2_02_BP2_Res
		//Bouton Poussoir WC Chambre Parme
		KNXAdd(dvKnx, SV2_03_BP1_Gen, knxSWITCH, '2/6/148', "")		//SV2_03_BP1_Gen
		KNXAdd(dvKnx, SV2_03_BP2_Res, knxSWITCH, '2/6/149', "")		//SV2_03_BP2_Res
	}
	


	
	
DEFAULT:  Counter = 0
    }
    IF (Counter)
    {
	Counter ++
    }
}

DEFINE_PROGRAM 
