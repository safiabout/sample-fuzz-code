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