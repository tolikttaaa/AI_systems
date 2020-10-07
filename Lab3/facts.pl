f("anischenko_alexey", "is_parent", "anischenko_anatoliy").
f("anischenko_julia", "is_parent", "anischenko_anatoliy").
f("anischenko_alexey", "is_parent", "anischenko_timofey").
f("anischenko_julia", "is_parent", "anischenko_timofey").
f("anischenko_vitaliy", "is_parent", "anischenko_alexey").
f("anischenko_olga", "is_parent", "anischenko_alexey").
f("anischenko_vitaliy", "is_parent", "anischenko_igor").
f("anischenko_olga", "is_parent", "anischenko_igor").
f("kukushkin_michail", "is_parent", "anischenko_julia").
f("kukushkina_tatiana", "is_parent", "anischenko_julia").
f("kukushkin_pavel", "is_parent", "kukushkin_michail").
f("kukushkina_vera", "is_parent", "kukushkin_michail").
f("kukushkin_pavel", "is_parent", "tsygonyaeva_elena").
f("kukushkina_vera", "is_parent", "tsygonyaeva_elena").
f("drobov_aleksandr", "is_parent", "kukushkina_tatiana").
f("drobova_nina", "is_parent", "kukushkina_tatiana").
f("drobov_aleksandr", "is_parent", "ilyicheva_luda").
f("drobova_nina", "is_parent", "ilyicheva_luda").
f("tsygonyaev_yuriy", "is_parent", "tsygonyaev_alexey").
f("tsygonyaeva_elena", "is_parent", "tsygonyaev_alexey").
f("tsygonyaev_yuriy", "is_parent", "tsygonyaev_vitaliy").
f("tsygonyaeva_elena", "is_parent", "tsygonyaev_vitaliy").
f("tsygonyaev_alexey", "is_parent", "tsygonyaev_ivan").
f("tsygonyaeva_tatiana", "is_parent", "tsygonyaev_ivan").
f("tsygonyaev_vitaliy", "is_parent", "tsygonyaev_michail").	
f("tsygonyaeva_anna", "is_parent", "tsygonyaev_michail").
f("tsygonyaev_vitaliy", "is_parent", "tsygonyaev_sergey").
f("tsygonyaeva_anna", "is_parent", "tsygonyaev_sergey").

f("anischenko_alexey", "is_a", "Man").
f("anischenko_anatoliy", "is_a", "Man").
f("anischenko_timofey", "is_a", "Man").
f("anischenko_igor", "is_a", "Man").
f("anischenko_vitaliy", "is_a", "Man").
f("kukushkin_michail", "is_a", "Man").
f("kukushkin_pavel", "is_a", "Man").
f("drobov_aleksandr", "is_a", "Man").
f("tsygonyaev_yuriy", "is_a", "Man").
f("tsygonyaev_alexey", "is_a", "Man").
f("tsygonyaev_vitaliy", "is_a", "Man").
f("tsygonyaev_ivan", "is_a", "Man").
f("tsygonyaev_michai", "is_a", "Man").	
f("tsygonyaev_sergey", "is_a", "Man").

f("anischenko_julia", "is_a", "Woman").
f("anischenko_olga", "is_a", "Woman").
f("kukushkina_tatiana", "is_a", "Woman").
f("kukushkina_vera", "is_a", "Woman").
f("drobova_nina", "is_a", "Woman").
f("ilyicheva_luda", "is_a", "Woman").
f("tsygonyaeva_elena", "is_a", "Woman").
f("tsygonyaeva_tatiana", "is_a", "Woman").
f("tsygonyaeva_anna", "is_a", "Woman").

f("anischenko_alexey", "is_spouse", "anischenko_julia").
f("anischenko_olga", "is_spouse", "anischenko_vitaliy").
f("kukushkin_michail", "is_spouse", "kukushkina_tatiana").
f("drobov_aleksandr", "is_spouse", "drobova_nina").
f("kukushkin_pavel", "is_spouse", "kukushkina_vera").
f("tsygonyaeva_elena", "is_spouse", "tsygonyaev_yuriy").
f("tsygonyaev_alexey", "is_spouse", "tsygonyaeva_tatiana").
f("tsygonyaeva_anna", "is_spouse", "tsygonyaev_vitaliy").

t("x").

onto("ontology.pl").
