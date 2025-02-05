#PBS -l select=1:ngpus=1
#PBS -l walltime=336:00:00

module load gcc
module load python
module load cuda/tools
module load cudnn/5.1

export PATH="/mnt/nfs/home/lpfgarcia/conda/bin:$PATH"

cd /mnt/nfs/home/lpfgarcia/kge/

DEVICE=cuda0 python run.py --model $model --data $data --k $k --epoch $epoch > $model.$data.$k.$epoch.log
