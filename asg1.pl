/* FACTS */
male(fred_smith).
male(tom_smith).
male(john_smith).
male(mark_smith).
male(freddy_smith).
male(joe_smith).
male(francis_smith).
male(frederick_smith).
male(marcus_smith).
male(edward_thompson).
male(leonard_thompson).
male(joe_thompson).
male(john_thompson).
male(richard_thompson).
male(marcus_thompson).
male(jeremiah_leech).
male(arthur_leech).
male(timothy_leech).
male(robert_harris).
male(albert_harris).
male(leonard_harris).
male(kenneth_harris).
male(beau_morris).
male(willard_louis).
male(jonathan_louis).
male(tom_louis).

female(mary_jones);
female(lisa_smith);
female(jane_smith);
female(evelyn_harris);
female(pam_wilson);
female(martha_smith);
female(connie_warrick);
female(jill_smith);
female(layla_morris);
female(leslie_smith);
female(julie_smith);
female(heather_smith);
female(susan_holt);
female(mary_thompson);
female(list_smith);
female(catherine_thompson);
female(carrie_thompson);
female(lisa_houser);
female(lilly_thompson);
female(sally_swithers);
female(jane_smith);
female(heather_leech);
female(julia_swift);
female(evelyn_harris);
female(margaret_little);
female(june_harris);
female(jackie_harrie);
female(constance_may);
female(jennifer_harris);
female(karen_harris);
female(jennifer_willis);
female(layla_morris);
female(missy_deas);
female(marsha_lang);
female(mary_louis);
female(jane_louis);
female(katie_louis);

parent_list([fred_smith, mary_jones],
            [tom_smith, lisa_smith, jane_smith, john_smith]).

parent_list([tom_smith, evelyn_harris],
            [mark_smith, freddy_smith, joe_smith, francis_smith]).

parent_list([mark_smith, pam_wilson],
            [martha_smith, frederick_smith]).

parent_list([freddy_smith, connie_warrick],
            [jill_smith, marcus_smith, tim_smith]).

parent_list([john_smith, layla_morris],
            [julie_smith, leslie_smith, heather_smith, zach_smith]).

parent_list([edward_thompson, susan_holt],
            [leonard_thompson, mary_thompson]).

parent_list([leonard_thompson, list_smith],
            [joe_thompson, catherine_thompson, john_thompson, carrie_thompson]).

parent_list([joe_thompson, lisa_houser],
            [lilly_thompson, richard_thompson, marcus_thompson]).

parent_list([john_thompson, mary_snyder],
            []).

parent_list([jeremiah_leech, sally_swithers],
            [arthur_leech]).

parent_list([arthur_leech, jane_smith],
            [timothy_leech, jack_leech, heather_leech]).

parent_list([robert_harris, julia_swift],
            [evelyn_harris, albert_harris]).

parent_list([albert_harris, margaret_little],
            [june_harris, jackie_harrie, leonard_harris]).

parent_list([leonard_harris, constance_may],
            [jennifer_harris, karen_harris, kenneth_harris]).

parent_list([beau_morris, jennifer_willis],
            [layla_morris]).

parent_list([willard_louis, missy_deas],
            [jonathan_louis]).

parent_list([jonathan_louis, marsha_lang],
            [tom_louis]).

parent_list([tom_louis, catherine_thompson],
            [mary_louis, jane_louis, katie_louis]).