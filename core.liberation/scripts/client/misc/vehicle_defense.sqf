params ["_unit", "_role", "_vehicle"];

_vehicle removeAllEventHandlers "IncomingMissile";
_vehicle addEventHandler ["IncomingMissile", {
	params ["_target", "_ammo", "_vehicle", "_instigator"];
<<<<<<< HEAD
	if (objectParent player == _vehicle) then {hintSilent "Incoming Missile !!"};
=======
	if (vehicle player == _vehicle) then {hintSilent "Incoming Missile !!"};
>>>>>>> fed60562 (add vehicle autodefense)
	_target action ["useWeapon", _target, commander _target, 0];
}];
