// NATO Code grading, e.g. OR-2 for Private Second Class. Also includes training categories "##-D" and US Warrant Officers.
// Expect lieutenants (and ensign) to be fallen under same sort order.
/datum/mil_rank/military/grade()
	. = ..()
	if(!sort_order)
		return ""
	if(sort_order < 0)
		return "OR-D"
	if(sort_order < 10)
		return "OR-[sort_order]"
	if(sort_order == 10)
		return "OF-D"
	if(sort_order >= 10.1 && sort_order <= 10.9)
		return "WO-[sort_order - 10 * 10]" // Supposed to be used with number ten and a single decimal.
	return "OF-[sort_order - 10]"

// Based on US Army rankings. Also copy-pasted in general from Bay's Torch code.
/datum/mil_branch/military/army
	name = "Army"
	name_short = "GOVA"
	email_domain = "army.mil"

	rank_types = list(
		/datum/mil_rank/military/army/e0,
		/datum/mil_rank/military/army/e1,
		/datum/mil_rank/military/army/e2,
		/datum/mil_rank/military/army/e3,
		/datum/mil_rank/military/army/e4,
		/datum/mil_rank/military/army/e5,
		/datum/mil_rank/military/army/e6,
		/datum/mil_rank/military/army/e7,
		/datum/mil_rank/military/army/e8,
		/datum/mil_rank/military/army/e9,
		/datum/mil_rank/military/army/w1,
		/datum/mil_rank/military/army/w2,
		/datum/mil_rank/military/army/w3,
		/datum/mil_rank/military/army/w4,
		/datum/mil_rank/military/army/w5,
		/datum/mil_rank/military/army/o0,
		/datum/mil_rank/military/army/o1,
		/datum/mil_rank/military/army/o2,
		/datum/mil_rank/military/army/o3,
		/datum/mil_rank/military/army/o4,
		/datum/mil_rank/military/army/o5,
		/datum/mil_rank/military/army/o6,
		/datum/mil_rank/military/army/o7,
		/datum/mil_rank/military/army/o8,
		/datum/mil_rank/military/army/o9,
		/datum/mil_rank/military/army/o10,
		/datum/mil_rank/military/army/o10_alt1,
		/datum/mil_rank/military/army/o10_alt2,
	)

// Recommended setting.
	spawn_rank_types = list(
		/datum/mil_rank/military/army/e2,
		/datum/mil_rank/military/army/e3,
		/datum/mil_rank/military/army/e4,
		/datum/mil_rank/military/army/e5,
		/datum/mil_rank/military/army/e6,
		/datum/mil_rank/military/army/e7,
		/datum/mil_rank/military/army/e8,
		/datum/mil_rank/military/army/e9,
		/datum/mil_rank/military/army/w1,
		/datum/mil_rank/military/army/o1,
		/datum/mil_rank/military/army/o2,
		/datum/mil_rank/military/army/o3,
		/datum/mil_rank/military/army/o4,
		/datum/mil_rank/military/army/o5
	)

/datum/mil_rank/military/army/e0
	name = "Recruit"
	name_short = "RCT"
	sort_order = -1

/datum/mil_rank/military/army/e1
	name = "Private"
	name_short = "PVT"
	sort_order = 1

/datum/mil_rank/military/army/e2
	name = "Private Second Class"
	name_short = "PV2"
	sort_order = 2

/datum/mil_rank/military/army/e3
	name = "Private First Class"
	name_short = "PFC"
	sort_order = 3

/datum/mil_rank/military/army/e4
	name = "Corporal"
	name_short = "CPL"
	sort_order = 4

/datum/mil_rank/military/army/e5
	name = "Sergeant"
	name_short = "SGT"
	sort_order = 5

/datum/mil_rank/military/army/e6
	name = "Staff Sergeant"
	name_short = "SSG"
	sort_order = 6

/datum/mil_rank/military/army/e7
	name = "Sergeant First Class"
	name_short = "SFC"
	sort_order = 7

/datum/mil_rank/military/army/e8
	name = "Master Sergeant"
	name_short = "MSG"
	sort_order = 8

/datum/mil_rank/military/army/e9
	name = "Sergeant Major"
	name_short = "SGM"
	sort_order = 9

/datum/mil_rank/military/army/o0
	name = "Cadet"
	name_short = "CDT"
	sort_order = 10

/datum/mil_rank/military/army/w1
	name = "Warrant Officer"
	name_short = "WO"
	sort_order = 10.1

/datum/mil_rank/military/army/w2
	name = "Chief Warrant Officer-2"
	name_short = "CWO2"
	sort_order = 10.2

/datum/mil_rank/military/army/w3
	name = "Chief Warrant Officer-3"
	name_short = "CWO3"
	sort_order = 10.3

/datum/mil_rank/military/army/w4
	name = "Chief Warrant Officer-4"
	name_short = "CWO4"
	sort_order = 10.4

/datum/mil_rank/military/army/w5
	name = "Chief Warrant Officer-5"
	name_short = "CWO5"
	sort_order = 10.5

/datum/mil_rank/military/army/o1
	name = "Second Lieutenant"
	name_short = "2LT"
	sort_order = 11

/datum/mil_rank/military/army/o2
	name = "First Lieutenant"
	name_short = "1LT"
	sort_order = 11

/datum/mil_rank/military/army/o3
	name = "Captain"
	name_short = "CPT"
	sort_order = 12

/datum/mil_rank/military/army/o4
	name = "Major"
	name_short = "MAJ"
	sort_order = 13

/datum/mil_rank/military/army/o5
	name = "Lieutenant Colonel"
	name_short = "LTC"
	sort_order = 14

/datum/mil_rank/military/army/o6
	name = "Colonel"
	name_short = "COL"
	sort_order = 15

/datum/mil_rank/military/army/o7
	name = "Brigadier General"
	name_short = "BG"
	sort_order = 16

/datum/mil_rank/military/army/o8
	name = "Major General"
	name_short = "MG"
	sort_order = 17

/datum/mil_rank/military/army/o9
	name = "Lieutenant General"
	name_short = "LTG"
	sort_order = 18

/datum/mil_rank/military/army/o10
	name = "General"
	name_short = "GEN"
	sort_order = 19

/datum/mil_rank/military/army/o10_alt1
	name = "General of the Army"
	name_short = "GA"
	sort_order = 20

/datum/mil_rank/military/army/o10_alt2
	name = "General of the Armies"
	name_short = "GA"
	sort_order = 21

// Based on USMC. Uses Army ranks with some exceptions. And yes, it works.
/datum/mil_branch/military/army/marine_corps
	name = "Marine Corps"
	name_short = "GOVMC"
	email_domain = "army.oorah.mil"

	rank_types = list(
		/datum/mil_rank/military/army/e0,
		/datum/mil_rank/military/army/e1,
		/datum/mil_rank/military/army/marine_corps/e2,
		/datum/mil_rank/military/army/marine_corps/e3,
		/datum/mil_rank/military/army/e4,
		/datum/mil_rank/military/army/e5,
		/datum/mil_rank/military/army/e6,
		/datum/mil_rank/military/army/marine_corps/e7,
		/datum/mil_rank/military/army/e8,
		/datum/mil_rank/military/army/marine_corps/e9,
		/datum/mil_rank/military/army/w1,
		/datum/mil_rank/military/army/w2,
		/datum/mil_rank/military/army/w3,
		/datum/mil_rank/military/army/w4,
		/datum/mil_rank/military/army/w5,
		/datum/mil_rank/military/army/o0,
		/datum/mil_rank/military/army/o1,
		/datum/mil_rank/military/army/o2,
		/datum/mil_rank/military/army/o3,
		/datum/mil_rank/military/army/o4,
		/datum/mil_rank/military/army/o5,
		/datum/mil_rank/military/army/o6,
		/datum/mil_rank/military/army/o7,
		/datum/mil_rank/military/army/o8,
		/datum/mil_rank/military/army/o9,
		/datum/mil_rank/military/army/o10
	)

// Recommended setting.
	spawn_rank_types = list(
		/datum/mil_rank/military/army/marine_corps/e2,
		/datum/mil_rank/military/army/marine_corps/e3,
		/datum/mil_rank/military/army/e4,
		/datum/mil_rank/military/army/e5,
		/datum/mil_rank/military/army/e6,
		/datum/mil_rank/military/army/marine_corps/e7,
		/datum/mil_rank/military/army/e8,
		/datum/mil_rank/military/army/marine_corps/e9,
		/datum/mil_rank/military/army/w1,
		/datum/mil_rank/military/army/o1,
		/datum/mil_rank/military/army/o2,
		/datum/mil_rank/military/army/o3,
		/datum/mil_rank/military/army/o4,
		/datum/mil_rank/military/army/o5
	)

/datum/mil_rank/military/army/marine_corps/e2
	name = "Private First Class"
	name_short = "PFC"
	sort_order = 2

/datum/mil_rank/military/army/marine_corps/e3
	name = "Lance Corporal"
	name_short = "LCPL"
	sort_order = 3

/datum/mil_rank/military/army/marine_corps/e7
	name = "Gunnery Sergeant"
	name_short = "GYSGT"
	sort_order = 7

/datum/mil_rank/military/army/marine_corps/e9
	name = "Master Gunnery Sergeant"
	name_short = "MGYSGT"
	sort_order = 9

// Based on US Navy ratings. Also primarily copied from Torch's code.
/datum/mil_branch/military/fleet
	name = "Fleet"
	name_short = "GOVF"
	email_domain = "fleet.mil"

	rank_types = list(
		/datum/mil_rank/military/fleet/e0,
		/datum/mil_rank/military/fleet/e1,
		/datum/mil_rank/military/fleet/e2,
		/datum/mil_rank/military/fleet/e3,
		/datum/mil_rank/military/fleet/e4,
		/datum/mil_rank/military/fleet/e5,
		/datum/mil_rank/military/fleet/e6,
		/datum/mil_rank/military/fleet/e7,
		/datum/mil_rank/military/fleet/e8,
		/datum/mil_rank/military/fleet/e9,
		/datum/mil_rank/military/fleet/w1,
		/datum/mil_rank/military/fleet/w2,
		/datum/mil_rank/military/fleet/w3,
		/datum/mil_rank/military/fleet/w4,
		/datum/mil_rank/military/fleet/w5,
		/datum/mil_rank/military/fleet/o0,
		/datum/mil_rank/military/fleet/o1,
		/datum/mil_rank/military/fleet/o2,
		/datum/mil_rank/military/fleet/o3,
		/datum/mil_rank/military/fleet/o4,
		/datum/mil_rank/military/fleet/o5,
		/datum/mil_rank/military/fleet/o6,
		/datum/mil_rank/military/fleet/o7,
		/datum/mil_rank/military/fleet/o8,
		/datum/mil_rank/military/fleet/o9,
		/datum/mil_rank/military/fleet/o10,
		/datum/mil_rank/military/fleet/o10_alt
	)

// Recommended setting.
	spawn_rank_types = list(
		/datum/mil_rank/military/fleet/e2,
		/datum/mil_rank/military/fleet/e3,
		/datum/mil_rank/military/fleet/e4,
		/datum/mil_rank/military/fleet/e5,
		/datum/mil_rank/military/fleet/e6,
		/datum/mil_rank/military/fleet/e7,
		/datum/mil_rank/military/fleet/e8,
		/datum/mil_rank/military/fleet/e9,
		/datum/mil_rank/military/fleet/w1,
		/datum/mil_rank/military/fleet/o1,
		/datum/mil_rank/military/fleet/o2,
		/datum/mil_rank/military/fleet/o3,
		/datum/mil_rank/military/fleet/o4,
		/datum/mil_rank/military/fleet/o5,
		/datum/mil_rank/military/fleet/o6
	)

/datum/mil_rank/military/fleet/e0
	name = "Recruit"
	name_short = "RCT"
	sort_order = -1

/datum/mil_rank/military/fleet/e1
	name = "Crewman Recruit"
	name_short = "CR"
	sort_order = 1

/datum/mil_rank/military/fleet/e2
	name = "Crewman Apprentice"
	name_short = "CA"
	sort_order = 2

/datum/mil_rank/military/fleet/e3
	name = "Crewman"
	name_short = "CN"
	sort_order = 3

/datum/mil_rank/military/fleet/e4
	name = "Petty Officer Third Class"
	name_short = "PO3"
	sort_order = 4

/datum/mil_rank/military/fleet/e5
	name = "Petty Officer Second Class"
	name_short = "PO2"
	sort_order = 5

/datum/mil_rank/military/fleet/e6
	name = "Petty Officer First Class"
	name_short = "PO1"
	sort_order = 6

/datum/mil_rank/military/fleet/e7
	name = "Chief Petty Officer"
	name_short = "CPO"
	sort_order = 7

/datum/mil_rank/military/fleet/e8
	name = "Senior Chief Petty Officer"
	name_short = "SCPO"
	sort_order = 8

/datum/mil_rank/military/fleet/e9
	name = "Master Chief Petty Officer"
	name_short = "MCPO"
	sort_order = 9

/datum/mil_rank/military/fleet/w1
	name = "Warrant Officer One"
	name_short = "WO"
	sort_order = 10.1

/datum/mil_rank/military/fleet/w2
	name = "Chief Warrant Officer Two"
	name_short = "CWO2"
	sort_order = 10.2

/datum/mil_rank/military/fleet/w3
	name = "Chief Warrant Officer Three"
	name_short = "CWO3"
	sort_order = 10.3

/datum/mil_rank/military/fleet/w4
	name = "Chief Warrant Officer Four"
	name_short = "CWO4"
	sort_order = 10.4

/datum/mil_rank/military/fleet/w5
	name = "Chief Warrant Officer Five"
	name_short = "CWO5"
	sort_order = 10.5

/datum/mil_rank/military/fleet/o0
	name = "Cadet"
	name_short = "CDT"
	sort_order = 10

/datum/mil_rank/military/fleet/o1
	name = "Ensign"
	name_short = "ENS"
	sort_order = 11

/datum/mil_rank/military/fleet/o2
	name = "Lieutenant (junior grade)"
	name_short = "LTJG"
	sort_order = 11

/datum/mil_rank/military/fleet/o3
	name = "Lieutenant"
	name_short = "LT"
	sort_order = 12

/datum/mil_rank/military/fleet/o4
	name = "Lieutenant Commander"
	name_short = "LCDR"
	sort_order = 13

/datum/mil_rank/military/fleet/o5
	name = "Commander"
	name_short = "CDR"
	sort_order = 14

/datum/mil_rank/military/fleet/o6
	name = "Captain"
	name_short = "CAPT"
	sort_order = 15

/datum/mil_rank/military/fleet/o7
	name = "Rear Admiral (lower half)"
	name_short = "RDML"
	sort_order = 16

/datum/mil_rank/military/fleet/o8
	name = "Rear Admiral"
	name_short = "RADM"
	sort_order = 17

/datum/mil_rank/military/fleet/o9
	name = "Vice Admiral"
	name_short = "VADM"
	sort_order = 18

/datum/mil_rank/military/fleet/o10
	name = "Admiral"
	name_short = "ADM"
	sort_order = 19

/datum/mil_rank/military/fleet/o10_alt
	name = "Fleet Admiral"
	name_short = "FADM"
	sort_order = 20
