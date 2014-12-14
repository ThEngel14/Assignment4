#!/bin/sh 
#SBATCH -o /home/hpc/di34mur/TsunamiScenario.out 
#SBATCH -D /scratch/t1221/di34mur/SWE/build/
#SBATCH -J TsunamiScenario 
#SBATCH --get-user-env 
#SBATCH --partition=snb 
#SBATCH --ntasks=1 
#SBATCH --cpus-per-task=32 
#SBATCH --mail-type=end 
#SBATCH --mail-user=engelth@in.tum.de 
#SBATCH --export=NONE 
#SBATCH --time=00:30:00  

source /etc/profile.d/modules.sh  

srun ./SWE_intel_release_none_fwave -x 1000 -y 1000 -s 3 -c 10 -t 90 -o ../build/