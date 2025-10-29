; Query 0 -- Type: Truth, Instructions: 13322
(set-logic QF_AUFBV )
(declare-fun r () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (bvule  (concat  (select  r (_ bv7 32) ) (concat  (select  r (_ bv6 32) ) (concat  (select  r (_ bv5 32) ) (concat  (select  r (_ bv4 32) ) (concat  (select  r (_ bv3 32) ) (concat  (select  r (_ bv2 32) ) (concat  (select  r (_ bv1 32) ) (select  r (_ bv0 32) ) ) ) ) ) ) ) ) (_ bv8 64) ) )
(check-sat)
(exit)
;   OK -- Elapsed: 4.709720e-02s
;   Is Valid: false

; Query 1 -- Type: Validity, Instructions: 13329
(set-logic QF_AUFBV )
(declare-fun r () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  r (_ bv7 32) ) (concat  (select  r (_ bv6 32) ) (concat  (select  r (_ bv5 32) ) (concat  (select  r (_ bv4 32) ) (concat  (select  r (_ bv3 32) ) (concat  (select  r (_ bv2 32) ) (concat  (select  r (_ bv1 32) ) (select  r (_ bv0 32) ) ) ) ) ) ) ) ) ) ) (and  (=  false (bvule  ?B1 (_ bv4 64) ) ) (bvule  ?B1 (_ bv8 64) ) ) ) )
(check-sat)
(exit)
;   OK -- Elapsed: 3.618892e-02s
;   Validity: 0

; Query 2 -- Type: Validity, Instructions: 13345
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun r () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  r (_ bv7 32) ) (concat  (select  r (_ bv6 32) ) (concat  (select  r (_ bv5 32) ) (concat  (select  r (_ bv4 32) ) (concat  (select  r (_ bv3 32) ) (concat  (select  r (_ bv2 32) ) (concat  (select  r (_ bv1 32) ) (select  r (_ bv0 32) ) ) ) ) ) ) ) ) ) ) (and  (and  (=  false (bvslt  (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) (_ bv100 32) ) ) (bvule  ?B1 (_ bv8 64) ) ) (=  false (bvule  ?B1 (_ bv4 64) ) ) ) ) )
(check-sat)
(exit)
;   OK -- Elapsed: 7.773515e-02s
;   Validity: 0

; Query 3 -- Type: Validity, Instructions: 13357
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun r () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  r (_ bv7 32) ) (concat  (select  r (_ bv6 32) ) (concat  (select  r (_ bv5 32) ) (concat  (select  r (_ bv4 32) ) (concat  (select  r (_ bv3 32) ) (concat  (select  r (_ bv2 32) ) (concat  (select  r (_ bv1 32) ) (select  r (_ bv0 32) ) ) ) ) ) ) ) ) ) ) (and  (and  (=  false (bvslt  (_ bv1 32) (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (bvule  ?B1 (_ bv8 64) ) ) (bvule  ?B1 (_ bv4 64) ) ) ) )
(check-sat)
(exit)
;   OK -- Elapsed: 2.919337e-02s
;   Validity: 0

; Query 4 -- Type: Validity, Instructions: 13361
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun b () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun r () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  r (_ bv7 32) ) (concat  (select  r (_ bv6 32) ) (concat  (select  r (_ bv5 32) ) (concat  (select  r (_ bv4 32) ) (concat  (select  r (_ bv3 32) ) (concat  (select  r (_ bv2 32) ) (concat  (select  r (_ bv1 32) ) (select  r (_ bv0 32) ) ) ) ) ) ) ) ) ) ) (and  (and  (and  (=  false (bvslt  (_ bv3 32) (concat  (select  b (_ bv3 32) ) (concat  (select  b (_ bv2 32) ) (concat  (select  b (_ bv1 32) ) (select  b (_ bv0 32) ) ) ) ) ) ) (bvule  ?B1 (_ bv8 64) ) ) (=  false (bvule  ?B1 (_ bv4 64) ) ) ) (=  false (bvslt  (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) (_ bv100 32) ) ) ) ) )
(check-sat)
(exit)
;   OK -- Elapsed: 2.890519e-02s
;   Validity: 0

; Query 5 -- Type: Validity, Instructions: 13362
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun r () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  r (_ bv7 32) ) (concat  (select  r (_ bv6 32) ) (concat  (select  r (_ bv5 32) ) (concat  (select  r (_ bv4 32) ) (concat  (select  r (_ bv3 32) ) (concat  (select  r (_ bv2 32) ) (concat  (select  r (_ bv1 32) ) (select  r (_ bv0 32) ) ) ) ) ) ) ) ) ) (?B2 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (=  false (bvslt  (_ bv1 32) ?B2 ) ) (bvule  ?B1 (_ bv8 64) ) ) (=  false (bvule  ?B1 (_ bv4 64) ) ) ) (bvslt  ?B2 (_ bv100 32) ) ) ) )
(check-sat)
(exit)
;   OK -- Elapsed: 4.293288e-02s
;   Validity: 0

; Query 6 -- Type: InitialValues, Instructions: 13363
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun b () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun r () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  r (_ bv7 32) ) (concat  (select  r (_ bv6 32) ) (concat  (select  r (_ bv5 32) ) (concat  (select  r (_ bv4 32) ) (concat  (select  r (_ bv3 32) ) (concat  (select  r (_ bv2 32) ) (concat  (select  r (_ bv1 32) ) (select  r (_ bv0 32) ) ) ) ) ) ) ) ) ) ) (and  (and  (and  (bvule  ?B1 (_ bv8 64) ) (=  false (bvule  ?B1 (_ bv4 64) ) ) ) (=  false (bvslt  (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) (_ bv100 32) ) ) ) (bvslt  (_ bv3 32) (concat  (select  b (_ bv3 32) ) (concat  (select  b (_ bv2 32) ) (concat  (select  b (_ bv1 32) ) (select  b (_ bv0 32) ) ) ) ) ) ) ) )
(check-sat)
(get-value ( (select r (_ bv0 32) ) ) )
(get-value ( (select r (_ bv1 32) ) ) )
(get-value ( (select r (_ bv2 32) ) ) )
(get-value ( (select r (_ bv3 32) ) ) )
(get-value ( (select r (_ bv4 32) ) ) )
(get-value ( (select r (_ bv5 32) ) ) )
(get-value ( (select r (_ bv6 32) ) ) )
(get-value ( (select r (_ bv7 32) ) ) )
(get-value ( (select a (_ bv0 32) ) ) )
(get-value ( (select a (_ bv1 32) ) ) )
(get-value ( (select a (_ bv2 32) ) ) )
(get-value ( (select a (_ bv3 32) ) ) )
(get-value ( (select b (_ bv0 32) ) ) )
(get-value ( (select b (_ bv1 32) ) ) )
(get-value ( (select b (_ bv2 32) ) ) )
(get-value ( (select b (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 6.211400e-05s
;   Solvable: true
;     r = [5,0,0,0,0,0,0,0]
;     a = [255,255,255,127]
;     b = [255,255,255,127]

; Query 7 -- Type: Validity, Instructions: 13366
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun r () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  r (_ bv7 32) ) (concat  (select  r (_ bv6 32) ) (concat  (select  r (_ bv5 32) ) (concat  (select  r (_ bv4 32) ) (concat  (select  r (_ bv3 32) ) (concat  (select  r (_ bv2 32) ) (concat  (select  r (_ bv1 32) ) (select  r (_ bv0 32) ) ) ) ) ) ) ) ) ) (?B2 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (=  false (bvslt  (_ bv10 32) ?B2 ) ) (bvule  ?B1 (_ bv8 64) ) ) (bvule  ?B1 (_ bv4 64) ) ) (=  false (bvslt  (_ bv1 32) ?B2 ) ) ) ) )
(check-sat)
(exit)
;   OK -- Elapsed: 3.220087e-02s
;   Validity: -1

; Query 8 -- Type: Validity, Instructions: 13393
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun r () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  r (_ bv7 32) ) (concat  (select  r (_ bv6 32) ) (concat  (select  r (_ bv5 32) ) (concat  (select  r (_ bv4 32) ) (concat  (select  r (_ bv3 32) ) (concat  (select  r (_ bv2 32) ) (concat  (select  r (_ bv1 32) ) (select  r (_ bv0 32) ) ) ) ) ) ) ) ) ) (?B2 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (=  false (bvslt  (_ bv10 32) (bvmul  (_ bv2 32) ?B2 ) ) ) (bvule  ?B1 (_ bv8 64) ) ) (=  false (bvule  ?B1 (_ bv4 64) ) ) ) (bvslt  ?B2 (_ bv100 32) ) ) (bvslt  (_ bv1 32) ?B2 ) ) ) )
(check-sat)
(exit)
;   OK -- Elapsed: 4.117559e-02s
;   Validity: 0

; Query 9 -- Type: Validity, Instructions: 13395
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun r () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  r (_ bv7 32) ) (concat  (select  r (_ bv6 32) ) (concat  (select  r (_ bv5 32) ) (concat  (select  r (_ bv4 32) ) (concat  (select  r (_ bv3 32) ) (concat  (select  r (_ bv2 32) ) (concat  (select  r (_ bv1 32) ) (select  r (_ bv0 32) ) ) ) ) ) ) ) ) ) (?B2 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (=  false (bvslt  (_ bv10 32) ?B2 ) ) (bvule  ?B1 (_ bv8 64) ) ) (=  false (bvule  ?B1 (_ bv4 64) ) ) ) (bvslt  ?B2 (_ bv100 32) ) ) (=  false (bvslt  (_ bv1 32) ?B2 ) ) ) ) )
(check-sat)
(exit)
;   OK -- Elapsed: 3.844100e-05s
;   Validity: -1

; Query 10 -- Type: InitialValues, Instructions: 13402
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun b () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun r () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  r (_ bv7 32) ) (concat  (select  r (_ bv6 32) ) (concat  (select  r (_ bv5 32) ) (concat  (select  r (_ bv4 32) ) (concat  (select  r (_ bv3 32) ) (concat  (select  r (_ bv2 32) ) (concat  (select  r (_ bv1 32) ) (select  r (_ bv0 32) ) ) ) ) ) ) ) ) ) (?B2 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (bvule  ?B1 (_ bv8 64) ) (=  false (bvule  ?B1 (_ bv4 64) ) ) ) (bvslt  ?B2 (_ bv100 32) ) ) (bvslt  (_ bv1 32) ?B2 ) ) (bvslt  (_ bv10 32) (bvmul  (_ bv2 32) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select r (_ bv0 32) ) ) )
(get-value ( (select r (_ bv1 32) ) ) )
(get-value ( (select r (_ bv2 32) ) ) )
(get-value ( (select r (_ bv3 32) ) ) )
(get-value ( (select r (_ bv4 32) ) ) )
(get-value ( (select r (_ bv5 32) ) ) )
(get-value ( (select r (_ bv6 32) ) ) )
(get-value ( (select r (_ bv7 32) ) ) )
(get-value ( (select a (_ bv0 32) ) ) )
(get-value ( (select a (_ bv1 32) ) ) )
(get-value ( (select a (_ bv2 32) ) ) )
(get-value ( (select a (_ bv3 32) ) ) )
(get-value ( (select b (_ bv0 32) ) ) )
(get-value ( (select b (_ bv1 32) ) ) )
(get-value ( (select b (_ bv2 32) ) ) )
(get-value ( (select b (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 7.846800e-05s
;   Solvable: true
;     r = [5,0,0,0,0,0,0,0]
;     a = [6,0,0,0]
;     b = [0,0,0,0]

; Query 11 -- Type: Validity, Instructions: 13403
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun r () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  r (_ bv7 32) ) (concat  (select  r (_ bv6 32) ) (concat  (select  r (_ bv5 32) ) (concat  (select  r (_ bv4 32) ) (concat  (select  r (_ bv3 32) ) (concat  (select  r (_ bv2 32) ) (concat  (select  r (_ bv1 32) ) (select  r (_ bv0 32) ) ) ) ) ) ) ) ) ) (?B2 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (=  false (bvslt  (_ bv10 32) (bvmul  (_ bv2 32) ?B2 ) ) ) (bvule  ?B1 (_ bv8 64) ) ) (bvule  ?B1 (_ bv4 64) ) ) (bvslt  (_ bv1 32) ?B2 ) ) ) )
(check-sat)
(exit)
;   OK -- Elapsed: 3.245129e-02s
;   Validity: 0

; Query 12 -- Type: Validity, Instructions: 13415
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun b () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun r () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  r (_ bv7 32) ) (concat  (select  r (_ bv6 32) ) (concat  (select  r (_ bv5 32) ) (concat  (select  r (_ bv4 32) ) (concat  (select  r (_ bv3 32) ) (concat  (select  r (_ bv2 32) ) (concat  (select  r (_ bv1 32) ) (select  r (_ bv0 32) ) ) ) ) ) ) ) ) ) (?B2 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (and  (=  false (bvslt  (_ bv3 32) (concat  (select  b (_ bv3 32) ) (concat  (select  b (_ bv2 32) ) (concat  (select  b (_ bv1 32) ) (select  b (_ bv0 32) ) ) ) ) ) ) (bvule  ?B1 (_ bv8 64) ) ) (=  false (bvule  ?B1 (_ bv4 64) ) ) ) (bvslt  ?B2 (_ bv100 32) ) ) (bvslt  (_ bv1 32) ?B2 ) ) (=  false (bvslt  (_ bv10 32) (bvmul  (_ bv2 32) ?B2 ) ) ) ) ) )
(check-sat)
(exit)
;   OK -- Elapsed: 2.150700e-05s
;   Validity: 0

; Query 13 -- Type: Validity, Instructions: 13453
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun b () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun r () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  r (_ bv7 32) ) (concat  (select  r (_ bv6 32) ) (concat  (select  r (_ bv5 32) ) (concat  (select  r (_ bv4 32) ) (concat  (select  r (_ bv3 32) ) (concat  (select  r (_ bv2 32) ) (concat  (select  r (_ bv1 32) ) (select  r (_ bv0 32) ) ) ) ) ) ) ) ) ) (?B2 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (=  false (bvslt  (_ bv3 32) (concat  (select  b (_ bv3 32) ) (concat  (select  b (_ bv2 32) ) (concat  (select  b (_ bv1 32) ) (select  b (_ bv0 32) ) ) ) ) ) ) (bvule  ?B1 (_ bv8 64) ) ) (=  false (bvule  ?B1 (_ bv4 64) ) ) ) (bvslt  ?B2 (_ bv100 32) ) ) (=  false (bvslt  (_ bv1 32) ?B2 ) ) ) ) )
(check-sat)
(exit)
;   OK -- Elapsed: 1.583900e-05s
;   Validity: 0

; Query 14 -- Type: InitialValues, Instructions: 13706
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun b () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun r () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  r (_ bv7 32) ) (concat  (select  r (_ bv6 32) ) (concat  (select  r (_ bv5 32) ) (concat  (select  r (_ bv4 32) ) (concat  (select  r (_ bv3 32) ) (concat  (select  r (_ bv2 32) ) (concat  (select  r (_ bv1 32) ) (select  r (_ bv0 32) ) ) ) ) ) ) ) ) ) ) (and  (and  (bvule  ?B1 (_ bv8 64) ) (bvule  ?B1 (_ bv4 64) ) ) (=  false (bvslt  (_ bv1 32) (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) ) ) )
(check-sat)
(get-value ( (select r (_ bv0 32) ) ) )
(get-value ( (select r (_ bv1 32) ) ) )
(get-value ( (select r (_ bv2 32) ) ) )
(get-value ( (select r (_ bv3 32) ) ) )
(get-value ( (select r (_ bv4 32) ) ) )
(get-value ( (select r (_ bv5 32) ) ) )
(get-value ( (select r (_ bv6 32) ) ) )
(get-value ( (select r (_ bv7 32) ) ) )
(get-value ( (select a (_ bv0 32) ) ) )
(get-value ( (select a (_ bv1 32) ) ) )
(get-value ( (select a (_ bv2 32) ) ) )
(get-value ( (select a (_ bv3 32) ) ) )
(get-value ( (select b (_ bv0 32) ) ) )
(get-value ( (select b (_ bv1 32) ) ) )
(get-value ( (select b (_ bv2 32) ) ) )
(get-value ( (select b (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 4.667600e-05s
;   Solvable: true
;     r = [0,0,0,0,0,0,0,0]
;     a = [0,0,0,0]
;     b = [0,0,0,0]

; Query 15 -- Type: InitialValues, Instructions: 13731
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun b () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun r () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  r (_ bv7 32) ) (concat  (select  r (_ bv6 32) ) (concat  (select  r (_ bv5 32) ) (concat  (select  r (_ bv4 32) ) (concat  (select  r (_ bv3 32) ) (concat  (select  r (_ bv2 32) ) (concat  (select  r (_ bv1 32) ) (select  r (_ bv0 32) ) ) ) ) ) ) ) ) ) (?B2 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (bvule  ?B1 (_ bv8 64) ) (bvule  ?B1 (_ bv4 64) ) ) (bvslt  (_ bv1 32) ?B2 ) ) (=  false (bvslt  (_ bv10 32) (bvmul  (_ bv2 32) ?B2 ) ) ) ) ) )
(check-sat)
(get-value ( (select r (_ bv0 32) ) ) )
(get-value ( (select r (_ bv1 32) ) ) )
(get-value ( (select r (_ bv2 32) ) ) )
(get-value ( (select r (_ bv3 32) ) ) )
(get-value ( (select r (_ bv4 32) ) ) )
(get-value ( (select r (_ bv5 32) ) ) )
(get-value ( (select r (_ bv6 32) ) ) )
(get-value ( (select r (_ bv7 32) ) ) )
(get-value ( (select a (_ bv0 32) ) ) )
(get-value ( (select a (_ bv1 32) ) ) )
(get-value ( (select a (_ bv2 32) ) ) )
(get-value ( (select a (_ bv3 32) ) ) )
(get-value ( (select b (_ bv0 32) ) ) )
(get-value ( (select b (_ bv1 32) ) ) )
(get-value ( (select b (_ bv2 32) ) ) )
(get-value ( (select b (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 6.226700e-05s
;   Solvable: true
;     r = [0,0,0,0,0,0,0,0]
;     a = [255,255,255,127]
;     b = [0,0,0,0]

; Query 16 -- Type: InitialValues, Instructions: 13736
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun b () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun r () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  r (_ bv7 32) ) (concat  (select  r (_ bv6 32) ) (concat  (select  r (_ bv5 32) ) (concat  (select  r (_ bv4 32) ) (concat  (select  r (_ bv3 32) ) (concat  (select  r (_ bv2 32) ) (concat  (select  r (_ bv1 32) ) (select  r (_ bv0 32) ) ) ) ) ) ) ) ) ) ) (and  (and  (and  (bvule  ?B1 (_ bv8 64) ) (=  false (bvule  ?B1 (_ bv4 64) ) ) ) (=  false (bvslt  (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) (_ bv100 32) ) ) ) (=  false (bvslt  (_ bv3 32) (concat  (select  b (_ bv3 32) ) (concat  (select  b (_ bv2 32) ) (concat  (select  b (_ bv1 32) ) (select  b (_ bv0 32) ) ) ) ) ) ) ) ) )
(check-sat)
(get-value ( (select r (_ bv0 32) ) ) )
(get-value ( (select r (_ bv1 32) ) ) )
(get-value ( (select r (_ bv2 32) ) ) )
(get-value ( (select r (_ bv3 32) ) ) )
(get-value ( (select r (_ bv4 32) ) ) )
(get-value ( (select r (_ bv5 32) ) ) )
(get-value ( (select r (_ bv6 32) ) ) )
(get-value ( (select r (_ bv7 32) ) ) )
(get-value ( (select a (_ bv0 32) ) ) )
(get-value ( (select a (_ bv1 32) ) ) )
(get-value ( (select a (_ bv2 32) ) ) )
(get-value ( (select a (_ bv3 32) ) ) )
(get-value ( (select b (_ bv0 32) ) ) )
(get-value ( (select b (_ bv1 32) ) ) )
(get-value ( (select b (_ bv2 32) ) ) )
(get-value ( (select b (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 3.691800e-05s
;   Solvable: true
;     r = [5,0,0,0,0,0,0,0]
;     a = [255,255,255,127]
;     b = [0,0,0,0]

; Query 17 -- Type: InitialValues, Instructions: 13798
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun b () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun r () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  r (_ bv7 32) ) (concat  (select  r (_ bv6 32) ) (concat  (select  r (_ bv5 32) ) (concat  (select  r (_ bv4 32) ) (concat  (select  r (_ bv3 32) ) (concat  (select  r (_ bv2 32) ) (concat  (select  r (_ bv1 32) ) (select  r (_ bv0 32) ) ) ) ) ) ) ) ) ) (?B2 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (bvule  ?B1 (_ bv8 64) ) (=  false (bvule  ?B1 (_ bv4 64) ) ) ) (bvslt  ?B2 (_ bv100 32) ) ) (=  false (bvslt  (_ bv1 32) ?B2 ) ) ) (=  false (bvslt  (_ bv3 32) (concat  (select  b (_ bv3 32) ) (concat  (select  b (_ bv2 32) ) (concat  (select  b (_ bv1 32) ) (select  b (_ bv0 32) ) ) ) ) ) ) ) ) )
(check-sat)
(get-value ( (select r (_ bv0 32) ) ) )
(get-value ( (select r (_ bv1 32) ) ) )
(get-value ( (select r (_ bv2 32) ) ) )
(get-value ( (select r (_ bv3 32) ) ) )
(get-value ( (select r (_ bv4 32) ) ) )
(get-value ( (select r (_ bv5 32) ) ) )
(get-value ( (select r (_ bv6 32) ) ) )
(get-value ( (select r (_ bv7 32) ) ) )
(get-value ( (select a (_ bv0 32) ) ) )
(get-value ( (select a (_ bv1 32) ) ) )
(get-value ( (select a (_ bv2 32) ) ) )
(get-value ( (select a (_ bv3 32) ) ) )
(get-value ( (select b (_ bv0 32) ) ) )
(get-value ( (select b (_ bv1 32) ) ) )
(get-value ( (select b (_ bv2 32) ) ) )
(get-value ( (select b (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 4.591600e-05s
;   Solvable: true
;     r = [5,0,0,0,0,0,0,0]
;     a = [0,0,0,0]
;     b = [0,0,0,0]

; Query 18 -- Type: InitialValues, Instructions: 13800
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun b () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun r () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  r (_ bv7 32) ) (concat  (select  r (_ bv6 32) ) (concat  (select  r (_ bv5 32) ) (concat  (select  r (_ bv4 32) ) (concat  (select  r (_ bv3 32) ) (concat  (select  r (_ bv2 32) ) (concat  (select  r (_ bv1 32) ) (select  r (_ bv0 32) ) ) ) ) ) ) ) ) ) (?B2 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (and  (bvule  ?B1 (_ bv8 64) ) (=  false (bvule  ?B1 (_ bv4 64) ) ) ) (bvslt  ?B2 (_ bv100 32) ) ) (bvslt  (_ bv1 32) ?B2 ) ) (=  false (bvslt  (_ bv10 32) (bvmul  (_ bv2 32) ?B2 ) ) ) ) (=  false (bvslt  (_ bv3 32) (concat  (select  b (_ bv3 32) ) (concat  (select  b (_ bv2 32) ) (concat  (select  b (_ bv1 32) ) (select  b (_ bv0 32) ) ) ) ) ) ) ) ) )
(check-sat)
(get-value ( (select r (_ bv0 32) ) ) )
(get-value ( (select r (_ bv1 32) ) ) )
(get-value ( (select r (_ bv2 32) ) ) )
(get-value ( (select r (_ bv3 32) ) ) )
(get-value ( (select r (_ bv4 32) ) ) )
(get-value ( (select r (_ bv5 32) ) ) )
(get-value ( (select r (_ bv6 32) ) ) )
(get-value ( (select r (_ bv7 32) ) ) )
(get-value ( (select a (_ bv0 32) ) ) )
(get-value ( (select a (_ bv1 32) ) ) )
(get-value ( (select a (_ bv2 32) ) ) )
(get-value ( (select a (_ bv3 32) ) ) )
(get-value ( (select b (_ bv0 32) ) ) )
(get-value ( (select b (_ bv1 32) ) ) )
(get-value ( (select b (_ bv2 32) ) ) )
(get-value ( (select b (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 5.478500e-05s
;   Solvable: true
;     r = [5,0,0,0,0,0,0,0]
;     a = [2,0,0,0]
;     b = [0,0,0,0]

