MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	table_width 4
	landmark  -8, -16, SpecialMapName
	landmark 140, 100, NewBarkTownName
	landmark 128, 100, Route29Name
	landmark 100, 100, CherrygroveCityName
	landmark 100,  80, Route30Name
	landmark  96,  60, Route31Name
	landmark  84,  60, VioletCityName
	landmark  85,  58, SproutTowerName
	landmark  84,  92, Route32Name
	landmark  76,  76, RuinsOfAlphName
	landmark  84, 124, UnionCaveName
	landmark  82, 124, Route33Name
	landmark  68, 124, AzaleaTownName
	landmark  70, 122, SlowpokeWellName
	landmark  52, 120, IlexForestName
	landmark  52, 112, Route34Name
	landmark  52,  92, GoldenrodCityName
	landmark  50,  92, RadioTowerName
	landmark  52,  76, Route35Name
	landmark  52,  60, NationalParkName
	landmark  64,  60, Route36Name
	landmark  68,  52, Route37Name
	landmark  68,  44, EcruteakCityName
	landmark  70,  42, TinTowerName
	landmark  66,  42, BurnedTowerName
	landmark  52,  44, Route38Name
	landmark  36,  48, Route39Name
	landmark  36,  60, OlivineCityName
	landmark  38,  62, LighthouseName
	landmark  28,  64, Route40Name
	landmark  28,  92, WhirlIslandsName
	landmark  28, 100, Route41Name
	landmark  20, 100, CianwoodCityName
	landmark  92,  44, Route42Name
	landmark  84,  44, MtMortarName
	landmark 108,  44, MahoganyTownName
	landmark 108,  36, Route43Name
	landmark 108,  28, LakeOfRageName
	landmark 120,  44, Route44Name
	landmark 130,  38, IcePathName
	landmark 132,  44, BlackthornCityName
	landmark 132,  36, DragonsDenName
	landmark 132,  64, Route45Name
	landmark 112,  72, DarkCaveName
	landmark 124,  88, Route46Name
	landmark 148,  68, SilverCaveName
	assert_table_length KANTO_LANDMARK
	landmark  52, 108, PalletTownName
	landmark  52,  92, Route1Name
	landmark  52,  76, ViridianCityName
	landmark  52,  64, Route2Name
	landmark  52,  52, PewterCityName
	landmark  64,  52, Route3Name
	landmark  76,  52, MtMoonName
	landmark  88,  52, Route4Name
	landmark 100,  52, CeruleanCityName
	landmark 100,  44, Route24Name
	landmark 108,  36, Route25Name
	landmark 100,  60, Route5Name
	landmark 108,  76, UndergroundName
	landmark 100,  76, Route6Name
	landmark 100,  84, VermilionCityName
	landmark  88,  60, DiglettsCaveName
	landmark  88,  68, Route7Name
	landmark 116,  68, Route8Name
	landmark 116,  52, Route9Name
	landmark 132,  52, RockTunnelName
	landmark 132,  56, Route10Name
	landmark 132,  60, PowerPlantName
	landmark 132,  68, LavenderTownName
	landmark 140,  68, LavRadioTowerName
	landmark  76,  68, CeladonCityName
	landmark 100,  68, SaffronCityName
	landmark 116,  84, Route11Name
	landmark 132,  80, Route12Name
	landmark 124, 100, Route13Name
	landmark 116, 112, Route14Name
	landmark 104, 116, Route15Name
	landmark  68,  68, Route16Name
	landmark  68,  92, Route17Name
	landmark  80, 116, Route18Name
	landmark  92, 116, FuchsiaCityName
	landmark  92, 128, Route19Name
	landmark  76, 132, Route20Name
	landmark  68, 132, SeafoamIslandsName
	landmark  52, 132, CinnabarIslandName
	landmark  52, 120, Route21Name
	landmark  36,  68, Route22Name
	landmark  28,  52, VictoryRoadName
	landmark  28,  44, Route23Name
	landmark  28,  36, IndigoPlateauName
	landmark  28,  92, Route26Name
	landmark  20, 100, Route27Name
	landmark  12, 100, TohjoFallsName
	landmark  20,  68, Route28Name
	landmark 140, 116, FastShipName
	assert_table_length NUM_LANDMARKS

NewBarkTownName:     db "ΝΕΑ ΠΟΛΗ<BSP>BARK@"
CherrygroveCityName: db "ΠΟΛΗ<BSP>CHERRYGROVE@"
VioletCityName:      db "ΠΟΛΗ VIOLET@"
AzaleaTownName:      db "ΠΟΛΗ AZALEA@"
GoldenrodCityName:   db "ΠΟΛΗ<BSP>GOLDENROD@"
EcruteakCityName:    db "ΠΟΛΗ<BSP>ECRUTEAK@"
OlivineCityName:     db "ΠΟΛΗ<BSP>OLIVINE@"
CianwoodCityName:    db "ΠΟΛΗ<BSP>CIANWOOD@"
MahoganyTownName:    db "ΠΟΛΗ<BSP>MAHOGANY@"
BlackthornCityName:  db "ΠΟΛΗ<BSP>BLACKTHORN@"
LakeOfRageName:      db "ΛΙΜΝΗ<BSP>ΟΡΓΗΣ@"
SilverCaveName:      db "ΣΠΗΛΙΑ<BSP>SILVER@"
SproutTowerName:     db "ΠΥΡΓΟΣ<BSP>ΦΥΤΩΝ@"
RuinsOfAlphName:     db "ΕΡΕΙΠΙΑ<BSP>του ALPH@"
UnionCaveName:       db "ΣΠΗΛΙΑ<BSP>ΕΝΩΣΗΣ@"
SlowpokeWellName:    db "ΠΗΓΑΔΙ<BSP>SLOWPOKE@"
RadioTowerName:      db "ΠΥΡΓΟΣ<BSP>ΡΑΔΙΟ@"
PowerPlantName:      db "ΕΡΓΟΣΤΑΣΙΟ@"
NationalParkName:    db "ΕΘΝΙΚΟ<BSP>ΠΑΡΚΟ@"
TinTowerName:        db "ΠΥΡΓΟΣ<BSP>ΜΕΤΑΛΛΟ@"
LighthouseName:      db "ΦΑΡΟΣ@"
WhirlIslandsName:    db "ΓΥΡΙΣΤΑ<BSP>ΝΗΣΙΑ@"
MtMortarName:        db "ΒΝ.MORTAR@"
DragonsDenName:      db "ΛΗΜΑΙΡΙ<BSP>ΔΡΑΚΩΝ@"
IcePathName:         db "ΔΡΟΜΟΣ<BSP>ΠΑΓΟΥ@"
NotApplicableName:   db "N/A@" ; unreferenced ; "オバケやしき" ("HAUNTED HOUSE") in Japanese
PalletTownName:      db "ΠΟΛΗ PALLET@"
ViridianCityName:    db "ΠΟΛΗ<BSP>VIRIDIAN@"
PewterCityName:      db "ΠΟΛΗ PEWTER@"
CeruleanCityName:    db "ΠΟΛΗ<BSP>CERULEAN@"
LavenderTownName:    db "ΠΟΛΗ<BSP>LAVENDER@"
VermilionCityName:   db "ΠΟΛΗ<BSP>VERMILION@"
CeladonCityName:     db "ΠΟΛΗ<BSP>CELADON@"
SaffronCityName:     db "ΠΟΛΗ<BSP>SAFFRON@"
FuchsiaCityName:     db "ΠΟΛΗ<BSP>FUCHSIA@"
CinnabarIslandName:  db "ΝΗΣΙ<BSP>CINNABAR@"
IndigoPlateauName:   db "ΟΡΟΠΕΔΙΟ<BSP>INDIGO@"
VictoryRoadName:     db "ΔΡΟΜΟΣ<BSP>ΝΙΚΗΣ@"
MtMoonName:          db "ΒΝ.ΦΕΓΓΑΡΙ@"
RockTunnelName:      db "ΤΟΥΝΕΛ ΒΡΑΧΟΣ@"
LavRadioTowerName:   db "LAV<BSP>ΠΥΡΓΟΣ ΡΑΔΙΟ@"
SilphCoName:         db "ΕΤΑΙΡΙΑ SILPH@" ; unreferenced
SafariZoneName:      db "ΖΩΝΗ ΣΑΦΑΡΙ@" ; unreferenced
SeafoamIslandsName:  db "ΑΦΡΟΔΗ<BSP>ΝΗΙΑ@"
PokemonMansionName:  db "ΕΠΑΥΛΗ<BSP>ΠΟΚΕΜΟΝ@" ; unreferenced
CeruleanCaveName:    db "ΣΠΗΛΙΑ<BSP>CERULEAN@" ; unreferenced
Route1Name:          db "ΔΡΟΜΟΣ 1@"
Route2Name:          db "ΔΡΟΜΟΣ 2@"
Route3Name:          db "ΔΡΟΜΟΣ 3@"
Route4Name:          db "ΔΡΟΜΟΣ 4@"
Route5Name:          db "ΔΡΟΜΟΣ 5@"
Route6Name:          db "ΔΡΟΜΟΣ 6@"
Route7Name:          db "ΔΡΟΜΟΣ 7@"
Route8Name:          db "ΔΡΟΜΟΣ 8@"
Route9Name:          db "ΔΡΟΜΟΣ 9@"
Route10Name:         db "ΔΡΟΜΟΣ 10@"
Route11Name:         db "ΔΡΟΜΟΣ 11@"
Route12Name:         db "ΔΡΟΜΟΣ 12@"
Route13Name:         db "ΔΡΟΜΟΣ 13@"
Route14Name:         db "ΔΡΟΜΟΣ 14@"
Route15Name:         db "ΔΡΟΜΟΣ 15@"
Route16Name:         db "ΔΡΟΜΟΣ 16@"
Route17Name:         db "ΔΡΟΜΟΣ 17@"
Route18Name:         db "ΔΡΟΜΟΣ 18@"
Route19Name:         db "ΔΡΟΜΟΣ 19@"
Route20Name:         db "ΔΡΟΜΟΣ 20@"
Route21Name:         db "ΔΡΟΜΟΣ 21@"
Route22Name:         db "ΔΡΟΜΟΣ 22@"
Route23Name:         db "ΔΡΟΜΟΣ 23@"
Route24Name:         db "ΔΡΟΜΟΣ 24@"
Route25Name:         db "ΔΡΟΜΟΣ 25@"
Route26Name:         db "ΔΡΟΜΟΣ 26@"
Route27Name:         db "ΔΡΟΜΟΣ 27@"
Route28Name:         db "ΔΡΟΜΟΣ 28@"
Route29Name:         db "ΔΡΟΜΟΣ 29@"
Route30Name:         db "ΔΡΟΜΟΣ 30@"
Route31Name:         db "ΔΡΟΜΟΣ 31@"
Route32Name:         db "ΔΡΟΜΟΣ 32@"
Route33Name:         db "ΔΡΟΜΟΣ 33@"
Route34Name:         db "ΔΡΟΜΟΣ 34@"
Route35Name:         db "ΔΡΟΜΟΣ 35@"
Route36Name:         db "ΔΡΟΜΟΣ 36@"
Route37Name:         db "ΔΡΟΜΟΣ 37@"
Route38Name:         db "ΔΡΟΜΟΣ 38@"
Route39Name:         db "ΔΡΟΜΟΣ 39@"
Route40Name:         db "ΔΡΟΜΟΣ 40@"
Route41Name:         db "ΔΡΟΜΟΣ 41@"
Route42Name:         db "ΔΡΟΜΟΣ 42@"
Route43Name:         db "ΔΡΟΜΟΣ 43@"
Route44Name:         db "ΔΡΟΜΟΣ 44@"
Route45Name:         db "ΔΡΟΜΟΣ 45@"
Route46Name:         db "ΔΡΟΜΟΣ 46@"
DarkCaveName:        db "ΣΚΟΤΕΙΝΗ<BSP>ΣΠΗΛΙΑ@"
IlexForestName:      db "ΔΑΣΟΣ<BSP>ILEX@"
BurnedTowerName:     db "ΚΑΜΕΝΟΣ<BSP>ΠΥΡΓΟΣ@"
FastShipName:        db "ΤΑΧΥΠΛΟΟ@"
ViridianForestName:  db "ΔΑΣΟΣ<BSP>VIRIDIAN@" ; unreferenced
DiglettsCaveName:    db "ΣΠΗΛΙΑ<BSP>DIGLETT@"
TohjoFallsName:      db "ΚΑΤΑΡΡΑΚΤΕΣ<BSP>TOHJO@"
UndergroundName:     db "ΥΠΟΓΕΙΑ@"
SpecialMapName:      db "ΕΙΔΙΚΟ@"
