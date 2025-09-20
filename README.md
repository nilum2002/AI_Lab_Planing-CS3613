About the PDDL syntax:<br>

In PDDL there are two files called "domain" and "problem"
## The Domain file contains the domain definition. It defines the universal aspects of the problem. This basically includes the requirements, types, predicates and action

  01.Requirements are similar to import/include statements in programming languages, however as PDDL is a kind of declarative language, it is a :requirement as a given planner is “required” to facilitate some aspect of the language.

  02.Predicates apply to a specific type of object, or to all objects. Predicates are either true or false at any point in a plan and when not declared are assumed to be false (except when the Open World Assumption is included as a requirement)

  03.An action defines a transformation the state of the world. This transformation is typically an action which could be performed in the execution of the plan, such as picking up an object, constructing something or some other change.An action is broken down into three distinct sections, with an alternation possible on the last section.
  The first is the :parameters section which defines the things we are performing an action on and subsequently what predicates we will be checking and manipulating later.
  The second is the :precondition section. These are typically a series of predicate conjunctions and disjunctions which must be satisfied in order for the action the applied. Note that although an action’s precondition may be satisfied that doesn’t mean it is applied in a plan. Ultimately it is the effect the action has that matters.
  The third section is a choice between :effect and :expansion an action cannot have both. Most domains use :effect. No details are provided of how to use :expansion as not enough planners support it.

## The problem file contains the planing
01.It has problem name <br>
02.Domain (the doamin that declared before)<br>
03.Objects (Objects in the problem)<br>
04.init (Initial state of the problem)<br>
05.goal (the goal condition is here)

Try to run this on VSCode. This youtube playlist will help you ! [click here](https://youtu.be/_NOVa4i7Us8?si=eW1UW2okvmrFEdwp)

For more details please go to the [link](https://planning.wiki/ref/pddl/domain) here! <br>

Good Luck !




          

    
