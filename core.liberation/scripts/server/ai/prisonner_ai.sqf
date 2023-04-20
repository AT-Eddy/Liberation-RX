params [ "_unit", ["_friendly", false], ["_canmove", false] ];

sleep 3;
if (!alive _unit) exitWith {};

if (!_canmove) then {
	// Init priso
	removeAllWeapons _unit;
	//removeHeadgear _unit;
	removeBackpack _unit;
	removeVest _unit;
	_hmd = (hmd _unit);
	_unit unassignItem _hmd;
	_unit removeItem _hmd;
	_unit setUnitPos "UP";
	sleep 1;
	_unit disableAI "ANIM";
	_unit disableAI "MOVE";
	_unit playmove "AmovPercMstpSnonWnonDnon_AmovPercMstpSsurWnonDnon" ;
	sleep 2;
	_unit setCaptive true;
};

_unit setVariable ["GRLIB_is_prisonner", true, true];
_unit setVariable ["GRLIB_can_speak", true, true];

// Wait
waitUntil { sleep 1;!alive _unit || side group _unit == GRLIB_side_friendly	};
if (!alive _unit) exitWith {};

// Follow
_unit playmove "AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon";
sleep 2;
_unit enableAI "ANIM";
_unit enableAI "MOVE";
sleep 1;
[_unit, ""] remoteExec ["switchmove", 0];

while {alive _unit} do {

	// Flee
	private _is_near_blufor = count ([units GRLIB_side_friendly, { (isNil {_x getVariable "GRLIB_is_prisonner"}) && (_x distance2D _unit) < 100 }] call BIS_fnc_conditionalSelect);
	if ( _is_near_blufor == 0 && side group _unit == GRLIB_side_friendly && !_friendly ) then {
		gamelogic globalChat format ["Alert! prisonner %1 is escaping!", name _unit];
		_unit setUnitPos "AUTO";
		_unit setVariable ["GRLIB_is_prisonner", true, true];
		unAssignVehicle _unit;

<<<<<<< HEAD
			if ((vehicle _unit != _unit) && !(_unit isEqualTo (driver vehicle _unit))) then {
				unAssignVehicle _unit;
				_unit action ["eject", vehicle _unit];
				_unit action ["getout", vehicle _unit];
				unAssignVehicle _unit;
			};

			private _nearest_sector = [(sectors_allSectors - blufor_sectors), _unit] call BIS_fnc_nearestPosition;

			if (typeName _nearest_sector == "STRING") then {
				private _flee_grp = createGroup [GRLIB_side_civilian, true];
				[_unit] joinSilent _flee_grp;

<<<<<<< HEAD
<<<<<<< HEAD
			if (!isNil "_nearest_sector") then {
				_waypoint = _grp addWaypoint [markerPos _nearest_sector, 0];
=======
				while {(count (waypoints _flee_grp)) != 0} do {deleteWaypoint ((waypoints _flee_grp) select 0);};
				{_x doFollow leader _flee_grp} foreach units _flee_grp;

				_waypoint = _flee_grp addWaypoint [markerPos _nearest_sector, 0];
>>>>>>> 239b83af (fix flee priso)
				_waypoint setWaypointType "MOVE";
				_waypoint setWaypointSpeed "FULL";
				_waypoint setWaypointBehaviour "AWARE";
				_waypoint setWaypointCombatMode "GREEN";
				_waypoint setWaypointCompletionRadius 50;
<<<<<<< HEAD
<<<<<<< HEAD
=======
			_waypoint = _grp addWaypoint [markerPos _nearest_sector, 0];
			_waypoint setWaypointType "MOVE";
			_waypoint setWaypointSpeed "FULL";
			_waypoint setWaypointBehaviour "AWARE";
			_waypoint setWaypointCombatMode "GREEN";
			_waypoint setWaypointCompletionRadius 50;

			_waypoint = _grp addWaypoint [markerPos _nearest_sector, 0];
			_waypoint setWaypointType "MOVE";
			_waypoint setWaypointCompletionRadius 50;
			_waypoint setWaypointStatements ["true", "deleteVehicle this"];
			sleep 10;
>>>>>>> 1b16778d (nearestPosition)

=======
=======

				_waypoint = _flee_grp addWaypoint [markerPos _nearest_sector, 0];
				_waypoint setWaypointType "MOVE";
				_waypoint setWaypointCompletionRadius 50;
				_waypoint setWaypointStatements ["true", "deleteVehicle this"];
				sleep 10;
>>>>>>> 239b83af (fix flee priso)
			};
>>>>>>> d6162942 (fix pisonners)
=======
		if ((vehicle _unit != _unit) && !(_unit isEqualTo (driver vehicle _unit))) then {
			_unit action ["eject", vehicle _unit];
			_unit action ["getout", vehicle _unit];
<<<<<<< HEAD
			unAssignVehicle _unit;
>>>>>>> 07541a9d (bomber)
=======
>>>>>>> e8317e68 (priso unAssign Vehicle)
		};

		private _nearest_sector = [(sectors_allSectors - blufor_sectors), _unit] call F_nearestPosition;

		if (typeName _nearest_sector == "STRING") then {
			private _flee_grp = createGroup [GRLIB_side_civilian, true];
			[_unit] joinSilent _flee_grp;

			while {(count (waypoints _flee_grp)) != 0} do {deleteWaypoint ((waypoints _flee_grp) select 0);};
			{_x doFollow leader _flee_grp} foreach units _flee_grp;

			_waypoint = _flee_grp addWaypoint [markerPos _nearest_sector, 0];
			_waypoint setWaypointType "MOVE";
			_waypoint setWaypointSpeed "FULL";
			_waypoint setWaypointBehaviour "SAFE";
			_waypoint setWaypointCombatMode "GREEN";
			_waypoint setWaypointCompletionRadius 50;

			_waypoint = _flee_grp addWaypoint [markerPos _nearest_sector, 0];
			_waypoint setWaypointType "MOVE";
			_waypoint setWaypointCompletionRadius 50;
			_waypoint setWaypointStatements ["true", "deleteVehicle this"];
			sleep 10;
		} else {
			sleep 60;
			{ deleteVehicle _x } forEach _flee_grp;
		};
	};

	// Captured
	private _nearfob = [_unit, "FOB", 30] call F_check_near;
	if (_nearfob) then {
		private _unit_owner = leader group _unit;
		sleep (3 + floor(random 5));
		doStop _unit;
		unassignVehicle _unit;
		[_unit] orderGetIn false;
		[_unit] allowGetIn false;
		if (!isnull objectParent _unit) then {
			doGetOut _unit;
			sleep 3;
		};
		sleep 3;
		_grp = createGroup [GRLIB_side_friendly, true];
		[_unit] joinSilent _grp;
		_unit playmove "AmovPercMstpSnonWnonDnon_AmovPsitMstpSnonWnonDnon_ground";
		_unit disableAI "ANIM";
		_unit disableAI "MOVE";
		doStop _unit;
		sleep 5;
		[_unit, "AidlPsitMstpSnonWnonDnon_ground00"] remoteExec ["switchmove", 0];
		[_unit, _unit_owner] call prisonner_captured;
		sleep 300;
		deleteVehicle _unit;
	};

	sleep 5;
};
