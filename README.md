Last command
```
snakemake -p -j 2 --cluster-config cluster.yaml --cluster "sbatch --time {cluster.time} --ntasks {cluster.ntasks} --cpus-per-task {cluster.cpus-per-task} --nodes {cluster.nodes} --job-name {cluster.job-name} --partition {cluster.partition}" output/K562/Results/train_ve_2.5_10000_1.5_50.0/params/params.params^C" output/K562/Results/train_ve_2.5_10000_1.5_50.0/params/param(segwayVE) snakemake -p -j 2 --cluster-config cluster.yaml --cluster "sbatch --time {cluster.time} --ntasks {cluster.ntasks} --cpus-per-task {cluster.cpus-per-task} --nodes {cluster.nodes} --job-name {cluster.job-name} --partition {cluster.partition}" output/K562/Results/annot_2.5_10000_1.5_50.0/segway.bed.gz
```

Next: Run the rule to generate all the VE Segway run on K562, it if works, run on other cell types.