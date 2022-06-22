#!/bin/bash

#extractor12 db 만들기
# OMP_NUM_THREADS=16 CUDA_VISIBLE_DEVICES=6 python baseline.py --image_size 512 512 --batch 1 --shuffle --workers 8 \
#                                         --valid --cluster 64 --tuple --positive_selection 0 --dataset 0 --optimizer 0 \
#                                         --scheduler 1 --extractor 13 --searching 1  --metric 0 --pca --pca_dim 4096\
#                                         --pose_ld 4 --topk 10 --db_load --pose_cupy --pose_pointcloud_load\
#                                         --pose_estimation --pose_noniter



#####extractor12 train 하기(?)
# OMP_NUM_THREADS=32 CUDA_VISIBLE_DEVICES=6 python baseline.py --image_size 512 512 --batch 1 --shuffle --workers 8 \
#                                         --valid --cluster 64 --tuple --positive_selection 0 --dataset 0 --optimizer 0 \
#                                         --scheduler 1 --extractor 13 --searching 1  --metric 0 --pca --pca_dim 4096\
#                                         --topk 10 --port 6006


###################
# retrieval + reranking + pose_estimation
###################

# OMP_NUM_THREADS=8 CUDA_VISIBLE_DEVICES=2 python baseline.py --image_size 512 512 --batch 1 --shuffle --workers 8 \
#                                         --valid --cluster 64 --tuple --positive_selection 0 --dataset 0 --optimizer 0 \
#                                         --scheduler 1 --extractor 4 --searching 1  --metric 0 --pca --pca_dim 4096\
#                                         --pose_ld 2 --rerank 0 --topk 10 --db_load --pose_cupy --pose_pointcloud_load #--pose_estimation --pose_noniter

# OMP_NUM_THREADS=16 CUDA_VISIBLE_DEVICES=0 python baseline.py --image_size 512 512 --batch 1 --shuffle --workers 8 \
#                                         --valid --cluster 64 --tuple --positive_selection 0 --dataset 0 --optimizer 0 \
#                                         --scheduler 1 --extractor 4 --searching 1  --metric 0 --pca --pca_dim 4096\
#                                         --pose_ld 2 --rerank 1 --topk 10 --db_load --pose_cupy --pose_pointcloud_load\
#                                         --pose_estimation --pose_noniter --topk_save topk/b1_ld2_top10.npy

# OMP_NUM_THREADS=8 CUDA_VISIBLE_DEVICES=2 python baseline.py --image_size 512 512 --batch 1 --shuffle --workers 8 \
#                                         --valid --cluster 64 --tuple --positive_selection 0 --dataset 0 --optimizer 0 \
#                                         --scheduler 1 --extractor 4 --searching 1  --metric 0 --pca --pca_dim 4096\
#                                         --pose_ld 3 --rerank 0 --topk 10 --db_load --pose_cupy --pose_pointcloud_load # --pose_estimation --pose_noniter

# OMP_NUM_THREADS=16 CUDA_VISIBLE_DEVICES=5 python baseline.py --image_size 512 512 --batch 1 --shuffle --workers 8 \
#                                         --valid --cluster 64 --tuple --positive_selection 0 --dataset 0 --optimizer 0 \
#                                         --scheduler 1 --extractor 12 --searching 1  --metric 0 --pca --pca_dim 4096\
#                                         --pose_ld 5 --rerank 0 --topk 10 --pose_cupy --pose_pointcloud_load\
#                                         --pose_estimation --pose_noniter --db_save index_extractor12_b1.pkl

# OMP_NUM_THREADS=8 CUDA_VISIBLE_DEVICES=2 python baseline.py --image_size 512 512 --batch 1 --shuffle --workers 8 \
#                                         --valid --cluster 64 --tuple --positive_selection 0 --dataset 0 --optimizer 0 \
#                                         --scheduler 1 --extractor 4 --searching 1  --metric 0 --pca --pca_dim 4096\
#                                         --pose_ld 4 --rerank 0 --topk 10 --db_load --pose_cupy --pose_pointcloud_load # --pose_estimation --pose_noniter  

OMP_NUM_THREADS=32 CUDA_VISIBLE_DEVICES=6 python baseline.py --image_size 512 512 --batch 1 --shuffle --workers 8 \
                                        --valid --cluster 64 --tuple --positive_selection 0 --dataset 0 --optimizer 0 \
                                        --scheduler 1 --extractor 12 --searching 1  --metric 0 --pca --pca_dim 4096\
                                        --pose_ld 4 --rerank 1 --topk 10 --pose_cupy --pose_pointcloud_load\
                                        --pose_estimation --pose_noniter --topk_save topk/ex12_train24_ld4.npy