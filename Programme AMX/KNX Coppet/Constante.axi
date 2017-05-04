PROGRAM_NAME='Constante'

DEFINE_CONSTANT


//Commandes Generales


INTEGER Villa_Lum_OnOff			=1
INTEGER	Villa_Lum_Sig			=2	
INTEGER Villa_Sto_Mnt			=3
INTEGER Villa_Sto_Des			=4

// Commandes par etages


INTEGER Sous_Sol_Lum_OnOff		=5
INTEGER Sous_Sol_Lum_Sig		=6
INTEGER Sous_Sol_Sto_Mnt		=7
INTEGER Sous_Sol_Sto_Des		=8
INTEGER Rez_Lum_OnOff			=9
INTEGER Rez_Lum_Sig			=10
INTEGER Rez_Sto_Mnt			=11
INTEGER Rez_Sto_Des			=12
INTEGER Etage1_Lum_OnOff		=13
INTEGER Etage1_Lum_Sig			=14
INTEGER Etage1_Sto_Mnt			=15
INTEGER Etage1_Sto_Des			=16
INTEGER Etage2_Lum_OnOff		=17
INTEGER Etage2_Lum_Sig			=18
INTEGER Etage2_Sto_Mnt			=19
INTEGER Etage2_Sto_Des			=20
INTEGER Verrou_Lum_SousSol		=21
INTEGER Verrou_Lum_Rez			=22
INTEGER Verrou_Lum_1er			=23
INTEGER Verrou_Lum_2eme			=24
INTEGER Verrou_Lum_Villa		=25



// Commandes Sous Sol




INTEGER Billard_Lum_OnOff		=26
INTEGER Billard_Lum_Sig			=27
INTEGER Cave_a_vin_Lum_OnOff		=28
INTEGER Cave_a_vin_Lum_Sig		=29
INTEGER Salle_de_bain_Lum_OnOff		=30
INTEGER Salle_de_bain_Lum_Sig		=31
INTEGER Toilette_Lum_OnOff		=32
INTEGER Toilette_Lum_Sig		=33
INTEGER Buanderie_Lum_OnOff		=34
INTEGER Buanderie_Lum_Sig		=35
INTEGER Coffre_Lum_OnOff		=36
INTEGER Coffre_Lum_Sig			=37
INTEGER Local_Techn_Lum_OnOff		=38
INTEGER Local_Techn_Lum_Sig		=39
INTEGER Escalier_Lum_OnOff		=40
INTEGER Escalier_Lum_Sig		=41
INTEGER Tunnel_Lum_OnOff		=42
INTEGER Tunnel_Lum_Sig			=43
INTEGER ZEXT_OnOff			=44
//Clavier Billard
INTEGER PVS_01_BP1_General		=45
INTEGER PVS_01_BP2_DimM			=46
INTEGER PVS_01_BP3_DimP			=47
INTEGER PVS_01_BP4_Res			=48
INTEGER PVS_01_BP5_Scene1		=49
INTEGER PVS_01_BP6_Res			=50
INTEGER PVS_01_BP7_Res			=51
INTEGER PVS_01_BP8_Res			=52
//Retour etat clavier billard
INTEGER PVS_01_Led1			=53
INTEGER PVS_01_Led2			=54
INTEGER PVS_01_Led3			=55
INTEGER PVS_01_Led4			=56
//Clavier Cave a vin
INTEGER PVS_02_BP1_General		=57
INTEGER PVS_02_BP2_DimM			=58
INTEGER PVS_02_BP3_DimP			=59
INTEGER PVS_02_BP4_Res			=60
INTEGER PVS_02_BP5_Scene1		=61
INTEGER PVS_02_BP6_Res			=62
INTEGER PVS_02_BP7_Res			=63
INTEGER PVS_02_BP8_Res			=64
//Retour etat clavier cave a vin
INTEGER PVS_02_Led1			=65
INTEGER PVS_02_Led2			=66
INTEGER PVS_02_Led3			=67
INTEGER PVS_02_Led4			=68
//Clavier Cage escalier
INTEGER PVS_03_BP1_General		=69
INTEGER PVS_03_BP2_DimM			=70
INTEGER PVS_03_BP3_DimP			=71
INTEGER PVS_03_BP4_Res			=72
INTEGER PVS_03_BP5_Scene1		=73
INTEGER PVS_03_BP6_Res			=74
INTEGER PVS_03_BP7_Res			=75
INTEGER PVS_03_BP8_Res			=76
//Retour etat clavier cage escalier
INTEGER PVS_03_Led1			=77
INTEGER PVS_03_Led2			=78
INTEGER PVS_03_Led3			=79
INTEGER PVS_03_Led4			=80
//Bouton poussoir cave a vin droite
INTEGER SVS_01_BP1_Gen			=81
INTEGER SVS_01_BP2_Res			=82
//Bouton poussoir cave a vin gauche
INTEGER SVS_02_BP1_Gen			=83
INTEGER SVS_02_BP2_Res			=84
//Bouton poussoir salle de bain
INTEGER SVS_03_BP1_Gen			=85
INTEGER SVS_03_BP2_Res			=86
//Bouton poussoir salle de bain (toilette)
INTEGER SVS_04_BP1_Gen			=87
INTEGER SVS_04_BP2_Res			=88
//Bouton poussoir toilette
INTEGER SVS_05_BP1_Gen			=89
INTEGER SVS_05_BP2_Res			=90
//Bouton poussoir buanderie
INTEGER SVS_06_BP1_Gen			=91
INTEGER SVS_06_BP2_Res			=92
//Bouton poussoir coffre
INTEGER SVS_07_BP1_Gen			=93
INTEGER SVS_07_BP2_Res			=94
//Bouton poussoir local technique
INTEGER SVS_08_BP1_Gen			=95
INTEGER SVS_08_BP2_Res			=96
//Bouton poussoir Escalier
INTEGER SVS_09_BP1_Gen			=97
INTEGER SVS_09_BP2_Res			=98
//Bouton poussoir tunnel
INTEGER SVS_10_BP1_Gen			=99
INTEGER SVS_10_BP2_Res			=100
//Bouton poussoir tunnel
INTEGER SVS_11_BP1_Gen			=101
INTEGER SVS_11_BP2_Res			=102
//Capteur mouvement
INTEGER DVS_01_Etat_Detect		=103
INTEGER DVS_02_Etat_Detect		=104
INTEGER DVS_03_Etat_Detect		=105
INTEGER ZESC_Lum_OnOff			=106
INTEGER ZESC_Lum_Sig			=107



// Commandes Rez de chaussée


INTEGER Couloir_Lum_OnOff		=108
INTEGER Couloir_Lum_Sig			=109
INTEGER Couloir_Sto_Mnt			=110
INTEGER Couloir_Sto_Des			=111
INTEGER Dining_Lum_OnOff                =112
INTEGER Dinning_Lum_Sig                 =113
INTEGER Dining_Sto_Mnt                  =114
INTEGER Dining_Sto_Des                  =115
INTEGER Petit_Salon_Lum_OnOff           =116
INTEGER Petit_Salon_Lum_Sig             =117
INTEGER Petit_Salon_Sto_Mnt             =118
INTEGER Petit_Salon_Sto_Des             =119
INTEGER Entree_Lum_OnOff                =120
INTEGER Entree_Lum_Sig                  =121
INTEGER Entree_Sto_Mnt                  =122
INTEGER Entree_Sto_Des                  =123
INTEGER Cuisine_Lum_OnOff               =124
INTEGER Cuisine_Lum_Sig                 =125
INTEGER Cuisine_Sto_Mnt                 =126
INTEGER Cuisine_Sto_Des                 =127
INTEGER Grand_Salon_Lum_OnOff           =128
INTEGER Grand_Salon_Lum_Sig             =129
INTEGER Grand_Salon_Sto_Mnt             =130
INTEGER Grand_Salon_Sto_Des             =131
//Clavier cage escalier                 
INTEGER PVR_O1_BP1_General              =132
INTEGER PVR_O1_BP2_DimM                 =133
INTEGER PVR_O1_BP3_DimP                 =134
INTEGER PVR_O1_BP4_Res                  =135
INTEGER PVR_O1_BP5_Scene1               =136
INTEGER PVR_O1_BP6_Res                  =137
INTEGER PVR_O1_BP7_Res                  =138
INTEGER PVR_O1_BP8_Res                  =139
//Retour etat clavier cage escalier     
INTEGER PVR_O1_Led1                     =140
INTEGER PVR_O1_Led2                     =141
INTEGER PVR_O1_Led3                     =142
INTEGER PVR_O1_Led4                     =143
//Clavier Dining (Lac)                  
INTEGER PVR_O2_BP1_General              =144
INTEGER PVR_O2_BP2_DimM                 =145
INTEGER PVR_O2_BP3_DimP                 =146
INTEGER PVR_O2_BP4_Res                  =147
INTEGER PVR_O2_BP5_Scene1               =148
INTEGER PVR_O2_BP6_Res                  =149
INTEGER PVR_O2_BP7_Res                  =150
INTEGER PVR_O2_BP8_Res                  =151
//Retour etat Clavier Dinning (Lac)     
INTEGER PVR_O2_Led1                     =152
INTEGER PVR_O2_Led2                     =153
INTEGER PVR_O2_Led3                     =154
INTEGER PVR_O2_Led4                     =155
//Clavier Dinning (Couloir)             
INTEGER PVR_O3_BP1_General              =156
INTEGER PVR_O3_BP2_DimM                 =157
INTEGER PVR_O3_BP3_DimP                 =158
INTEGER PVR_O3_BP4_Res                  =159
INTEGER PVR_O3_BP5_Scene1               =160
INTEGER PVR_O3_BP6_Res                  =161
INTEGER PVR_O3_BP7_Res                  =162
INTEGER PVR_O3_BP8_Res                  =163
//Retour etat clavier dinning (Couloir) 
INTEGER PVR_O3_Led1                     =164
INTEGER PVR_O3_Led2                     =165
INTEGER PVR_O3_Led3                     =166
INTEGER PVR_O3_Led4                     =167
//Clavier Petit Salon                   
INTEGER PVR_O4_BP1_General              =168
INTEGER PVR_O4_BP2_DimM                 =169
INTEGER PVR_O4_BP3_DimP                 =170
INTEGER PVR_O4_BP4_Res                  =171
INTEGER PVR_O4_BP5_Scene1               =172
INTEGER PVR_O4_BP6_Res                  =173
INTEGER PVR_O4_BP7_Res                  =174
INTEGER PVR_O4_BP8_Res                  =175
//Retour etat clavier Petit Salon       
INTEGER PVR_O4_Led1                     =176
INTEGER PVR_O4_Led2                     =177
INTEGER PVR_O4_Led3                     =178
INTEGER PVR_O4_Led4                     =179
//Clavier Entree Principal              
INTEGER PVR_O5_BP1_General              =180
INTEGER PVR_O5_BP2_DimM                 =181
INTEGER PVR_O5_BP3_DimP                 =182
INTEGER PVR_O5_BP4_Res                  =183
INTEGER PVR_O5_BP5_Scene1               =184
INTEGER PVR_O5_BP6_Res                  =185
INTEGER PVR_O5_BP7_Res                  =186
INTEGER PVR_O5_BP8_Res                  =187
//Retour etat clavier Entree Principal  
INTEGER PVR_O5_Led1                     =188
INTEGER PVR_O5_Led2                   	=189
INTEGER PVR_O5_Led3                     =190
INTEGER PVR_O5_Led4                     =191
//Clavier Entree Principal 2            
INTEGER PVR_O6_BP1_General              =192
INTEGER PVR_O6_BP2_DimM                 =193
INTEGER PVR_O6_BP3_DimP                 =194
INTEGER PVR_O6_BP4_Res                  =195
INTEGER PVR_O6_BP5_Scene1               =196
INTEGER PVR_O6_BP6_Res                  =197
INTEGER PVR_O6_BP7_Res                  =198
INTEGER PVR_O6_BP8_Res                  =199
//Retour etat clavier entree principal 2
INTEGER PVR_O6_Led1                     =200
INTEGER PVR_O6_Led2                     =201
INTEGER PVR_O6_Led3                     =202
INTEGER PVR_O6_Led4                     =203
//Clavier Cuisine (Entree)              
INTEGER PVR_O7_BP1_General              =204
INTEGER PVR_O7_BP2_DimM                 =205
INTEGER PVR_O7_BP3_DimP                 =206
INTEGER PVR_O7_BP4_Res                  =207
INTEGER PVR_O7_BP5_Scene1               =208
INTEGER PVR_O7_BP6_Res                  =209
INTEGER PVR_O7_BP7_Res                  =210
INTEGER PVR_O7_BP8_Res                  =211
//Retour etat clavier cuisine (Entree)  
INTEGER PVR_O7_Led1                     =212
INTEGER PVR_O7_Led2                     =213
INTEGER PVR_O7_Led3                     =214
INTEGER PVR_O7_Led4                     =215
//Clavier Cuisine (Sortie)              
INTEGER PVR_O8_BP1_General              =216
INTEGER PVR_O8_BP2_DimM                 =217
INTEGER PVR_O8_BP3_DimP                 =218
INTEGER PVR_O8_BP4_Res                  =219
INTEGER PVR_O8_BP5_Scene1               =220
INTEGER PVR_O8_BP6_Res                  =221
INTEGER PVR_O8_BP7_Res                  =222
INTEGER PVR_O8_BP8_Res                  =223
//Retour etat clavier cuisine (Sortie)  
INTEGER PVR_O8_Led1                     =224
INTEGER PVR_O8_Led2                     =225
INTEGER PVR_O8_Led3                     =226
INTEGER PVR_O8_Led4                   	=227
//Clavier Cuisine (vers dependance)     
INTEGER PVR_O9_BP1_General              =228
INTEGER PVR_O9_BP2_DimM                 =229
INTEGER PVR_O9_BP3_DimP                 =230
INTEGER PVR_O9_BP4_Res                  =231
INTEGER PVR_O9_BP5_Scene1               =232
INTEGER PVR_O9_BP6_Res                  =233
INTEGER PVR_O9_BP7_Res                  =234
INTEGER PVR_O9_BP8_Res                  =235
//Retour etat clavier cuisine (vers dependance)
INTEGER PVR_O9_Led1                     =236
INTEGER PVR_O9_Led2                     =237
INTEGER PVR_O9_Led3                     =238
INTEGER PVR_O9_Led4                     =239
//Clavier Grand Salon (coté Lac)        
INTEGER PVR_10_BP1_General              =240
INTEGER PVR_10_BP2_DimM                 =241
INTEGER PVR_10_BP3_DimP                 =242
INTEGER PVR_10_BP4_Res                  =243
INTEGER PVR_10_BP5_Scene1               =244
INTEGER PVR_10_BP6_Res                  =245
INTEGER PVR_10_BP7_Res                  =246
INTEGER PVR_10_BP8_Res                  =247
//Retour etat Clavier Grand Salon (coté lac)
INTEGER PVR_10_Led1                     =248
INTEGER PVR_10_Led2                     =249
INTEGER PVR_10_Led3                     =250
INTEGER PVR_10_Led4                     =251
//Clavier Grand Salon (coté couloir)    
INTEGER PVR_11_BP1_General              =252
INTEGER PVR_11_BP2_DimM                 =253
INTEGER PVR_11_BP3_DimP                 =254
INTEGER PVR_11_BP4_Res                  =255
INTEGER PVR_11_BP5_Scene1               =256
INTEGER PVR_11_BP6_Res                  =257
INTEGER PVR_11_BP7_Res                  =258
INTEGER PVR_11_BP8_Res                  =259
//Retour etat clavier Grand Salon (coté couloir)
INTEGER PVR_11_Led1                     =260
INTEGER PVR_11_Led2                     =261
INTEGER PVR_11_Led3                     =262
INTEGER PVR_11_Led4                     =263
//Bouton poussoir escalier              
INTEGER SVR_01_BP1_General             	=264
INTEGER SVR_01_BP2_Res                  =265
//Bouton poussoir couloir               
INTEGER SVR_02_BP1_General              =266
INTEGER SVR_02_BP2_Res                  =267
//Store/Moustiquaires Dinning           
INTEGER MVR_01_2M_BP1_Sto1__Mnt         =268
INTEGER MVR_01_2M_BP2_Sto1__Des         =269
INTEGER MVR_01_2M_BP3_Sto1__Mnt         =270
INTEGER MVR_01_2M_BP4_Sto1__Des         =271
//Store/Moustiquaires Grand Salon       
INTEGER MVR_02_2M_BP1_Sto1__Mnt         =272
INTEGER MVR_02_2M_BP2_Sto1__Des         =273
INTEGER MVR_02_2M_BP3_Sto1__Mnt         =274
INTEGER MVR_02_2M_BP4_Sto1__Des         =275
//Detecteur Couloir                     
INTEGER DVR_01_Etat_Detect              =276
//Detecteur Entree                      
INTEGER DVR_02_Etat_Detect              =277
                                        
                                        
                                        
                                        
// Commandes 1er Etage                  
                                        
                                        
                                        
//Commande par zone                     
INTEGER Biblio_Lum_OnOff                =278
INTEGER Biblio_Lum_Sig                  =279
INTEGER Biblio_Sto_Mnt                  =280
INTEGER Biblio_Sto_Des                  =281
INTEGER MasterBed_Lum_OnOff             =282
INTEGER MasterBed_Lum_Sig               =283
INTEGER MasterBed_Sto_Mnt               =284
INTEGER MasterBed_Sto_Des               =285
INTEGER Gym_Lum_OnOff                   =286
INTEGER Gym_Lum_Sig                     =287
INTEGER Gym_Sto_Mnt                     =288
INTEGER Gym_Sto_Des                     =289
INTEGER BathRoom_Lum_OnOff              =290
INTEGER BathRoom_Lum_Sig                =291
INTEGER BathRoom_Sto_Mnt                =292
INTEGER BathRoom_Sto_Des                =293
INTEGER Shower_Lum_OnOff               	=294
INTEGER Shower_Lum_Sig                  =295
INTEGER Shower_Sto_Mnt                  =296
INTEGER Shower_Sto_Des                  =297
INTEGER WC_DressingMme_OnOff	        =298
INTEGER WC_DressingMme_Lum_Sig          =299
INTEGER WC_DressingMme_Sto_Mnt          =300
INTEGER WC_DressingMme_Sto_Des          =301
INTEGER DressingMme_Lum_OnOff	        =302
INTEGER DressingMme_Lum_Sig	        =303
INTEGER DressingMme_Sto_Mnt	        =304
INTEGER DressingMme_Sto_Des	        =305
INTEGER DressingMr_Lum_OnOff	        =306
INTEGER DressingMr_Lum_Sig	        =307
INTEGER DressingMr_Sto_Mnt		=308
INTEGER DressingMr_Sto_Des		=309
INTEGER WC_DressingMr_Lum_OnOff	        =310
INTEGER WC_DressingMr_Lum_Sig		=311
INTEGER WC_DressingMr_Sto_Mnt		=312
INTEGER WC_DressingMr_Sto_Des	        =313
INTEGER Entree_Lum_OnOff	        =314
INTEGER Entree_Lum_Sig	                =315
INTEGER Entree_Sto_Mnt	                =316
INTEGER Entree_Sto_Des	                =317
//Clavier Bibliotheque                  
INTEGER PV1_01_BP1_General              =318
INTEGER PV1_01_BP2_DimM                 =319
INTEGER PV1_01_BP3_DimP                 =320
INTEGER PV1_01_BP4_Res                  =321
INTEGER PV1_01_BP5_Scene1               =322
INTEGER PV1_01_BP6_Res                  =323
INTEGER PV1_01_BP7_Res                  =324
INTEGER PV1_01_BP8_Res                  =325
//Retour etat clavier Bibliotheque      
INTEGER PV1_01_Led1                     =326
INTEGER PV1_01_Led2                     =327
INTEGER PV1_01_Led3                     =328
INTEGER PV1_01_Led4                     =329
//Clavier ChambreMaître (coté Lac)      
INTEGER PV1_02_BP1_General              =330
INTEGER PV1_02_BP2_DimM                 =331
INTEGER PV1_02_BP3_DimP                 =332
INTEGER PV1_02_BP4_Res                  =333
INTEGER PV1_02_BP5_Scene1               =334
INTEGER PV1_02_BP6_Res                	=335
INTEGER PV1_02_BP7_Res                  =336
INTEGER PV1_02_BP8_Res                  =337
//Retour etat clavier ChambreMaître (coté Lac)
INTEGER PV1_02_Led1                     =338
INTEGER PV1_02_Led2                     =339
INTEGER PV1_02_Led3                     =340
INTEGER PV1_02_Led4                     =341
//Clavier ChambreMaître (coté couloir)  
INTEGER PV1_03_BP1_General              =342
INTEGER PV1_03_BP2_DimM                 =343
INTEGER PV1_03_BP3_DimP                 =344
INTEGER PV1_03_BP4_Res                  =345
INTEGER PV1_03_BP5_Scene1               =346
INTEGER PV1_03_BP6_Res                  =347
INTEGER PV1_03_BP7_Res                  =348
INTEGER PV1_03_BP8_Res                  =349
//Retour etat ChambreMaître (coté couloir)
INTEGER PV1_03_Led1                     =350
INTEGER PV1_03_Led2                     =351
INTEGER PV1_03_Led3                     =352
INTEGER PV1_03_Led4                     =353
//Clavier Gym (coté Lac)                
INTEGER PV1_04_BP1_General              =354
INTEGER PV1_04_BP2_DimM                 =355
INTEGER PV1_04_BP3_DimP                 =356
INTEGER PV1_04_BP4_Res                  =357
INTEGER PV1_04_BP5_Scene1               =358
INTEGER PV1_04_BP6_Res                  =359
INTEGER PV1_04_BP7_Res                  =360
INTEGER PV1_04_BP8_Res                  =361
//Retour etat clavier Gym (coté Lac)    
INTEGER PV1_04_Led1                     =362
INTEGER PV1_04_Led2                     =363
INTEGER PV1_04_Led3                     =364
INTEGER PV1_04_Led4                     =365
//Clavier Gym (coté Shower)             
INTEGER PV1_05_BP1_General              =366
INTEGER PV1_05_BP2_DimM                 =367
INTEGER PV1_05_BP3_DimP                 =368
INTEGER PV1_05_BP4_Res                  =369
INTEGER PV1_05_BP5_Scene1               =370
INTEGER PV1_05_BP6_Res                  =371
INTEGER PV1_05_BP7_Res                  =372
INTEGER PV1_05_BP8_Res                	=373
//Retour etat clavier Gym (coté Shower) 
INTEGER PV1_05_Led1                     =374
INTEGER PV1_05_Led2                     =375
INTEGER PV1_05_Led3                     =376
INTEGER PV1_05_Led4                     =377
//Clavier Salle de bain                 
INTEGER PV1_06_BP1_General              =378
INTEGER PV1_06_BP2_DimM                 =379
INTEGER PV1_06_BP3_DimP                 =380
INTEGER PV1_06_BP4_Res                  =381
INTEGER PV1_06_BP5_Scene1               =382
INTEGER PV1_06_BP6_Res                  =383
INTEGER PV1_06_BP7_Res                  =384
INTEGER PV1_06_BP8_Res                  =385
//Retour etat clavier Salle de bain     
INTEGER PV1_06_Led1                     =386
INTEGER PV1_06_Led2                     =387
INTEGER PV1_06_Led3                     =388
INTEGER PV1_06_Led4                     =389
//Clavier Shower                        
INTEGER PV1_07_BP1_General              =390
INTEGER PV1_07_BP2_DimM                 =391
INTEGER PV1_07_BP3_DimP                 =392
INTEGER PV1_07_BP4_Res                  =393
INTEGER PV1_07_BP5_Scene1               =394
INTEGER PV1_07_BP6_Res                  =395
INTEGER PV1_07_BP7_Res                  =396
INTEGER PV1_07_BP8_Res                  =397
//Retour etat clavier Shower            
INTEGER PV1_07_Led1                     =398
INTEGER PV1_07_Led2                     =399
INTEGER PV1_07_Led3                     =400
INTEGER PV1_07_Led4                     =401
//Clavier DressingMme                   
INTEGER PV1_08_BP1_General              =402
INTEGER PV1_08_BP2_DimM                 =403
INTEGER PV1_08_BP3_DimP                 =404
INTEGER PV1_08_BP4_Res                  =405
INTEGER PV1_08_BP5_Scene1               =406
INTEGER PV1_08_BP6_Res                  =407
INTEGER PV1_08_BP7_Res                  =408
INTEGER PV1_08_BP8_Res                  =409
//Retour clavier DressingMme            
INTEGER PV1_08_Led1                   	=410
INTEGER PV1_08_Led2                     =411
INTEGER PV1_08_Led3                     =412
INTEGER PV1_08_Led4                     =413
//Clavier Couloir DressingMr            
INTEGER PV1_09_BP1_General              =414
INTEGER PV1_09_BP2_DimM                 =415
INTEGER PV1_09_BP3_DimP                 =416
INTEGER PV1_09_BP4_Res                  =417
INTEGER PV1_09_BP5_Scene1               =418
INTEGER PV1_09_BP6_Res                  =419
INTEGER PV1_09_BP7_Res                  =420
INTEGER PV1_09_BP8_Res                  =421
//Retour etat Clavier Couloir DressingMr
INTEGER PV1_09_Led1                     =422
INTEGER PV1_09_Led2                     =423
INTEGER PV1_09_Led3                     =424
INTEGER PV1_09_Led4                     =425
// Clavier DressingMr                   
INTEGER PV1_10_BP1_General              =426
INTEGER PV1_10_BP2_DimM                 =427
INTEGER PV1_10_BP3_DimP                 =428
INTEGER PV1_10_BP4_Res                  =429
INTEGER PV1_10_BP5_Scene1               =430
INTEGER PV1_10_BP6_Res                  =431
INTEGER PV1_10_BP7_Res                  =432
INTEGER PV1_10_BP8_Res                  =433
//Retour etat Clavier DressingMr        
INTEGER PV1_10_Led1                     =434
INTEGER PV1_10_Led2                     =435
INTEGER PV1_10_Led3                     =436
INTEGER PV1_10_Led4                     =437
//Clavier WC DressingMr                 
INTEGER PV1_11_BP1_General              =438
INTEGER PV1_11_BP2_DimM                 =439
INTEGER PV1_11_BP3_DimP                 =440
INTEGER PV1_11_BP4_Res                  =441
INTEGER PV1_11_BP5_Scene1               =442
INTEGER PV1_11_BP6_Res                  =443
INTEGER PV1_11_BP7_Res                  =444
INTEGER PV1_11_BP8_Res                  =445
//Retour etat clavier WC DressingMr     
INTEGER PV1_11_Led1                     =446
INTEGER PV1_11_Led2                     =447
INTEGER PV1_11_Led3                   	=448
INTEGER PV1_11_Led4                     =449
//Clavier Porte Entree                  
INTEGER PV1_12_BP1_General              =450
INTEGER PV1_12_BP2_DimM                 =451
INTEGER PV1_12_BP3_DimP                 =452
INTEGER PV1_12_BP4_Res                  =453
INTEGER PV1_12_BP5_Scene1               =454
INTEGER PV1_12_BP6_Res                  =455
INTEGER PV1_12_BP7_Res                  =456
INTEGER PV1_12_BP8_Res                  =457
//Retour etat Clavier Porte Entree      
INTEGER PV1_12_Led1                     =458
INTEGER PV1_12_Led2                     =459
INTEGER PV1_12_Led3                     =460
INTEGER PV1_12_Led4                     =461
//Bouton Poussoir Escalier              
INTEGER SV1_01_BP1_Gen                  =462
INTEGER SV1_01_BP2_Res                  =463
//Bouton Poussoir  Couloir Dressing Mme 
INTEGER SV1_02_BP1_Gen                  =464
INTEGER SV1_02_BP2_Res                  =465
//Bouton Poussoir WC Dressing Mme       
INTEGER SV1_03_BP1_Gen                  =466
INTEGER SV1_03_BP2_Res                  =467
// Moustiquaires / Stores   Chambre Maître
INTEGER MV1_01_2M_BP1_Sto1_Mnt          =468
INTEGER MV1_01_2M_BP2_Sto1_Des          =469
INTEGER MV1_01_2M_BP3_Sto1_Mnt          =470
INTEGER MV1_01_2M_BP4_Sto1_Des          =471
// Moustiquaires / Stores  Gym (coté Lac)
INTEGER MV1_02_2M_BP1_Sto1_Mnt          =472
INTEGER MV1_02_2M_BP2_Sto1_Des          =473
INTEGER MV1_02_2M_BP3_Sto1_Mnt          =474
INTEGER MV1_02_2M_BP4_Sto1_Des          =475
//  Moustiquaires / Stores  Gym (coté Shower)
INTEGER MV1_03_2M_BP1_Sto1_Mnt          =476
INTEGER MV1_03_2M_BP2_Sto1_Des          =477
INTEGER MV1_03_2M_BP3_Sto1_Mnt          =478
INTEGER MV1_03_2M_BP4_Sto1_Des          =479
//  Moustiquaires / Stores Salle de bain
INTEGER MV1_04_4M_BP1_Sto1_Mnt          =480
INTEGER MV1_04_4M_BP2_Sto1_Des          =481
INTEGER MV1_04_4M_BP3_Sto1_Mnt          =482
INTEGER MV1_04_4M_BP4_Sto1_Des         	=483
INTEGER MV1_04_4M_BP5_Sto1_Mnt          =484
INTEGER MV1_04_4M_BP6_Sto1_Des          =485
INTEGER MV1_04_4M_BP7_Sto1_Mnt          =486
INTEGER MV1_04_4M_BP8_Sto1_Des          =487
//  Moustiquaires / Stores Dressing Mme 
INTEGER MV1_05_2M_BP1_Sto1_Mnt          =488
INTEGER MV1_05_2M_BP2_Sto1_Des          =489
INTEGER MV1_05_2M_BP3_Sto1_Mnt          =490
INTEGER MV1_05_2M_BP4_Sto1_Des          =491
//  Moustiquaires / Stores  Dressing Mr 
INTEGER MV1_06_2M_BP1_Sto1_Mnt          =492
INTEGER MV1_06_2M_BP2_Sto1_Des          =493
INTEGER MV1_06_2M_BP3_Sto1_Mnt          =494
INTEGER MV1_06_2M_BP4_Sto1_Des          =495
//  Moustiquaires / Stores  WC Dressing Mr
INTEGER MV1_07_2M_BP1_Sto1_Mnt          =496
INTEGER MV1_07_2M_BP2_Sto1_Des          =497
INTEGER MV1_07_2M_BP3_Sto1_Mnt          =498
INTEGER MV1_07_2M_BP4_Sto1_Des          =499
//  Moustiquaires / Stores  Entree      
INTEGER MV1_08_M_BP1_Sto1_Mnt           =500
INTEGER MV1_08_M_BP2_Sto1_Des           =501
                                        
                                        
//Commandes 2eme etage                  
                                        
                                        
//Commandes par zone                    
INTEGER Cage_escalier_Lum_Off           =502
INTEGER Cage_escalier_Sig               =503
INTEGER Cage_escalier_Sto_Mnt           =504
INTEGER Cage_escalier_Sto_Des           =505
INTEGER Ch_Ivoire_Lum_OnOff             =506
INTEGER Ch_Ivoire_Sig                   =507
INTEGER Ch_Ivoire_Sto_Mnt               =508
INTEGER Ch_Ivoire_Sto_Des               =509
INTEGER SDB_Ivoire_Lum_OnOff            =510
INTEGER SDB_Ivoire_Sig                  =511
INTEGER SDB_Ivoire_Sto_Mnt              =512
INTEGER SDB_Ivoire_Sto_Des              =513
INTEGER Ch_Gold_Lum_OnOff               =514
INTEGER Ch_Gold_Sig                     =515
INTEGER Ch_Gold_Sto_Mnt                 =516
INTEGER Ch_Gold_Sto_Des                	=517
INTEGER SDB_Ch_Gold_Lum_OnOff           =518
INTEGER SDB_Ch_Gold_Sig                 =519
INTEGER SDB_Ch_Gold_Sto_Mnt             =520
INTEGER SDB_Ch_Gold_Sto_Des             =521
INTEGER Ch_Silver_Lum_OnOff             =522
INTEGER Ch_Silver_Sig                   =523
INTEGER Ch_Silver_Sto_Mnt               =524
INTEGER Ch_Silver_Sto_Des               =525
INTEGER SDB_Ch_Silver_Lum_OnOff         =526
INTEGER SDB_Ch_Silver_Sig               =527
INTEGER SDB_Ch_Silver_Sto_Mnt           =528
INTEGER SDB_Ch_Silver_Sto_Des           =529
INTEGER Ch_Parme_Lum_OnOff              =530
INTEGER Ch_Parme_Sig                    =531
INTEGER Ch_Parme_Sto_Mnt                =532
INTEGER Ch_Parme_Sto_Des                =533
INTEGER SDB_Ch_Parme_Lum_OnOff          =534
INTEGER SDB_Ch_Parme_Sig                =535
INTEGER SDB_Ch_Parme_Sto_Mnt            =536
INTEGER SDB_Ch_Parme_Sto_Des            =537
//Clavier Face Ascenseur                
INTEGER PV2_01_BP1_General              =538
INTEGER PV2_01_BP2_DimM                 =539
INTEGER PV2_01_BP3_DimP                 =540
INTEGER PV2_01_BP4_Res                  =541
INTEGER PV2_01_BP5_Scene1               =542
INTEGER PV2_01_BP6_Res                  =543
INTEGER PV2_01_BP7_Res                  =544
INTEGER PV2_01_BP8_Res                  =545
//Retour etat clavier face Ascenseur    
INTEGER PV2_01_Led1                     =546
INTEGER PV2_01_Led2                     =547
INTEGER PV2_01_Led3                     =548
INTEGER PV2_01_Led4                     =549
////Clavier Chambre Ivoire              
INTEGER PV2_02_BP1_General              =550
INTEGER PV2_02_BP2_DimM                 =551
INTEGER PV2_02_BP3_DimP                 =552
INTEGER PV2_02_BP4_Res                  =553
INTEGER PV2_02_BP5_Scene1               =554
INTEGER PV2_02_BP6_Res                  =555
INTEGER PV2_02_BP7_Res                  =556
INTEGER PV2_02_BP8_Res                  =557
//Retour clavier Chambre Ivoire        
INTEGER PV2_02_Led1			=558
INTEGER PV2_02_Led2                     =559
INTEGER PV2_02_Led3                     =560
INTEGER PV2_02_Led4                     =561
//Clavier SDB Chambre Ivoire            
INTEGER PV2_03_BP1_General              =562
INTEGER PV2_03_BP2_DimM                 =563
INTEGER PV2_03_BP3_DimP                 =564
INTEGER PV2_03_BP4_Res                  =565
INTEGER PV2_03_BP5_Scene1               =566
INTEGER PV2_03_BP6_Res                  =567
INTEGER PV2_03_BP7_Res                  =568
INTEGER PV2_03_BP8_Res                  =569
//Retour etat clavier SDB Chambre Ivoir 
INTEGER PV2_03_Led1                     =570
INTEGER PV2_03_Led2                     =571
INTEGER PV2_03_Led3                     =572
INTEGER PV2_03_Led4                     =573
//Clavier Chambre Gold                  
INTEGER PV2_04_BP1_General              =574
INTEGER PV2_04_BP2_DimM                 =575
INTEGER PV2_04_BP3_DimP                 =576
INTEGER PV2_04_BP4_Res                  =577
INTEGER PV2_04_BP5_Scene1               =578
INTEGER PV2_04_BP6_Res                  =579
INTEGER PV2_04_BP7_Res                  =580
INTEGER PV2_04_BP8_Res                  =581
//Retour etat Clavier Chambre Gold      
INTEGER PV2_04_Led1                     =582
INTEGER PV2_04_Led2                     =583
INTEGER PV2_04_Led3                     =584
INTEGER PV2_04_Led4                     =585
//Clavier SDB Gold                      
INTEGER PV2_05_BP1_General              =586
INTEGER PV2_05_BP2_DimM                 =587
INTEGER PV2_05_BP3_DimP                 =588
INTEGER PV2_05_BP4_Res                  =589
INTEGER PV2_05_BP5_Scene1               =590
INTEGER PV2_05_BP6_Res                  =591
INTEGER PV2_05_BP7_Res                  =592
INTEGER PV2_05_BP8_Res                  =593
//Retour etat Clavier SDB Gold          
INTEGER PV2_05_Led1                     =594
INTEGER PV2_05_Led2                     =595
INTEGER PV2_05_Led3                   	=596
INTEGER PV2_05_Led4                     =597
//Clavier Chambre Silver                
INTEGER PV2_06_BP1_General              =598
INTEGER PV2_06_BP2_DimM                 =599
INTEGER PV2_06_BP3_DimP                 =600
INTEGER PV2_06_BP4_Res                  =601
INTEGER PV2_06_BP5_Scene1               =602
INTEGER PV2_06_BP6_Res                  =603
INTEGER PV2_06_BP7_Res                  =604
INTEGER PV2_06_BP8_Res                  =605
//Retour etat Clavier Chambre Silver    
INTEGER PV2_06_Led1                     =606
INTEGER PV2_06_Led2                     =607
INTEGER PV2_06_Led3                     =608
INTEGER PV2_06_Led4                     =609
//Clavier SDB Silver                    
INTEGER PV2_07_BP1_General              =610
INTEGER PV2_07_BP2_DimM                 =611
INTEGER PV2_07_BP3_DimP                 =612
INTEGER PV2_07_BP4_Res                  =613
INTEGER PV2_07_BP5_Scene1               =614
INTEGER PV2_07_BP6_Res                  =615
INTEGER PV2_07_BP7_Res                  =616
INTEGER PV2_07_BP8_Res                  =617
//Retour Clavier SDB Silver             
INTEGER PV2_07_Led1                     =618
INTEGER PV2_07_Led2                     =619
INTEGER PV2_07_Led3                     =620
INTEGER PV2_07_Led4                     =621
//Clavier Chambre Parme                 
INTEGER PV2_08_BP1_General              =622
INTEGER PV2_08_BP2_DimM                 =623
INTEGER PV2_08_BP3_DimP                 =624
INTEGER PV2_08_BP4_Res                  =625
INTEGER PV2_08_BP5_Scene1               =626
INTEGER PV2_08_BP6_Res                  =627
INTEGER PV2_08_BP7_Res                  =628
INTEGER PV2_08_BP8_Res                  =629
//Retour Clavier Chambre Parme          
INTEGER PV2_08_Led1                     =630
INTEGER PV2_08_Led2                     =631
INTEGER PV2_08_Led3                     =632
INTEGER PV2_08_Led4                     =633
//Clavier SDB Chambre Parme            	
INTEGER PV2_09_BP1_General              =634
INTEGER PV2_09_BP2_DimM                 =635
INTEGER PV2_09_BP3_DimP                 =636
INTEGER PV2_09_BP4_Res                  =637
INTEGER PV2_09_BP5_Scene1               =638
INTEGER PV2_09_BP6_Res                  =639
INTEGER PV2_09_BP7_Res                  =640
INTEGER PV2_09_BP8_Res                  =641
//Retour Clavier SDB Chambre Parme      
INTEGER PV2_09_Led1                     =642
INTEGER PV2_09_Led2                     =643
INTEGER PV2_09_Led3                     =644
INTEGER PV2_09_Led4                     =645
//Bouton Poussoir escalier              
INTEGER SV2_01_BP1_Gen                  =646
INTEGER SV2_01_BP2_Res                  =647
//Bouton Poussoir WC Chambre Ivoire     
INTEGER SV2_02_BP1_Gen                	=648	
INTEGER SV2_02_BP2_Res                  =649
//Bouton Poussoir WC Chambre Parme      
INTEGER SV2_03_BP1_Gen                  =650
INTEGER SV2_03_BP2_Res                  =651
