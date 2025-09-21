;Header and description

(define (domain fetch-robot)

;remove requirements that are not needed
(:requirements :strips :typing)

(:types room treat ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here
    (robot-at ?r - room)
    (connected ?r1 - room ?r2 - room)
    (treat-at ?t - treat ?r - room)
    (holding ?t - treat )

)


(:action move
    :parameters (?from - room ?to - room)
    :precondition (and (robot-at ?from) (connected ?from ?to))
    :effect (and (not(robot-at ?from))(robot-at ?to))
)
(:action pickup
    :parameters (?t - treat ?r - room)
    :precondition (and (robot-at ?r ) (treat-at ?t ?r))
    :effect (and (holding ?t)(not (treat-at ?t ?r)))
)
(:action drop
    :parameters (?t - treat ?r - room)
    :precondition (and (robot-at ?r)(holding ?t))
    :effect (and (treat-at ?t ?r) (not (holding ?t)))
)


)
;define actions here

