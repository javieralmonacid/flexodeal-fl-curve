#!/bin/bash
#SBATCH --job-name=flcurve-len_act
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=24
#SBATCH --mem=16G
#SBATCH --time=01:00:00
#SBATCH --output=flcurve-len_act-%A_%a.log
#SBATCH --error=flcurve-len_act-%A_%a.err
#SBATCH --array=1-25
./flexodeal -PARAMETERS=parameters.prm -ACTIVATION=control_points_activation_len_act.dat -BDY_STRAIN=strains_len_act/control_points_strain_${SLURM_ARRAY_TASK_ID}.dat -OUTPUT_DIR=../apo_strain_len_act_${SLURM_ARRAY_TASK_ID}
