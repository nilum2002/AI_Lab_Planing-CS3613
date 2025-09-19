(define (problem move-robot-roomA-to-roomB) 
    (:domain robot-move)
    (:objects 
        roomA roomB - room
    )

(:init
    ;todo: put the initial state's facts and numeric values here
    (robot-at roomA)
    (connected roomA roomB)
    (connected roomB roomA)
)

(:goal (and
    ;todo: put the goal condition here
    (robot-at roomB)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
