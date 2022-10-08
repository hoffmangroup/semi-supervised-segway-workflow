DPI_PEAKS_FILE=$1

# this is input of the form 
# col 1=chr,2=start,3=end,4=label,5=TPM,6=strand, rest irrelevant
# this script gives output of the form
# col 1=chr,2=start,3=end,4=prior,5=strand

METHOD=$2
UNIFORM=$3
REL_CONF=$4

if [ "$METHOD" == "tanh_uniform_delta" ];then
    # compute tanh(UNIF+(TC/delta)/relative confidence) for each position
    awk -v CONVFMT=%.17g -v UNIF=${UNIFORM} -v REL_CONF=${REL_CONF} "{\$5 = UNIF + \$5/((\$3-\$2)*REL_CONF); print}" OFS="\t" ${DPI_PEAKS_FILE} | 
    awk -v CONVFMT=%.17g "{\$5 = (exp(\$5)-exp(-\$5))/(exp(\$5)+exp(-\$5)); print}" OFS="\t" |
    awk -v CONVFMT=%.17g '{if ($5=="-nan"){$5="1.0"}; print}' OFS="\t" |
    awk '{print $1,$2,$3,$5,$6}' OFS="\t"
else
    echo "Unknown method specified"
fi
