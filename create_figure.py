import matplotlib.pyplot as plt
import numpy as np

benchmarks = ['lbm', 'leslie3d', 'milc', 'namd', 'sjeng']

# 1. Branch Prediction Degradation Data
ipc_0 =   [0.045425, 0.172379, 0.204769, 0.306954, 0.213893]
ipc_50 =  [0.046357, 0.183688, 0.219689, 0.338539, 0.221118]
ipc_100 = [0.047390, 0.203250, 0.237156, 0.381953, 0.227293]

# 2. Split EX vs Baseline Data
ipc_split = [0.047390, 0.203145, 0.233445, 0.381939, 0.231632]

x = np.arange(len(benchmarks))
width = 0.25

# Figure 1: Branch Prediction Degradation
plt.figure(figsize=(8, 5))
plt.bar(x - width, ipc_0, width, label='0% Accuracy', color='#e74c3c')
plt.bar(x, ipc_50, width, label='50% Accuracy', color='#f39c12')
plt.bar(x + width, ipc_100, width, label='100% Accuracy (Default)', color='#2ecc71')

plt.xlabel('SPEC CPU2006 Benchmarks', fontsize=12, fontweight='bold')
plt.ylabel('IPC (Instructions Per Cycle)', fontsize=12, fontweight='bold')
plt.title('Part 3 Task 2: Branch Prediction Degradation Impact on IPC', fontsize=13, fontweight='bold')
plt.xticks(x, benchmarks, fontsize=11)
plt.legend(frameon=True)
plt.grid(axis='y', linestyle='--', alpha=0.7)
plt.tight_layout()
plt.savefig('part3_branch_prediction.png', dpi=300)
plt.close()

# Figure 2: Baseline vs Split EX
width_ex = 0.35
plt.figure(figsize=(8, 5))
plt.bar(x - width_ex/2, ipc_100, width_ex, label='Baseline Pipeline (Delay=1)', color='#3498db')
plt.bar(x + width_ex/2, ipc_split, width_ex, label='Split EX Pipeline (Delay=2)', color='#9b59b6')

plt.xlabel('SPEC CPU2006 Benchmarks', fontsize=12, fontweight='bold')
plt.ylabel('IPC (Instructions Per Cycle)', fontsize=12, fontweight='bold')
plt.title('Part 3 Task 3: Impact of Splitting EX Stage on IPC', fontsize=13, fontweight='bold')
plt.xticks(x, benchmarks, fontsize=11)
plt.legend(frameon=True)
plt.grid(axis='y', linestyle='--', alpha=0.7)
plt.tight_layout()
plt.savefig('part3_split_ex.png', dpi=300)
plt.close()

print("Graph images generated: part3_branch_prediction.png, part3_split_ex.png")