export CUDA_VISIBLE_DEVICES=4

python exp_elas.py \
  --data-path /home/wuhaixu/elasticity \
  --ntrain 1000 \
  --ntest 200 \
  --ntotal 2000 \
  --in_dim 2 \
  --out_dim 1 \
  --batch-size 20 \
  --learning-rate 0.0005 \
  --model LSM_Irregular_Geo \
  --d-model 32 \
  --num-basis 12 \
  --num-token 4 \
  --patch-size 6,6 \
  --model-save-path ./checkpoints/elas \
  --model-save-name lsm.pt