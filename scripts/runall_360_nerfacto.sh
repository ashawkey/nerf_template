CUDA_VISIBLE_DEVICES=1 python main.py data/room/ --workspace trial_nerfacto_360_room        --downscale 4 -O2
CUDA_VISIBLE_DEVICES=1 python main.py data/bonsai/ --workspace trial_nerfacto_360_bonsai    --downscale 4 -O2
CUDA_VISIBLE_DEVICES=1 python main.py data/kitchen/ --workspace trial_nerfacto_360_kitchen  --downscale 4 -O2
CUDA_VISIBLE_DEVICES=1 python main.py data/counter/ --workspace trial_nerfacto_360_counter  --downscale 4 -O2
CUDA_VISIBLE_DEVICES=1 python main.py data/garden/ --workspace trial_nerfacto_360_garden    --downscale 4 -O2
CUDA_VISIBLE_DEVICES=1 python main.py data/stump/ --workspace trial_nerfacto_360_stump      --downscale 4 -O2
CUDA_VISIBLE_DEVICES=1 python main.py data/bicycle/ --workspace trial_nerfacto_360_bicycle  --downscale 4 -O2