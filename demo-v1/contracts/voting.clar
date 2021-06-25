
;; voting
;; <add a description here>

;; constants
(define-data-var candidate1 int 0)
(define-data-var candidate2 int 0)
(define-data-var allowvote int 1)
;;

;;(define-public (get-winner)
;;    (ok (if (is-eq (var-get candidate1) (var-get candidate2) 0 (if (> (var-get candidate1) (var-get candidate2)) 1 2)))))


(define-public (get-winner)
    (ok (if (is-eq (var-get candidate1) (var-get candidate2)) 0 (if (> (var-get candidate1) (var-get candidate2)) 1 2))))


(define-public (get-allow-vote)
    (ok (var-get allowvote)))

(define-public (vote-for-candidate1)
    (begin
        (var-set candidate1 (+ (var-get candidate1) (if (is-eq (var-get allowvote) 1) 1 0)))
        (ok (var-get candidate1))
    )
)

(define-public (vote-for-candidate2)
    (begin
        (var-set candidate2 (+ (var-get candidate2) (if (is-eq (var-get allowvote) 1) 1 0)))
        (ok (var-get candidate2))
    )
)

(define-public (close-vote)
    (begin
        (var-set allowvote 0)
        (ok (var-get allowvote))
    )
)