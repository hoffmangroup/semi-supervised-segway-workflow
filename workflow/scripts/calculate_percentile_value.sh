source activate bigWig_percentile_calculation

PERCENTILE=0.9995

ENCODE_FILES=(
ENCFF779QTH 
ENCFF712XRE 
ENCFF440XMD 
ENCFF868NHV
ENCFF928NWQ
)

HISTONE_MODS=(
H3K27ac
H3K4me3
H3K36me3
DNaseI
H3K27me3
)

# the following is taken from Alex Reynolds' answer here: https://www.biostars.org/p/411701/#411711
echo -e "chrPseudo\t0\t248956422" > chrPseudo.extents.bed

for index in ${!ENCODE_FILES[*]}; do 
    ENCODE_FILE=${ENCODE_FILES[$index]}
    HISTONE_MOD=${HISTONE_MODS[$index]}

    echo "$ENCODE_FILE $HISTONE_MOD"

    bigWigToBedGraph $ENCODE_FILE.bigWig $ENCODE_FILE.bedGraph
    awk -vFS="\t" -vOFS="\t" '{ $5 = $4; $4 = $1; $1 = "chrPseudo"; print $0; }' $ENCODE_FILE.bedGraph | sort-bed - > $ENCODE_FILE.pseudoChr.bed
    bedmap --min-memory --echo --kth ${PERCENTILE} chrPseudo.extents.bed $ENCODE_FILE.pseudoChr.bed > $ENCODE_FILE.$HISTONE_MOD.${PERCENTILE}percentile.bed

done
