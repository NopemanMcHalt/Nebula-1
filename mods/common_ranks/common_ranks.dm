/decl/modpack/commranks
	name = "Common Ranking System"

// Civilian branch.
/datum/mil_branch/civilian
	name = "Civilian"
	name_short = "Civ"
	rank_types = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/civ/synth
	)

	spawn_rank_types = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/civ/synth
	)

/datum/mil_rank/civ/civ
	name = "Civilian"

/datum/mil_rank/civ/contractor
	name = "Contractor"

/datum/mil_rank/civ/synth
	name = "Synthetic"
