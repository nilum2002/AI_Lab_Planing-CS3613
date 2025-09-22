;Header and description

(define (domain wumpus-world)

    ;remove requirements that are not needed
    (:requirements :strips :typing :negative-preconditions)

    (:types
        cell;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
        )

    ; un-comment following line if constants are needed
    ;(:constants )

    (:predicates ;todo: define predicates here
        (agent-at ?c - cell)
        (wumpus-at ?c - cell)
        (pit-at ?c - cell)
        (gold-at ?c - cell)
        (has-gold)
        (adjacent ?c1 - cell ?c2 - cell)
    )
    (:action move
        :parameters (?from - cell ?to - cell)
        :precondition (and (adjacent ?from ?to) (agent-at ?from)
            (not( pit-at ?to))
            (not(wumpus-at ?to)))
        :effect (and (agent-at ?to) (not(agent-at ?from)))
    )
    (:action pickup
        :parameters (?loc - cell)
        :precondition (and (agent-at ?loc) (gold-at ?loc))
        :effect (and (has-gold) (not (gold-at ?loc)))
    )
)