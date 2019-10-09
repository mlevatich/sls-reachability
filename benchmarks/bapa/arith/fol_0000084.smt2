(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_dc:C. forall a_db:A. c_dc + a_db + |~f| - 2n >= 1 or 1 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_dc () Int)
(assert (<= c_dc n))
(assert (>= c_dc 0))
(assert (>= (* 2 c_dc) (+ (- n t) 1)))

(declare-fun a_db () Int)
(assert (<= a_db n))
(assert (>= a_db 0))
(assert (>= a_db (- n t)))


(assert (and (< (- (+ (+ c_dc a_db) (card (setminus UNIVERALSET f))) (* 2 n)) 1) (> 1 0)))

(check-sat)
