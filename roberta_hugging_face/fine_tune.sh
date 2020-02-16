#!/usr/bin/env bash

FOLDIR="../data/funcup"
python ./run.py \
--model_type bert \
--task_name funcup \
--model_name_or_path roberta_zh_l12 \
--do_train \
--do_eval \
--do_lower_case \
--data_dir $FOLDIR \
--learning_rate 5e-5 \
--num_train_epochs 4 \
--max_seq_length 386 \
--output_dir model \
--per_gpu_eval_batch_size=4 \
--per_gpu_train_batch_size=4 \
--gradient_accumulation_steps 4 \
--overwrite_output