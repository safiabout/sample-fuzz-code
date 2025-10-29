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

