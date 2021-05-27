(define (domain do-egg)
    (:predicates (oil-hot)
             (have-oil)
             (stove-on)
             (fried-egg)
             (have-egg)
             (have-frying-pan)
             (frying-pan-hot)
             (eggOnDish)
             (eggs ?x)
             (oil ?x)
             (dish ?x)
             (frying-pan ?x)    )


    (:action get-frying-pan
        :parameters (?x)
        :precondition (and (frying-pan ?x))
        :effect (have-frying-pan)
    )
    
    
    (:action put-frying-pan
            :parameters ()
            :precondition (and (stove-on) (have-frying-pan))
            :effect (frying-pan-hot)
    )

    (:action getOil
        :parameters (?x)
        :precondition (oil ?x)
        :effect (have-oil)
    )

    (:action putOil
        :parameters ()
        :precondition (and (have-oil) (frying-pan-hot))
        :effect (and (oil-hot))
    )

    (:action getEgg
        :parameters (?x)
        :precondition (eggs ?x)
        :effect (have-egg)
    )
    
    (:action putEgg
        :parameters ()
        :precondition (and (oil-hot) (have-egg))
        :effect (fried-egg)
    )

    (:action getDish
        :parameters (?x)
        :precondition (and (dish ?x))
        :effect (and (have-dish))
    )

    (:action serve-egg
        :parameters ()
        :precondition (and (have-dish) (fried-egg))
        :effect (and (eggOnDish))
    )
    
)