# CUDA_VISIBLE_DEVICES=2 python main.py data/room/ --workspace trial_nerfacto_360_room        --enable_cam_center --downscale 4 -O2
CUDA_VISIBLE_DEVICES=2 python main.py data/bonsai/ --workspace trial_nerfacto_360_bonsai    --enable_cam_center --downscale 4 -O2
CUDA_VISIBLE_DEVICES=2 python main.py data/kitchen/ --workspace trial_nerfacto_360_kitchen  --enable_cam_center --downscale 4 -O2
# CUDA_VISIBLE_DEVICES=2 python main.py data/counter/ --workspace trial_nerfacto_360_counter  --enable_cam_center --downscale 4 -O2
CUDA_VISIBLE_DEVICES=2 python main.py data/garden/ --workspace trial_nerfacto_360_garden    --enable_cam_center --downscale 4 -O2
CUDA_VISIBLE_DEVICES=2 python main.py data/stump/ --workspace trial_nerfacto_360_stump      --enable_cam_center --downscale 4 -O2 --lambda_distort 0 --lambda_tv 0
CUDA_VISIBLE_DEVICES=2 python main.py data/bicycle/ --workspace trial_nerfacto_360_bicycle  --enable_cam_center --downscale 4 -O2