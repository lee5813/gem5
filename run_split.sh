#!/bin/bash

GEM5="./build/ECE565-ARM/gem5.opt"
BASE="/home/min/a/ece565/benchspec-2020/CPU2006"

BENCHMARKS=("milc" "leslie3d" "namd" "sjeng" "lbm")

for bench in "${BENCHMARKS[@]}"; do
    case "$bench" in
        "milc")
            BIN="$BASE/433.milc/exe/milc_base.amd64-armcross"
            ARGS=(-i "$BASE/433.milc/data/ref/input/su3imp.in")
            ;;
        "leslie3d")
            BIN="$BASE/437.leslie3d/exe/leslie3d_base.amd64-armcross"
            ARGS=(-i "$BASE/437.leslie3d/data/ref/input/leslie3d.in")
            ;;
        "namd")
            BIN="$BASE/444.namd/exe/namd_base.amd64-armcross"
            ARGS=(-o "--input $BASE/444.namd/data/all/input/namd.input --iterations 1 --output namd.out")
            ;;
        "sjeng")
            BIN="$BASE/458.sjeng/exe/sjeng_base.amd64-armcross"
            ARGS=(-o "$BASE/458.sjeng/data/ref/input/ref.txt")
            ;;
        "lbm")
            BIN="$BASE/470.lbm/exe/lbm_base.amd64-armcross"
            ARGS=(-o "20 reference.dat 0 1 $BASE/470.lbm/data/ref/input/100_100_130_ldc.of")
            ;;
    esac

    out="m5out_split_${bench}"
    echo ">>> Running Split EX on $bench..."

    BP_ACCURACY=1.0 $GEM5 --outdir="$out" configs/example/se.py \
        --cpu-type=MinorCPU \
        --maxinsts=1000000 \
        --l1d_size=64kB \
        --l1i_size=16kB \
        --caches --l2cache \
        -c "$BIN" \
        "${ARGS[@]}"
done

echo ">>> All Split EX simulations completed!"