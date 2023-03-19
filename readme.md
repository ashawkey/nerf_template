# nerf-template

A simple template for NeRF projects.
This is basically a clean and improved version of [torch-ngp]().

# Install

```bash
git clone https://github.com/ashawkey/nerf_template.git
cd nerf_template
```

### Install with pip
```bash
pip install -r requirements.txt
```

### Build extension (optional)
By default, we use [`load`](https://pytorch.org/docs/stable/cpp_extension.html#torch.utils.cpp_extension.load) to build the extension at runtime.
However, this may be inconvenient sometimes.
Therefore, we also provide the `setup.py` to build each extension:
```bash
# install all extension modules
bash scripts/install_ext.sh

# if you want to install manually, here is an example:
cd raymarching
python setup.py build_ext --inplace # build ext only, do not install (only can be used in the parent directory)
pip install . # install to python path (you still need the raymarching/ folder, since this only install the built extension.)
```

### Tested environments
* Ubuntu 22 with torch 1.12 & CUDA 11.6 on a V100.

# Usage

We support the original NeRF data format like [nerf-synthetic](https://drive.google.com/drive/folders/128yBriW1IG_3NJ5Rp7APSTZsJqdJdfc1), and COLMAP dataset like [Mip-NeRF 360](http://storage.googleapis.com/gresearch/refraw360/360_v2.zip).
Please download and put them under `./data`.

First time running will take some time to compile the CUDA extensions.

### Basics
```bash
# -O: instant-ngp
# prune sampling points by maintaining a density grid
python main.py data/bonsai/ --workspace trial_bonsai_ngp --data_format colmap --enable_cam_center --enable_cam_near_far --downscale 4 -O --bound 8

# -O2: nerfstudio nerfacto / mip-nerf 360
# use proposal network to predict sampling points
python main.py data/bonsai/ --workspace trial_bonsai_prp --data_format colmap --enable_cam_center --enable_cam_near_far --downscale 4 -O2
```

Processing custom datasets:
```bash
# prepare your video or images under /data/custom, and run colmap (assumed installed):
python scripts/colmap2nerf.py --video ./data/custom/video.mp4 --run_colmap # if use video
python scripts/colmap2nerf.py --images ./data/custom/images/ --run_colmap # if use images
```

### Advanced Usage
```bash
### -O: the recommended setting, equals
--fp16 --preload --mark_untrained --random_image_batch --adaptive_num_rays --mesh_visibility_culling

### load checkpoint
--ckpt latest # by default we load the latest checkpoint in the workspace
--ckpt scratch # train from scratch.
--ckpt trial/checkpoints/xxx.pth # specify it by path

### testing
--test # test, save video and mesh
--test_no_video # do not save video
--test_no_mesh # do not save mesh

### dataset related
--data_format [colmap|nerf] # dataset format
--enable_cam_center # use camera center instead of sparse point center as scene center (colmap dataset only)
--enable_cam_near_far # estimate camera near & far from sparse points (colmap dataset only)

--bound 16 # scene bound set to [-16, 16]^3
--scale 0.3 # camera scale, if not specified, automatically estimate one based on camera positions. Important targets should be scaled into the center [-1, 1]^3.

### visualization 
--vis_pose # viusalize camera poses and sparse points (sparse points are colmap dataset only)
--gui # open gui (only for testing, training in gui is not well supported!)

### balance between surface quality / rendering quality

# increase these weights to get better surface quality but worse rendering quality
--lambda_tv 1e-7 # total variation loss
--lambda_entropy 1e-3 # entropy on rendering weights (transparency, alpha), encourage them to be either 0 or 1

### coarse mesh extraction & post-processing
--mcubes_reso 512 # marching cubes resolution
--decimate_target 300000 # decimate raw mesh to this face number
--clean_min_d 5 # isolated floaters with smaller diameter will be removed
--clean_min_f 8 # isolated floaters with fewer faces will be removed
--visibility_mask_dilation 5 # dilate iterations after performing visibility face culling

```

Please check the `scripts` directory for more examples on common datasets, and check `main.py` for all options.
