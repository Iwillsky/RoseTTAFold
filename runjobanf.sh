#!/bin/bash
#SBATCH -o job%j.out
#SBATCH --job-name=RosettaOnAzure
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=96G
#SBATCH --gres=gpu:1
JOBID=$1 #$SLURM_ARRAY_JOB_ID
WORKDIR=/volanf/RoseTTAFold

$WORKDIR/run_pyrosetta_hpc.sh $WORKDIR/input.fa $WORKDIR $JOBID 16 96
#$WORKDIR/run_e2e_hpc.sh $WORKDIR/input.fa $WORKDIR $JOBID 16 96
