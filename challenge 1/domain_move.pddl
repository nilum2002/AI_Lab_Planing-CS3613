;Header and description

(define (domain robot-move-4-grid)

;remove requirements that are not needed
(:requirements :strips :typing )

(:types room)

(:predicates ;todo: define predicates here
    (robot-at ?r - room)
    (connected ?r1 - room ?r2 - room)
)

(:action move
    :parameters (?from - room ?to - room)
    :precondition (and (robot-at ?from) (connected ?from ?to))
    :effect (and (not(robot-at ?from))(robot-at ?to))
)
)
