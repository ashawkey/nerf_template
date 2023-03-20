CUDA_VISIBLE_DEVICES=1 python main.py data/room/ --workspace trial_ngp_360_room        --downscale 4 -O --bound 8
CUDA_VISIBLE_DEVICES=1 python main.py data/bonsai/ --workspace trial_ngp_360_bonsai    --downscale 4 -O --bound 8
CUDA_VISIBLE_DEVICES=1 python main.py data/kitchen/ --workspace trial_ngp_360_kitchen  --downscale 4 -O --bound 8
CUDA_VISIBLE_DEVICES=1 python main.py data/counter/ --workspace trial_ngp_360_counter  --downscale 4 -O --bound 8
CUDA_VISIBLE_DEVICES=1 python main.py data/garden/ --workspace trial_ngp_360_garden    --downscale 4 -O --bound 16
CUDA_VISIBLE_DEVICES=1 python main.py data/stump/ --workspace trial_ngp_360_stump      --downscale 4 -O --bound 16
CUDA_VISIBLE_DEVICES=1 python main.py data/bicycle/ --workspace trial_ngp_360_bicycle  --downscale 4 -O --bound 16