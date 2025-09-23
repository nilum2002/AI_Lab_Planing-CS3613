(define (problem solve-wumpus-world) (:domain wumpus-world)
(:objects 
    c11 c12 c13 c14 c21 c22 c23 c24 c31 c32 c33 c34 c41 c42 c43 c44 - cell
    

)

(:init
    ;todo: put the initial state's facts and numeric values here
    (agent-at c11 )
    (wumpus-at c13)
    
    (pit-at c24)
    (pit-at c31)
    (pit-at c32)
    
    (gold-at c42)
    (adjacent c11 c12) (adjacent c12 c11)
    (adjacent c11 c21) (adjacent c21 c11)

    (adjacent c12 c13) (adjacent c13 c12)
    (adjacent c12 c22) (adjacent c22 c12)

    (adjacent c13 c14) (adjacent c14 c13)
    (adjacent c13 c23) (adjacent c23 c13)

    (adjacent c14 c24) (adjacent c24 c14)

    (adjacent c21 c22) (adjacent c22 c21)
    (adjacent c21 c31) (adjacent c31 c21)

    (adjacent c22 c23) (adjacent c23 c22)
    (adjacent c22 c32) (adjacent c32 c22)

    (adjacent c23 c24) (adjacent c24 c23)
    (adjacent c23 c33) (adjacent c33 c23)

    (adjacent c24 c34) (adjacent c34 c24)

    (adjacent c31 c32) (adjacent c32 c31)
    (adjacent c31 c41) (adjacent c41 c31)

    (adjacent c32 c33) (adjacent c33 c32)
    (adjacent c32 c42) (adjacent c42 c32)

    (adjacent c33 c34) (adjacent c34 c33)
    (adjacent c33 c43) (adjacent c43 c33)

    (adjacent c34 c44) (adjacent c44 c34)

    (adjacent c41 c42) (adjacent c42 c41)
    (adjacent c42 c43) (adjacent c43 c42)
    (adjacent c43 c44) (adjacent c44 c43)


)

(:goal (and
    ;todo: put the goal condition here
    (has-gold)
    (agent-at c11)
    
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
