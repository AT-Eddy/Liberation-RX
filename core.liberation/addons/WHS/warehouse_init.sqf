[] spawn {
	waitUntil {sleep 1; GRLIB_player_spawned};
	while {true} do {
		{
			if (typeOf _x == WRHS_Man && count(actionIDs _x) == 0) then {
				_x addAction ["<t color='#00F080'>" + localize "STR_WAREHOUSE_ENTER" + "</t> <img size='1' image='res\ui_recycle.paa'/>", "addons\WHS\warehouse.sqf","",-900,true,true,"","", 5];
			};
		} forEach (units (group chimeraofficer));
		sleep 10;
	};
};
waitUntil {!(isNull (findDisplay 46))};
systemChat "-------- LRX Warehouse Initialized --------";