#!/bin/bash
#SBATCH -o job%j.out
#SBATCH --job-name=RosettaOnAzure
#SBATCH --nodes=1
#SBATCH --gres=gpu:1
## #SBATCH --ntasks=12
## #SBATCH --ntasks-per-node=4
JOBID=%j

/opt/RoseTTAFold/run_pyrosetta_ver.sh /shared/home/cycleadmin/input.fa /shared/home/cycleadmin/ $JOBID 8 64
#/opt/RoseTTAFold/run_e2e_ver.sh /shared/home/cycleadmin/input.fa /shared/home/cycleadmin/ $JOBID 8 64