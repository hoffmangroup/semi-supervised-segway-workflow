def make_track_file(tracks, output):
	with open(output, "w") as outfile:
		tracks = [f"{t}\n" for t in tracks]
		outfile.writelines(tracks)
		
make_track_file(
	snakemake.params.histones, 
	str(snakemake.output))