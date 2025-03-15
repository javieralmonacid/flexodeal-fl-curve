#!/bin/bash
#SBATCH --job-name=flcurve-act_len
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=24
#SBATCH --mem=16G
#SBATCH --time=01:00:00
#SBATCH --output=flcurve-act_len-%A_%a.log
#SBATCH --error=flcurve-act_len-%A_%a.err
#SBATCH --array=1-25
./flexodeal -PARAMETERS=flexodeal-0.2.3/parameters.prm -ACTIVATION=control_points_activation_act_len.dat -BDY_STRAIN=strains_act_len/control_points_strain_${SLURM_ARRAY_TASK_ID}.dat -OUTPUT_DIR=strain_act_len_${SLURM_ARRAY_TASK_ID}