;; domain definition
(define (domain robot-move)
    (:requirements :strips :typing)
    (:types room)
   

    (:predicates
        (robot-at ?r - room)
        (connected ?rA - room ?rB - room)
    )

    (:action move
        :parameters (?from - room ?to - room)
        :precondition ( and (robot-at ?from) (connected ?from ?to))
        :effect (and (not (robot-at ?from)) (robot-at ?to))
    )
)