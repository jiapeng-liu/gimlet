#BSUB -q gpuqueue
#BSUB -J lipo
#BSUB -m "ld-gpu ls-gpu lt-gpu lp-gpu lg-gpu lv-gpu lu-gpu"
#####BSUB -m "lu-gpu"
#BSUB -q gpuqueue -n 16 -gpu "num=1:j_exclusive=yes"
#BSUB -R "rusage[mem=4] span[hosts=1]"
######BSUB -R V100
#BSUB -W 24:00
#BSUB -o %J.stdout
#BSUB -eo %J.stderr

python ht_lipo.py
