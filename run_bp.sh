cat < 'EOF' > run_bp.sh
#!/bin/bash

GEM5="./build/ECE565-ARM/gem5.opt"
BASE="/home/min/a/ece565/benchspec-2020/CPU2006"

# 15회 조합 (5개 벤치마크 x 3가지 정확도)
BENCHMARKS=("milc" "leslie3d" "namd" "sjeng" "lbm")
ACCURACIES=("1.0" "0.5" "0.0")

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

    for acc in "${ACCURACIES[@]}"; do
        label=$(awk "BEGIN {print int($acc * 100)}")
        out="m5out_bp_${bench}_acc${label}"

        echo ">>> Running $bench with BP accuracy ${label}%..."
        
        BP_ACCURACY=$acc $GEM5 --outdir="$out" configs/example/se.py \
            --cpu-type=MinorCPU \
            --maxinsts=1000000 \
            --l1d_size=64kB \
            --l1i_size=16kB \
            --caches --l2cache \
            -c "$BIN" \
            "${ARGS[@]}"
    done
done

echo ">>> All simulations finished successfully!"
EOF