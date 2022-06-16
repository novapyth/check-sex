
#original with X
#xcov=$(echo "scale=4; $(samtools idxstats $1 | grep "X" | cut -f 3)/$(samtools idxstats $1 | grep "X" | cut -f 2)" | bc)
#original with Y
#ycov=$(echo "scale=4; $(samtools idxstats $1 | grep "Y" | cut -f 3)/$(samtools idxstats $1 | grep "Y" | cut -f 2)" | bc)
# changed for "chrX" 
xcov=$(echo "scale=4; $(samtools idxstats $1 | grep -w "chrX" | cut -f 3)/$(samtools idxstats $1 | grep -w "chrX" | cut -f 2)" | bc)
# changed for "chrY" 
ycov=$(echo "scale=4; $(samtools idxstats $1 | grep -w "chrY" | cut -f 3)/$(samtools idxstats $1 | grep -w "chrY" | cut -f 2)" | bc)

rat=$(echo "scale=4; ${xcov}/${ycov}" | bc)

echo "X:Y ratio: $rat"
