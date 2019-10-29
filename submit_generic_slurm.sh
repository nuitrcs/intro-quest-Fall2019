#!/bin/bash
#SBATCH --account <allocationID>  ## <-- EDIT THIS TO BE YOUR ALLOCATION 
#SBATCH --partition <queue_type>  ## <-- EDIT THIS TO BE YOUR QUEUE NAME
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=00:10:00
#SBATCH --mem-per-cpu=1G
#SBATCH --job-name=sample_job
#SBATCH --output=outlog
#SBATCH --error=errlog

module purge all                ## Unload existing modules
module load python  		## Load necessary modules (software, libraries)

bash whereami.sh                ## Run the program
python helloworld.py      	## Run the program
