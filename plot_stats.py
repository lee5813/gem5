import matplotlib.pyplot as plt
import numpy as np

phases = ['Phase 1\n(Init / RNG)', 'Phase 2\n(DAXPY Kernel)', 'Phase 3\n(Sum & I/O)']

# 백분율 데이터 정규화 (%)
data = {
    'IntAlu': [78.76, 53.86, 74.46],
    'Int Mem (Read/Write)': [17.36, 0.02, 14.72],
    'FloatMemRead': [0.71, 15.37, 4.26],
    'FloatMemWrite': [0.18, 7.68, 0.56],
    'FP/SIMD Compute': [0.47, 23.06, 3.58],
    'Others': [2.52, 0.01, 2.42]
}

colors = ['#4A90E2', '#7ED321', '#F5A623', '#D0021B', '#9013FE', '#9B9B9B']

fig, ax = plt.subplots(figsize=(8, 5))
bottom = np.zeros(len(phases))

for (label, values), color in zip(data.items(), colors):
    p = ax.bar(phases, values, bottom=bottom, label=label, color=color, width=0.45)
    bottom += np.array(values)

ax.set_ylabel('Percentage of Executed Ops (%)', fontsize=11, fontweight='bold')
ax.set_title('Instruction Breakdown by Op Class Across Program Phases', fontsize=13, fontweight='bold')
ax.set_ylim(0, 100)
ax.legend(bbox_to_anchor=(1.02, 1), loc='upper left', frameon=True)
ax.grid(axis='y', linestyle='--', alpha=0.5)

plt.tight_layout()
plt.savefig('op_class_breakup.png', dpi=300)
print("Saved op_class_breakup.png")