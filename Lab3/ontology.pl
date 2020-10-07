c("Person").
c("Woman").
c("Man").

o("Woman", "is_a", "Person").
o("Man", "is_a", "Person").

r([t("?x", "is_a", "&y"), t("?y", "is_a", "?z")], [t("?x", "is_a", "?z")]).



r([t("?x","is_spouse","?y")], [t("?y","is_spouse","?x")]).
r([t("?x","is_spouse","?y"), t("?x","is_a","Man")], 
	[t("?x","is_husband","?y")]).
r([t("?x","is_spouse","?y"),t("?x","is_a","Woman")], 
	[t("?x","is_wife","?y")]).

r([t("?x","is_parent","?y")], [t("?y","is_child","?x")]).
r([t("?x","is_a","Woman"),t("?x","is_child","?y")], 
	[t("?x","is_daughter","?y")]).
r([t("?x","is_a","Man"),t("?x","is_child","?y")], 
	[t("?x","is_son","?y")]).

r([t("?x","is_parent","?y"), t("?x","is_a","Woman")], 
	[t("?x","is_mom","?y")]).
r([t("?x","is_parent","?y"), t("?x","is_a","Man")], 
	[t("?x","is_dad","?y")]).

r([t("?x","is_parent","?y"),t("?y","is_parent","?z")], 
	[t("?x","is_grandparent","?z")]).
r([t("?x","is_a","Man"), t("?x","is_grandparent","?y")], 
	[t("?x","is_granddad","?y")]).
r([t("?x","is_a","Woman"), t("?x","is_grandparent","?y")], 
	[t("?x","is_grandmom","?y")]).

r([t("?x","is_grandparent","?y")], [t("?y","is_grandchild","?x")]).
r([t("?x","is_a","Man"), t("?x","is_grandchild","?y")], 
	[t("?x","is_grandson","?y")]).
r([t("?x","is_a","Woman"), t("?x","is_grandchild","?y")], 
	[t("?x","is_granddaughter","?y")]).

r([t("?x","has_child","?y"), t("?x","has_child","?z"), t("?y","differs","?z")], 
	[t("?y","is_sibling","?z")]).
r([t("?x","is_sibling","?y"),t("?x","is_a","Man")], 
	[t("?x","is_brother","?y")]).
r([t("?x","is_sibling","?y"),t("?x","is_a","Woman")], 
	[t("?x","is_sister","?y")]).

r([t("?x","is_grandparent","?y"),t("?y","is_parent","?z")], 
	[t("?x","is_great_grandparent","?z")]).
r([t("?x","is_a","Man"), t("?x","is_great_grandparent","?y")], 
	[t("?x","is_great_granddad","?y")]).
r([t("?x","is_a","Woman"), t("?x","is_great_grandparent","?y")], 
	[t("?x","is_great_grandmom","?y")]).

r([t("?x","is_great_grandparent","?y")], [t("?y","is_great_grandchild","?x")]).
r([t("?x","is_a","Man"), t("?x","is_great_grandchild","?y")], 
	[t("?x","is_great_grandson","?y")]).
r([t("?x","is_a","Woman"), t("?x","is_great_grandchild","?y")], 
	[t("?x","is_great_granddaughter","?y")]).

r([t("?x", "is_sibling", "?y"), t("?x", "is_parent", "?z")], 
	[t("?y", "is_uncle_or_aunt", "?z")]).
r([t("?x","is_uncle_or_aunt","?y"), t("?x","is_a","Woman")], 
	[t("?x","is_aunt","?y")]).
r([t("?x","is_uncle_or_aunt","?y"), t("?x","is_a","Man")], 
	[t("?x","is_uncle","?y")]).
r([t("?x","is_uncle_or_aunt","?y"), t("?y","is_a","Woman")], 
	[t("?y","is_niece","?x")]).
r([t("?x","is_uncle_or_aunt","?y"), t("?y","is_a","Man")], 
	[t("?y","is_nephew","?x")]).
