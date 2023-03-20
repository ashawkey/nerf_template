# CUDA_VISIBLE_DEVICES=1 python main.py data/room/ --workspace trial_ngp_360_room        --enable_cam_center --downscale 4 -O --background random --bound 8
CUDA_VISIBLE_DEVICES=1 python main.py data/bonsai/ --workspace trial_ngp_360_bonsai    --enable_cam_center --downscale 4 -O --background random --bound 8
CUDA_VISIBLE_DEVICES=1 python main.py data/kitchen/ --workspace trial_ngp_360_kitchen  --enable_cam_center --downscale 4 -O --background random --bound 8
# CUDA_VISIBLE_DEVICES=1 python main.py data/counter/ --workspace trial_ngp_360_counter  --enable_cam_center --downscale 4 -O --background random --bound 8
CUDA_VISIBLE_DEVICES=1 python main.py data/garden/ --workspace trial_ngp_360_garden    --enable_cam_center --downscale 4 -O --background random --bound 16
CUDA_VISIBLE_DEVICES=1 python main.py data/stump/ --workspace trial_ngp_360_stump      --enable_cam_center --downscale 4 -O --background random --bound 16 --lambda_distort 0 --lambda_tv 0
CUDA_VISIBLE_DEVICES=1 python main.py data/bicycle/ --workspace trial_ngp_360_bicycle  --enable_cam_center --downscale 4 -O --background random --bound 16