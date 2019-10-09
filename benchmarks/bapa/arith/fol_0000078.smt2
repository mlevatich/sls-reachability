(set-logic ALL_SUPPORTED)
(set-info :status unsat)

; forall c_ct:C. forall b_cs:B. forall a_cr:A. c_ct + b_cs + a_cr + |UNIVERALSET| - 3n >= 1 or 1 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_ct () Int)
(assert (<= c_ct n))
(assert (>= c_ct 0))
(assert (>= (* 2 c_ct) (+ (- n t) 1)))

(declare-fun b_cs () Int)
(assert (<= b_cs n))
(assert (>= b_cs 0))
(assert (>= (* 2 b_cs) (+ (+ n (* 3 t)) 1)))

(declare-fun a_cr () Int)
(assert (<= a_cr n))
(assert (>= a_cr 0))
(assert (>= a_cr (- n t)))


(assert (and (< (- (+ (+ (+ c_ct b_cs) a_cr) (card UNIVERALSET)) (* 3 n)) 1) (> 1 0)))

(check-sat)
