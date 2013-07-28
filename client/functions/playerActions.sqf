
//	@file Version: 1.1
//	@file Name: playerActions.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AimZ =(dp)=
//	@file Created: 20/11/2012 05:19
//  @file Modified: 07/12/2012 23:35
//	@file Args:

aActionsIDs = [];
aActionsIDs = aActionsIDs + [player addAction["Use The Gun Store", "client\systems\gunStore\loadGunStore.sqf", [], 1, false, false, "", 'player distance (nearestobjects [player, ["C_man_polo_4_F"],  5] select 0) < 5']];
aActionsIDs = aActionsIDs + [player addAction["Use The General Store", "client\systems\generalStore\loadGenStore.sqf", [], 1, false, false, "", 'player distance (nearestobjects [player, ["C_man_polo_6_F"],  5] select 0) < 5']];

//Fuel can actions.
//aActionsIDs = aActionsIDs + [player addAction["Take Jerry Can", "noscript.sqf", 'deleteVehicle (nearestobjects [player, ["Fuel_can"],  5] select 0); player setVariable["fuelFull",1,true]; hint "You have taken a fuel can."; player playmove "AinvPknlMstpSlayWrflDnon"',0,false,false,"",'player distance (nearestobjects [player, ["Fuel_can"],  5] select 0) < 4 AND ((player getVariable "fuelFull") == 0) AND ((player getVariable "fuelEmpty") == 0) AND ((nearestObjects[player, ["Fuel_can"], 3] select 0) getVariable "fuel")']];
//aActionsIDs = aActionsIDs + [player addAction["Take Empty Jerry Can", "noscript.sqf", 'deleteVehicle (nearestobjects [player, ["Fuel_can"],  5] select 0); player setVariable["fuelEmpty",1,true]; hint "You have taken a empty fuel can."; player playmove "AinvPknlMstpSlayWrflDnon"',0,false,false,"",'player distance (nearestobjects [player, ["Fuel_can"],  5] select 0) < 4 AND ((player getVariable "fuelFull") == 0) AND ((player getVariable "fuelEmpty") == 0) AND !((nearestObjects[player, ["Fuel_can"], 3] select 0) getVariable ["fuel", false])']];
aActionsIDs = aActionsIDs + [player addAction["Refuel Jerry Can", "client\actions\refuelFuelCan.sqf", [], 1, false, false, "", 'player distance (nearestobjects [player, ["Land_FuelStation_Feed_F", "Land_MetalBarrel_F"],  3] select 0) < 3 AND ((player getVariable "fuelFull") == 0) AND ((player getVariable "fuelEmpty") == 1)']];

//aActionsIDs = aActionsIDs + [player addAction["Take Repair kit", "noscript.sqf", 'deleteVehicle (nearestobjects [player, ["Suitcase"],  5] select 0); player setVariable["repairkits", (player getVariable "repairkits")+1,true]; hint "You have taken a repair kit."; player playmove "AinvPknlMstpSlayWrflDnon"',0,false,false,"",'player distance (nearestobjects [player, ["Suitcase"],  5] select 0) < 4 and (player getVariable "repairkits")<2']];
//aActionsIDs = aActionsIDs + [player addAction["Take Medical kit", "noscript.sqf", 'deleteVehicle (nearestobjects [player, ["CZ_VestPouch_EP1"],  5] select 0); player setVariable["medkits", (player getVariable "medkits")+1,true]; hint "You have taken a medkit."; player playmove "AinvPknlMstpSlayWrflDnon"',0,false,false,"",'player distance (nearestobjects [player, ["CZ_VestPouch_EP1"],  5] select 0) < 4 and (player getVariable "medkits")<2 ']];
aActionsIDs = aActionsIDs + [player addAction["Take from food sack", "noscript.sqf", '_nobj = (nearestobjects [player, ["Land_Sacks_goods_F"],  5] select 0); _nobj setVariable["food",(_nobj getVariable "food")-1,true]; player setVariable["canfood",(player getVariable "canfood")+1,true]; player playmove "AinvPknlMstpSlayWrflDnon"; if(_nobj getVariable "food" < 1) then {hint "You have taken some food.\nFood sack is empty.";} else {hint format["You have taken some food.\n(Food left: %1)", (_nobj getVariable "food")];};',0,false,false,"",'player distance (nearestobjects [player, ["Land_Sacks_goods_F"],  5] select 0) < 5 and (player getVariable "canfood") < 3 and (nearestobjects [player, ["Land_Sacks_goods_F"],  5] select 0) getVariable "food" > 0']];
aActionsIDs = aActionsIDs + [player addAction["Take food basket", "noscript.sqf", 'deleteVehicle (nearestobjects [player, ["Land_Basket_F"],  5] select 0); player setVariable["canfood", (player getVariable "canfood")+1,true]; hint "You have taken some food."; player playmove "AinvPknlMstpSlayWrflDnon"',0,false,false,"",'player distance (nearestobjects [player, ["Land_Basket_F"],  5] select 0) < 5 and (player getVariable "canfood")<3']];
aActionsIDs = aActionsIDs + [player addAction["Take from water can","noscript.sqf",'_nobj = (nearestobjects [player, ["Land_CanisterPlastic_F"],  5] select 0);_nobj setVariable["water",(_nobj getVariable "water")-1,true];player setVariable["water",(player getVariable "water")+1,true];player playmove "AinvPknlMstpSlayWrflDnon";if(_nobj getVariable "water" < 1) then {hint "You have taken some water.\nCanister is empty.";}else{hint format["You have taken some water.\n(Water left: %1)", (_nobj getVariable "water")];};',0,false,false,"",'player distance (nearestobjects [player, ["Land_CanisterPlastic_F"],  5] select 0) < 5 and (player getVariable "water") < 4 and (nearestobjects [player, ["Land_CanisterPlastic_F"],  5] select 0) getVariable "water" > 0']];
aActionsIDs = aActionsIDs + [player addAction["Take water bucket", "noscript.sqf", 'deleteVehicle (nearestobjects [player, ["Land_Bucket_F"],  5] select 0); player setVariable["water", (player getVariable "water")+1,true]; hint "You have taken some water."; player playmove "AinvPknlMstpSlayWrflDnon"',0,false,false,"",'player distance (nearestobjects [player, ["Land_Bucket_F"],  5] select 0) < 5 and (player getVariable "water")<4']];

//Pickup Money
aActionsIDs = aActionsIDs + [player addAction["Pickup Money", "client\actions\pickupMoney.sqf", [], 1, false, false, "", 'player distance (nearestobjects [player, ["Land_Sack_F"],  5] select 0) < 5']];

//Pickup SpawnBeacon (Satelit)
//aActionsIDs = aActionsIDs + [player addAction[("<t color=""#E01B1B"">Destroy spawn beacon</t>"), "client\actions\pickupBeacon.sqf", 1, 1, false, false, "", '_currBeacon = (nearestobjects [player, ["Satelit"],  5]); player distance (_currBeacon select 0) < 5; ((nearestObjects[player, ["Satelit"], 3] select 0) getVariable "ownerUID") == (getPlayerUID player) OR str(playerSide) != ((nearestObjects[player, ["Satelit"], 3] select 0) getVariable "faction") OR ((nearestObjects[player, ["Satelit"], 3] select 0) getVariable "faction") == "WORLD"']];
//aActionsIDs = aActionsIDs + [player addAction[("<t color=""#21DE31"">Steal spawn beacon</t>"), "client\actions\pickupBeacon.sqf", 0, 1, false, false, "", '_currBeacon = (nearestobjects [player, ["Satelit"],  5]); player distance (_currBeacon select 0) < 5; str(playerSide) != ((nearestObjects[player, ["Satelit"], 3] select 0) getVariable "faction") OR ((nearestObjects[player, ["Satelit"], 3] select 0) getVariable "faction") == "WORLD"']];

//Camonet pickup
aActionsIDs = aActionsIDs + [player addAction["Pickup Slum Canvas (Black)", "client\actions\pickupcamonet.sqf", [], 1, false, false, "", 'player distance (nearestobjects [player, ["Land_cargo_addon02_V2_F"],  5] select 0) < 5 and (player getVariable "camonet")<1 ']];

//Cancel action
aActionsIDs = aActionsIDs + [player addAction[("<t color=""#FFFFFF"">Cancel Action</t>"), "noscript.sqf", 'doCancelAction = true;', 1, false, false, "", 'mutexScriptInProgress']];
