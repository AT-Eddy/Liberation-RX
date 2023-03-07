// Configuration for ammo boxes transport
// First entry: classname
// Second entry: how far behind the vehicle the boxes should be unloaded
// Following entries: attachTo position for each box, the number of boxes that can be loaded is derived from the number of entries

box_transport_config = box_transport_config + [
	[ "AAF_Winter_G_Offroad_01_F", -5, [0, -1.55, 0.2] ],
	[ "AAF_Winter_E_Offroad_01_F", -5, [0, -1.55, 0.2] ],
	[ "AAF_Winter_Truck_02_transport_F", -5.5, [0, 0.3, 0], [0, -1.25, 0], [0, -2.8, 0] ],
	[ "AAF_Winter_Truck_02_covered_F", -5.5, [0, 0.3, 0], [0, -1.25, 0], [0, -2.8, 0] ],
	[ "AAF_Winter_Truck_02_medical_F", -5.5, [0, 0.3, 0], [0, -1.25, 0], [0, -2.8, 0] ],
	[ "AAF_Winter_Truck_02_box_F", -5.5, [0, 0.3, 0], [0, -1.25, 0], [0, -2.8, 0] ]
];

// Additional offset per object
// objects in this list can be loaded on vehicle position defined above

box_transport_offset = box_transport_offset + [
    // use default config
];
