(define (problem move-robot-roomA-to-roomD) 
    (:domain  robot-move-4-grid)
(:objects 
    roomA roomB roomC roomD - room

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
)

(:goal (and
    ;todo: put the goal condition here
    (robot-at roomD)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
