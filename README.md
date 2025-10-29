# Setup
* Ensure Docker is installed and opened and the github repo [AFLplusplus](https://github.com/AFLplusplus/AFLplusplus) is cloned
* Go to the github repo [Fuzzing-Module](https://github.com/alex-maleno/Fuzzing-Module/blob/main/README.md) and follow the instructions at `Phase 2: The First Fuzz`

# Gathering Time to Crash and Line of Crash Info
* Navigate to the crash reports located in the `out` directory and reccord any crashes found
    * e.g. id:000000,sig:06,src:000000,time:39,execs:31,op:havoc,rep:6
* After running the fuzzer, navigate to the executable file in the `build` directory then run `gdb ./[name of executable file]`
* Then in gdb, run `run < /path/to/crash/directory/id:000000,sig:06,src:000000,time:39,execs:31,op:havoc,rep:6`
* Then run `bt` to get the backtrace and see the line where the code crashed with that specific input
* To see the input itself, run the following:
    * `CRASH=/path/to/crash/directory/id:000000,sig:06,src:000000,time:39,execs:31,op:havoc,rep:6`
    * `strings "$CRASH" | sed -n '1,40p'` or `od -An -tx1 -c "$CRASH" | head -n 40`

# Notes for Demo

## AFLplusplus Notes
* [notion board with stack traces and times for crashes](https://www.notion.so/Data-For-AFL-Test-C-Programs-28ff0e66e1f180a2bdfac4da6a7278cf?source=copy_link)
```
docker pull aflplusplus/aflplusplus
docker ps
docker commit [container id] 
docker run -it --rm --name afl_small_example -v /Users/safiaboutaleb/Developer/code-to-fuzz:/src [SHA256 hash]

mkdir build
cd build
CC=/AFLplusplus/afl-clang-fast CXX=/AFLplusplus/afl-clang-fast++ cmake .. (Add AFL++ tooling to the compiler for executable)
make

cd ..
mkdir seeds
for i in {0..4}; do dd if=/dev/urandom of=seed_$i bs=64 count=10; done
cd ..
cd build

/AFLplusplus/afl-fuzz -i /src/test1/seeds -o out -m none -d -- /src/test1/build/test1_crash

gdb --args ./test1_crash
(inside gbd) (gdb) run < /src/test1/build/out/default/crashes/[example crash] [id:000000,sig:06,src:000002,time:43,execs:48,op:havoc,rep:4]
bt
```

## KLEE Notes
```
docker pull klee/klee
docker run --rm -it -v /Users/safiaboutaleb/Developer/code-to-fuzz:/src klee/klee /bin/bash

clang -I. -g -emit-llvm -c test1_klee_harness.c -o test1_klee_harness.bc

klee --libc=uclibc --posix-runtime \
--use-query-log=all:smt2 \
--use-query-log=solver:smt2 \
--output-dir=klee-out \
test1_klee_harness.bc

inspecting results:
ls -la klee-out
ktest-tool klee-out/test000001.ktest

to view path constraints:
(using less)
sudo apt update
sudo apt install less

less klee-out/all-queries.smt2

```

```
KLEE explored 5 complete paths (fully explored executions), and generated 7 total test cases:

KLEE: done: total instructions = 13800
KLEE: done: completed paths = 5
KLEE: done: partially completed paths = 5
KLEE: done: generated tests = 7

It also encountered some aborts:

KLEE: ERROR: test1_klee_harness.c:21: abort failure
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: test1_klee_harness.c:12: abort failure
KLEE: NOTE: now ignoring this error at this location

Output Directory:
```

| File | Purpose |
|---|---|
| test00000N.ktest | test case file with concrete input values for symbolic variables |
| test00000N.abort.err | stderr output for that test (the aborts) |
| all-queries.smt2 | every SMT constraint KLEE sent to the solver |
| solver-queries.smt2 |	only the ones that actually reached the solver |
| run.stats	| summary of stats |
| messages.txt | log of warnings and notes |

```
when running ktest-tool klee-out/test000001.ktest:

ktest file : 'klee-out/test000001.ktest'
args       : ['test1_klee_harness.bc']
num objects: 3
object 0: name: 'r'
object 0: size: 8
object 0: data: b'\x05\x00\x00\x00\x00\x00\x00\x00'
object 0: hex : 0x0500000000000000
object 0: int : 5
object 0: uint: 5
object 0: text: ........
object 1: name: 'a'
object 1: size: 4
object 1: data: b'\xff\xff\xff\x7f'
object 1: hex : 0xffffff7f
object 1: int : 2147483647
object 1: uint: 2147483647
object 1: text: ....
object 2: name: 'b'
object 2: size: 4
object 2: data: b'\xff\xff\xff\x7f'
object 2: hex : 0xffffff7f
object 2: int : 2147483647
object 2: uint: 2147483647
object 2: text: ....

when running `less klee-out/all-queries.smt2`, it showed SMT-LIB formulas:

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
```

### Acheived with KLEE

Compiled harness into LLVM bitcode.

Ran KLEE symbolic execution on it.

Generated multiple concrete test cases.

Inspected both solver queries and model values.

### Next Steps with KLEE

Symbolic Fuzzing (can use these .ktest inputs to replay tests or use them as regular input files)

Code Coverage (can check .istats and .stats files for how many instructions or branches were covered)

