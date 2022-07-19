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


female(mary_jones).
female(lisa_smith).
female(jane_smith).
female(evelyn_harris).
female(pam_wilson).
female(martha_smith).
female(connie_warrick).
female(jill_smith).
female(layla_morris).
female(leslie_smith).
female(julie_smith).
female(heather_smith).
female(susan_holt).
female(mary_thompson).
female(lisa_smith).
female(catherine_thompson).
female(carrie_thompson).
female(lisa_houser).
female(lilly_thompson).
female(sally_swithers).
female(jane_smith).
female(heather_leech).
female(julia_swift).
female(evelyn_harris).
female(margaret_little).
female(june_harris).
female(jackie_harrie).
female(constance_may).
female(jennifer_harris).
female(karen_harris).
female(jennifer_willis).
female(layla_morris).
female(missy_deas).
female(marsha_lang).
female(mary_louis).
female(jane_louis).
female(katie_louis).

/* married(X=Husband,Y=Wife) */
/* married(X=Husband,Y=Wife) 
married(Husband,Wife) :- married(Wife,Husband).
married(Husband,Wife) :- husband(Husband,Wife).
married(Husband,Wife) :- wife(Husband,Wife).
*/
married(fred_smith, mary_jones).
married(tom_smith, evelyn_harris).
married(mark_smith, pam_wilson).
married(freddy_smith, connie_warrick).
married(john_smith, layla_morris).
married(edward_thompson, susan_holt).
married(leonard_thompson, lisa_smith).
married(joe_thompson, lisa_houser).
married(john_thompson, mary_snyder).
married(jeremiah_leech, sally_swithers).
married(arthur_leech, jane_smith).
married(robert_harris, julia_swift).
married(albert_harris, margaret_little).
married(leonard_harris, constance_may).
married(beau_morris, jennifer_willis).
married(willard_louis, missy_deas).
married(jonathan_louis, marsha_lang).
married(tom_louis, catherine_thompson).

/* parent(X=Parent,Y=Child) */
/* parent(X=Parent,Y=Child) Z=Other Variable 
parent(Parent,Child) :- child(Child,Parent).
parent(Parent,Child) :- married(Parent,Z) ,parent(Z,Child).
parent(Parent,Child) :- father(Parent,Child).
parent(Parent,Child) :- mother(Parent,Child).
parent(Parent,Child) :- parent(Parent,Z), sibling(Child,Z).
*/
parent(evelyn_harris, mark_smith).
parent(evelyn_harris, freddy_smith).
parent(evelyn_harris, joe_smith).
parent(evelyn_harris, francis_smith).
parent(pam_wilson, martha_smith).
parent(pam_wilson, frederick_smith).
parent(connie_warrick, jill_smith).
parent(connie_warrick, marcus_smith).
parent(connie_warrick, tim_smith).
parent(layla_morris, julie_smith).
parent(layla_morris, leslie_smith).
parent(layla_morris, heather_smith).
parent(layla_morris, zach_smith).
parent(susan_holt, leonard_thompson).
parent(susan_holt, mary_thompson).
parent(lisa_smith, joe_thompson).
parent(lisa_smith, catherine_thompson).
parent(lisa_smith, john_thompson).
parent(lisa_smith, carrie_thompson).
parent(lisa_houser, lilly_thompson).
parent(lisa_houser, richard_thompson).
parent(lisa_houser, marcus_thompson).
parent(sally_swithers, arthur_leech).
parent(jane_smith, timothy_leech).
parent(jane_smith, jack_leech).
parent(jane_smith, heather_leech).
parent(julia_swift, evelyn_harris).
parent(julia_swift, albert_harris).
parent(margaret_little, june_harris).
parent(margaret_little, jackie_harrie).
parent(margaret_little, leonard_harris).
parent(constance_may, jennifer_harris).
parent(constance_may, karen_harris).
parent(constance_may, kenneth_harris).
parent(jennifer_willis, layla_morris).
parent(missy_deas, jonathan_louis).
parent(marsha_lang, tom_louis).
parent(catherine_thompson, mary_louis).
parent(catherine_thompson, jane_louis).
parent(catherine_thompson, katie_louis).
parent(mary_jones,tom_smith).
parent(mary_jones,lisa_smith).
parent(mary_jones,jane_smith).
parent(mary_jones,john_smith).
parent(fred_smith, tom_smith).
parent(fred_smith, lisa_smith).
parent(fred_smith,jane_smith).
parent(fred_smith,john_smith).
parent(tom_smith, mark_smith).
parent(tom_smith, freddy_smith).
parent(tom_smith, joe_smith).
parent(tom_smith, francis_smith).
parent(mark_smith, martha_smith).
parent(mark_smith, frederick_smith).
parent(freddy_smith, jill_smith).
parent(freddy_smith, marcus_smith).
parent(freddy_smith, tim_smith).
parent(john_smith, julie_smith).
parent(john_smith, leslie_smith).
parent(john_smith, heather_smith).
parent(john_smith, zach_smith).
parent(edward_thompson, leonard_thompson).
parent(edward_thompson, mary_thompson).
parent(leonard_thompson, joe_thompson).
parent(leonard_thompson, catherine_thompson).
parent(leonard_thompson, john_thompson).
parent(leonard_thompson, carrie_thompson).
parent(joe_thompson, lilly_thompson).
parent(joe_thompson, richard_thompson).
parent(joe_thompson, marcus_thompson).
parent(jeremiah_leech, arthur_leech).
parent(arthur_leech, timothy_leech).
parent(arthur_leech, jack_leech).
parent(arthur_leech, heather_leech).
parent(robert_harris, evelyn_harris).
parent(robert_harris, albert_harris).
parent(albert_harris, june_harris).
parent(albert_harris, jackie_harrie).
parent(albert_harris, leonard_harris).
parent(leonard_harris, jennifer_harris).
parent(leonard_harris, karen_harris).
parent(leonard_harris, kenneth_harris).
parent(beau_morris, layla_morris).
parent(willard_louis, jonathan_louis).
parent(jonathan_louis, tom_louis).
parent(tom_louis, mary_louis).
parent(tom_louis, jane_louis).
parent(tom_louis, katie_louis).

/* RULES 
Glossary
Z = Random Variable
S1 = Sibling 1
S2 = Sibling 2
P1 = Parent1
P2 = Parent2

*/

distinct(Goal) :-
    findall(Goal, Goal, List),
    list_to_set(List, Set),
    member(Goal, Set).




/*A mother must be a parent and a female
 *mother(X=Parent,Y=Child) Z=Other Variable Q=No Clue
 */
mother(Parent,Child):- female(Parent), parent(Parent,Child).

/*A Wife must have a husband, be female, and be married
 *wife(X=Wife,Y=Husband)
 */
/*wife(Wife,Husband) :- husband(Husband,Wife).*/
wife(Wife,Husband) :- female(Wife) ,married(Husband,Wife).

/*A father must be a parent and a male
 *father(X=Parent,Y=Child) Z=Other Variable Q=No Clue
 */
father(Parent,Child):- male(Parent), parent(Parent,Child).

/*A Husband must have a wife, be male, and be married
 *husband(X=Husband,Y=Wife)
 */
/*husband(Husband,Wife) :- wife(Wife,Husband).*/
husband(Husband,Wife) :- male(Husband) ,married(Husband,Wife).

/*A child must have a parent, and can be either a son or daughter
 *child(X=Child,Y=Parent) Z=Other Variable

child(Child,Parent) :- parent(Parent,Child);child(Child,Parent). */
child(Child,Parent) :- daughter(Child,Parent);son(Child,Parent).

/*Siblings must share a parent and either be a brother or a sister
 *sibling(X=S1,Y=S2) Z=Other Variable
 */
sibling(S1,S2) :- parent(Z,S1), parent(Z,S2), S1 \= S2.
/*sibling(S1,S2) :- sibling(S2,S1).
sibling(S1,S2) :- brother(S1,S2); sister(S1,S2).*/

/*A daughter must have a parent, and be female
 *daughter(X=Child,Y=Parent)
 */
daughter(Child,Parent):- female(Child), child(Child,Parent).

/*A son must have a parent, and be male
 *son(X=Child,Y=Parent)
 */
son(Child,Parent):- male(Child),  child(Child,Parent).

/*A sister must have a sibling and must be female
 *sister(X=S1,Y=S2)
 */
sister(S1,S2) :- sibling(S1,S2) ,female(S1).

/*A brother must have a sibling and must be male
 *brother(X=S1,Y=S2)
 */
brother(S1,S2) :- sibling(S1,S2) ,male(S1).

/*An ancestor is someone who has a child who is a parent to a child
 *grandparent(X=GParent,Y=GChild) Z=Parent who has child and gparent
 */
ancestor(GParent,GChild) :- parent(GParent,Parent) ,parent(Parent,GChild).
grandfather(GParent,GChild) :- ancestor(GParent,GChild) ,male(GParent).
grandmother(GParent,GChild) :- ancestor(GParent,GChild) ,female(GParent).

/*A nephew must either have an aunt or an uncle and must be male
 *nephew(X=Nephew,Y=Uncle or Aunt)
 */
nephew(Nephew,Aunt) :- aunt(Aunt,Nephew) ,male(Nephew).
nephew(Nephew,Uncle) :- uncle(Uncle,Nephew) ,male(Nephew).

/*A niece must either have an aunt or an uncle and must be female
 *niece(X=Child,Y=Uncle or Aunt)
 */
niece(niece,Aunt) :- aunt(Aunt,niece) ,female(niece).
niece(niece,Uncle) :- uncle(Uncle,niece) ,female(niece).

/*An aunt has to have either a nepher or neice, a sibling that is a parent of
 *another child, and must be a female
 *aunt(X=Aunt,Y=Child) Z=Other variable
 */
aunt(Aunt,Child) :- nephew(Child,Aunt) ,female(Aunt).
aunt(Aunt,Child) :- niece(Child,Aunt) ,female(Aunt).
aunt(Aunt,Child) :- sibling(Aunt,Z) ,parent(Z,Child) ,female(Aunt).

/*An uncle has to have either a nepher or neice, a sibling that is a parent of
 *another child, and must be a male
 *uncle(X=Uncle,Y=Child) Z=Other Variable
 */
uncle(Uncle,Child) :- married(Uncle,Z) ,aunt(Z,Child).
uncle(Uncle,Child) :- nephew(Child,Uncle) ,male(Uncle).
uncle(Uncle,Child) :- niece(Child,Uncle) ,male(Uncle).
uncle(Uncle,Child) :- sibling(Uncle,Z) ,parent(Z,Child) ,male(Uncle).

/*A cousin is related through its parent and either an aunt, nephew, uncle, or
 *niece
 *cousin(X=Cousin 1,Y=Cousin 2) Z=Other variable 
*/
cousin(C1,C2) :- cousin(C2,C1).
cousin(C1,C2) :- parent(Z,C1) ,aunt(Z,C2).
cousin(C1,C2) :- parent(Z,C1) ,uncle(Z,C2).
cousin(C1,C2) :- parent(Z,C1) ,nephew(C2,Z).
cousin(C1,C2) :- parent(Z,C1) ,niece(C2,Z).

/*Blood relatives must be related through parents individualy, uncles and aunts from each side, nieces and nephews from each side.
 *cousins
 *blood(X=Person1, Y=Person2)
*/ 
blood(Person1,Person2):- parent(Z,Person1), parent(Z,Person2).
blood(Person1,Person2):- sibling(Z,Person1), sibling(Z,Person2).
blood(Person1,Person2):- uncle(Z,Person1), uncle(Z,Person2).
blood(Person1,Person2):- aunt(Z,Person1), aunt(Z,Person2).
blood(Person1,Person2):- ancestor(Z,Person1), ancestor(Z,Person2).
blood(Person1,Person2):- niece(Z,Person1), niece(Z,Person2).
blood(Person1,Person2):- nephew(Z,Person1), nephew(Z,Person2).



mother_in_law(Parent,Z) :- mother(Parent,Q) ,married(Q,Z).
fatherInLaw(Parent,Z) :- father(Parent,Q) ,married(Q,Z).
son_in_law(X,Z) :- married(X,Y) ,daughter(Y,Z).
daughter_in_law(X,Z) :- married(X,Y) ,son(Y,Z).
brother_in_law(X,Z) :- brother(X,Y) ,married(Y,Z).
brother_in_law(X,Z) :- husband(X,Y) ,sibling(Y,Z).
sister_in_law(S1,Parent) :- sister(S1,Y) ,married(Y,Parent).
sister_in_law(X,Z) :- wife(X,Y) ,sibling(Y,Z).