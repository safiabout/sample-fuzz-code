; Query 0 -- Type: InitialValues, Instructions: 13322
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun r () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (bvule  (concat  (select  r (_ bv7 32) ) (concat  (select  r (_ bv6 32) ) (concat  (select  r (_ bv5 32) ) (concat  (select  r (_ bv4 32) ) (concat  (select  r (_ bv3 32) ) (concat  (select  r (_ bv2 32) ) (concat  (select  r (_ bv1 32) ) (select  r (_ bv0 32) ) ) ) ) ) ) ) ) (_ bv8 64) ) )
(check-sat)
(get-value ( (select r (_ bv0 32) ) ) )
(get-value ( (select r (_ bv1 32) ) ) )
(get-value ( (select r (_ bv2 32) ) ) )
(get-value ( (select r (_ bv3 32) ) ) )
(get-value ( (select r (_ bv4 32) ) ) )
(get-value ( (select r (_ bv5 32) ) ) )
(get-value ( (select r (_ bv6 32) ) ) )
(get-value ( (select r (_ bv7 32) ) ) )
(exit)
;   OK -- Elapsed: 4.528583e-02s
;   Solvable: true
;     r = [0,0,0,0,0,0,0,0]

; Query 1 -- Type: InitialValues, Instructions: 13329
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun r () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  r (_ bv7 32) ) (concat  (select  r (_ bv6 32) ) (concat  (select  r (_ bv5 32) ) (concat  (select  r (_ bv4 32) ) (concat  (select  r (_ bv3 32) ) (concat  (select  r (_ bv2 32) ) (concat  (select  r (_ bv1 32) ) (select  r (_ bv0 32) ) ) ) ) ) ) ) ) ) ) (and  (=  false (bvule  ?B1 (_ bv4 64) ) ) (bvule  ?B1 (_ bv8 64) ) ) ) )
(check-sat)
(get-value ( (select r (_ bv0 32) ) ) )
(get-value ( (select r (_ bv1 32) ) ) )
(get-value ( (select r (_ bv2 32) ) ) )
(get-value ( (select r (_ bv3 32) ) ) )
(get-value ( (select r (_ bv4 32) ) ) )
(get-value ( (select r (_ bv5 32) ) ) )
(get-value ( (select r (_ bv6 32) ) ) )
(get-value ( (select r (_ bv7 32) ) ) )
(exit)
;   OK -- Elapsed: 3.590700e-02s
;   Solvable: true
;     r = [5,0,0,0,0,0,0,0]

; Query 2 -- Type: InitialValues, Instructions: 13345
(set-logic QF_AUFBV )
(assert true )
(check-sat)
(exit)
;   OK -- Elapsed: 3.869791e-02s
;   Solvable: true

; Query 3 -- Type: InitialValues, Instructions: 13345
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  false (bvslt  (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) (_ bv100 32) ) ) )
(check-sat)
(get-value ( (select a (_ bv0 32) ) ) )
(get-value ( (select a (_ bv1 32) ) ) )
(get-value ( (select a (_ bv2 32) ) ) )
(get-value ( (select a (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 3.859279e-02s
;   Solvable: true
;     a = [255,255,255,127]

; Query 4 -- Type: InitialValues, Instructions: 13357
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (bvslt  (_ bv1 32) (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) )
(check-sat)
(get-value ( (select a (_ bv0 32) ) ) )
(get-value ( (select a (_ bv1 32) ) ) )
(get-value ( (select a (_ bv2 32) ) ) )
(get-value ( (select a (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 2.899070e-02s
;   Solvable: true
;     a = [255,255,255,127]

; Query 5 -- Type: InitialValues, Instructions: 13361
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun b () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (bvslt  (_ bv3 32) (concat  (select  b (_ bv3 32) ) (concat  (select  b (_ bv2 32) ) (concat  (select  b (_ bv1 32) ) (select  b (_ bv0 32) ) ) ) ) ) )
(check-sat)
(get-value ( (select b (_ bv0 32) ) ) )
(get-value ( (select b (_ bv1 32) ) ) )
(get-value ( (select b (_ bv2 32) ) ) )
(get-value ( (select b (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 2.849115e-02s
;   Solvable: true
;     b = [255,255,255,127]

; Query 6 -- Type: InitialValues, Instructions: 13362
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (bvslt  (_ bv1 32) ?B1 ) (bvslt  ?B1 (_ bv100 32) ) ) ) )
(check-sat)
(get-value ( (select a (_ bv0 32) ) ) )
(get-value ( (select a (_ bv1 32) ) ) )
(get-value ( (select a (_ bv2 32) ) ) )
(get-value ( (select a (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 4.249828e-02s
;   Solvable: true
;     a = [2,0,0,0]

; Query 7 -- Type: InitialValues, Instructions: 13366
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (bvslt  (_ bv10 32) ?B1 ) (=  false (bvslt  (_ bv1 32) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select a (_ bv0 32) ) ) )
(get-value ( (select a (_ bv1 32) ) ) )
(get-value ( (select a (_ bv2 32) ) ) )
(get-value ( (select a (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 3.197487e-02s
;   Solvable: false

; Query 8 -- Type: InitialValues, Instructions: 13393
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (and  (bvslt  (_ bv10 32) (bvmul  (_ bv2 32) ?B1 ) ) (bvslt  ?B1 (_ bv100 32) ) ) (bvslt  (_ bv1 32) ?B1 ) ) ) )
(check-sat)
(get-value ( (select a (_ bv0 32) ) ) )
(get-value ( (select a (_ bv1 32) ) ) )
(get-value ( (select a (_ bv2 32) ) ) )
(get-value ( (select a (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 4.079624e-02s
;   Solvable: true
;     a = [6,0,0,0]

; Query 9 -- Type: InitialValues, Instructions: 13403
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (bvslt  (_ bv10 32) (bvmul  (_ bv2 32) ?B1 ) ) (bvslt  (_ bv1 32) ?B1 ) ) ) )
(check-sat)
(get-value ( (select a (_ bv0 32) ) ) )
(get-value ( (select a (_ bv1 32) ) ) )
(get-value ( (select a (_ bv2 32) ) ) )
(get-value ( (select a (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 3.219098e-02s
;   Solvable: true
;     a = [6,0,0,0]

