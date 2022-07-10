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

parent(fred_smith, tom_smith).
parent(fred_smith, lisa_smith).
parent(fred_smith,jane_smith).
parent(fred_smith,john_smith).
parent(mary_jones,tom_smith).
parent(mary_jones,lisa_smith).
parent(mary_jones,jane_smith).
parent(mary_jones,john_smith).
parent(tom_smith, mark_smith).
parent(tom_smith, freddy_smith).
parent(tom_smith, joe_smith).
parent(tom_smith, francis_smith).
parent(evelyn_harris, mark_smith).
parent(evelyn_harris, freddy_smith).
parent(evelyn_harris, joe_smith).
parent(evelyn_harris, francis_smith).
parent(mark_smith, martha_smith).
parent(mark_smith, frederick_smith).
parent(pam_wilson, martha_smith).
parent(pam_wilson, frederick_smith).
parent(freddy_smith, jill_smith).
parent(freddy_smith, marcus_smith).
parent(freddy_smith, tim_smith).
parent(connie_warrick, jill_smith).
parent(connie_warrick, marcus_smith).
parent(connie_warrick, tim_smith).
parent(john_smith, julie_smith).
parent(john_smith, leslie_smith).
parent(john_smith, heather_smith).
parent(john_smith, zach_smith).
parent(layla_morris, julie_smith).
parent(layla_morris, leslie_smith).
parent(layla_morris, heather_smith).
parent(layla_morris, zach_smith).
parent(edward_thompson, leonard_thompson).
parent(edward_thompson, mary_thompson).
parent(susan_holt, leonard_thompson).
parent(susan_holt, mary_thompson).
parent(leonard_thompson, joe_thompson).
parent(leonard_thompson, catherine_thompson).
parent(leonard_thompson, john_thompson).
parent(leonard_thompson, carrie_thompson).
parent(list_smith, joe_thompson).
parent(list_smith, catherine_thompson).
parent(list_smith, john_thompson).
parent(list_smith, carrie_thompson).
parent(joe_thompson, lilly_thompson).
parent(joe_thompson, richard_thompson).
parent(joe_thompson, marcus_thompson).
parent(lisa_houser, lilly_thompson).
parent(lisa_houser, richard_thompson).
parent(lisa_houser, marcus_thompson).
parent(jeremiah_leech, arthur_leech).
parent(sally_swithers, arthur_leech).
parent(arthur_leech, timothy_leech).
parent(arthur_leech, jack_leech).
parent(arthur_leech, heather_leech).
parent(jane_smith, timothy_leech).
parent(jane_smith, jack_leech).
parent(jane_smith, heather_leech).
parent(robert_harris, evelyn_harris).
parent(robert_harris, albert_harris).
parent(julia_swift, evelyn_harris).
parent(julia_swift, albert_harris).
parent(albert_harris, june_harris).
parent(albert_harris, jackie_harrie).
parent(albert_harris, leonard_harris).
parent(margaret_little, june_harris).
parent(margaret_little, jackie_harrie).
parent(margaret_little, leonard_harris).
parent(leonard_harris, jennifer_harris).
parent(leonard_harris, karen_harris).
parent(leonard_harris, kenneth_harris).
parent(constance_may, jennifer_harris).
parent(constance_may, karen_harris).
parent(constance_may, kenneth_harris).
parent(beau_morris, layla_morris).
parent(jennifer_willis, layla_morris).
parent(willard_louis, jonathan_louis).
parent(missy_deas, jonathan_louis).
parent(jonathan_louis, tom_louis).
parent(marsha_lang, tom_louis).
parent(tom_louis, mary_louis).
parent(tom_louis, jane_louis).
parent(tom_louis, katie_louis).
parent(catherine_thompson, mary_louis).
parent(catherine_thompson, jane_louis).
parent(catherine_thompson, katie_louis).



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