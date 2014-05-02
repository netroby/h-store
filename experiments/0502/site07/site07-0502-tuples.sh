#!/bin/sh
ant clean-java build-java
ant hstore-prepare -Dproject=microwinhstorefull -Dhosts="localhost:0:0"
ant hstore-prepare -Dproject=microwinhstorecleanup -Dhosts="localhost:0:0"
ant hstore-prepare -Dproject=microwinhstoresomecleanup -Dhosts="localhost:0:0"
ant hstore-prepare -Dproject=microwinhstorenocleanup -Dhosts="localhost:0:0"
ant hstore-prepare -Dproject=microwinsstore -Dhosts="localhost:0:0"
python ./tools/runexperiments.py --tmin 1 --tmax 1 --tstep 1 --rmin 1000 --rmax 25000 --rstep 2000 --stop --warmup 40000 -p microwinhstorefull -o "experiments/0502/site07/microwinhstorefull-1c-100w10s-0502.txt"
python ./tools/runexperiments.py --tmin 1 --tmax 1 --tstep 1 --rmin 1000 --rmax 25000 --rstep 2000 --stop --warmup 40000 -p microwinhstorecleanup -o "experiments/0502/site07/microwinhstorecleanup-1c-100w10s-0502.txt"
python ./tools/runexperiments.py --tmin 1 --tmax 1 --tstep 1 --rmin 1000 --rmax 25000 --rstep 2000 --stop --warmup 40000 -p microwinhstoresomecleanup -o "experiments/0502/site07/microwinhstoresomecleanup-1c-100w10s-0502.txt"
python ./tools/runexperiments.py --tmin 1 --tmax 1 --tstep 1 --rmin 1000 --rmax 25000 --rstep 2000 --stop --warmup 40000 -p microwinhstorenocleanup -o "experiments/0502/site07/microwinhstorenocleanup-1c-100w10s-0502.txt"
python ./tools/runexperiments.py --tmin 1 --tmax 1 --tstep 1 --rmin 1000 --rmax 25000 --rstep 2000 --stop --warmup 40000 -p microwinsstore -o "experiments/0502/site07/microwinsstore-1c-100w10s-0502.txt"
python ./tools/runexperiments.py --tmin 10 --tmax 10 --tstep 1 --rmin 100 --rmax 2500 --rstep 200 --stop --warmup 40000 -p microwinhstorefull -o "experiments/0502/site07/microwinhstorefull-10c-100w10s-0502.txt"
python ./tools/runexperiments.py --tmin 10 --tmax 10 --tstep 1 --rmin 100 --rmax 2500 --rstep 200 --stop --warmup 40000 -p microwinhstorecleanup -o "experiments/0502/site07/microwinhstorecleanup-10c-100w10s-0502.txt"
python ./tools/runexperiments.py --tmin 10 --tmax 10 --tstep 1 --rmin 100 --rmax 2500 --rstep 200 --stop --warmup 40000 -p microwinhstoresomecleanup -o "experiments/0502/site07/microwinhstoresomecleanup-10c-100w10s-0502.txt"
python ./tools/runexperiments.py --tmin 10 --tmax 10 --tstep 1 --rmin 100 --rmax 2500 --rstep 200 --stop --warmup 40000 -p microwinhstorenocleanup -o "experiments/0502/site07/microwinhstorenocleanup-10c-100w10s-0502.txt"
python ./tools/runexperiments.py --tmin 10 --tmax 10 --tstep 1 --rmin 100 --rmax 2500 --rstep 200 --stop --warmup 40000 -p microwinsstore -o "experiments/0502/site07/microwinsstore-10c-100w10s-0502.txt"
