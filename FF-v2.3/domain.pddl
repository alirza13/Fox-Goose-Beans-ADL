(define (domain FoxGooseBeans)
	(:requirements :adl)
	(:predicates (FOX ?x) (GOOSE ?x) (BEANS ?x) (FARMER ?x)
		(onLeftBank ?x))

	(:action cross :parameters (?x)
		:precondition (and 
			(GOOSE ?x) 
			(onLeftBank ?x)
			(onLeftBank farmer)
		)
		:effect (and 
			(not (onLeftBank ?x)) 
			(not (onLeftBank farmer))))

	(:action cross :parameters (?x)
		:precondition (and 
			(GOOSE ?x) 
			(not (onLeftBank ?x)) 
			(not (onLeftBank farmer))
		)
		:effect (and 
			(onLeftBank ?x) 
			(onLeftBank farmer)))

	(:action cross :parameters (?x)
		:precondition (and 
			(FOX ?x) 
			(onLeftBank ?x) 
			(onLeftBank farmer)
			(not (and (onLeftBank beans) (onLeftBank goose)))
		)
		:effect (and 
			(not (onLeftBank ?x))
			(not (onLeftBank farmer))))

	(:action cross :parameters (?x)
		:precondition (and 
			(FOX ?x) 
			(not (onLeftBank ?x)) 
			(not (onLeftBank farmer))
			(not (and (not (onLeftBank beans)) (not (onLeftBank goose))))
		)
		:effect (and 
			(onLeftBank ?x)
			(onLeftBank farmer)))

	(:action cross :parameters (?x)
		:precondition (and 
			(BEANS ?x) 
			(onLeftBank ?x) 
			(onLeftBank farmer)
			(not (and (onLeftBank fox) (onLeftBank goose)))
		)
		:effect (and 
			(not (onLeftBank ?x))
			(not (onLeftBank farmer))))

	(:action cross :parameters (?x)
		:precondition (and 
			(BEANS ?x) 
			(not (onLeftBank ?x)) 
			(not (onLeftBank farmer))
			(not (and (not (onLeftBank fox)) (not (onLeftBank goose))))
		)
		:effect (and 
			(onLeftBank ?x)
			(onLeftBank farmer)))

	(:action cross :parameters (?x)
		:precondition (and 
			(FARMER ?x) 
			(onLeftBank ?x)
                        (not (and (onLeftBank fox) (onLeftBank goose)))
                        (not (and (onLeftBank beans) (onLeftBank goose)))
                 )
		:effect (not (onLeftBank ?x)))

	(:action cross :parameters (?x)
		:precondition (and 
			(FARMER ?x) 
			(not (onLeftBank ?x))
                        (not (and (not (onLeftBank fox)) (not (onLeftBank goose))))
                        (not (and (not (onLeftBank beans)) (not (onLeftBank goose))))
                 )
		:effect (onLeftBank ?x))
)

         




