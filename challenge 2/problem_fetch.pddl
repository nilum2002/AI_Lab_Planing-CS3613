(define (problem get-treat-to-roomA) (:domain fetch-robot)
(:objects 
    roomA roomB roomC roomD - room
    t - treat

)

(:init
    ;todo: put the initial state's facts and numeric values here
    (robot-at roomA)
    (connected roomA roomB)
    (connected roomB roomA)
    (connected roomA roomC)
    (connected roomC roomA)
    (connected roomC roomD)
    (connected roomD roomC)
    (connected roomD roomB)
    (connected roomB roomD)
    (treat-at t roomD)

)

(:goal (and
    ;todo: put the goal condition here
    (robot-at roomA)
    (treat-at t roomA)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
