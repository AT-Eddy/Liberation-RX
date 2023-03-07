_unit = _this select 0;

//  "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;


//comment "Add weapons";
_unit addWeapon "hgun_P07_F";
_unit addHandgunItem "16Rnd_9x21_Mag";

//comment "Add containers";
_unit forceAddUniform "NATO_WINTER_UNIFORM";
_unit addVest "NATO_WINTER_V_PLATECARRIER1";

//comment "Add items to containers";
for "_i" from 1 to 2 do {_unit addItemToUniform "30Rnd_9x21_Green_Mag";};
for "_i" from 1 to 3 do {_unit addItemToVest "FirstAidKit";};
_unit addItemToVest "SmokeShell";
_unit addItemToVest "HandGrenade";
for "_i" from 1 to 3 do {_unit addItemToVest "16Rnd_9x21_Mag";};
_unit addHeadgear "NATO_WINTER_H_HELMETPLAIN";
_unit addGoggles "G_Tactical_Clear";

//comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";
