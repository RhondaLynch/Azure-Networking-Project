#!/bin/bash

# Arg $1 = 4 char date 0310

# select negative loss times
grep '\-\$' $1-win-loss-player-data |

# remove commas from the amount 
sed s/,// | 

# replace remaining commas with spaces
sed 's:,: :g' |

# concatenate date to AM PM
sed "s/AM/AM $1/" |
sed "s/PM/PM $1/" |

# concatenate FirstLast to one field with space between names 
awk '{print $1 " "  $2 " "  $3 " " $4 " "  $5 $6 " " $7 $8 " " $9 $10 " " $11 $12 " " $13 $14 " " $15 $16 " " $17 $18 " " $19 $20}' |

# explode each name to its own line with 1st 4 fields
awk '{for (i=5;i<=NF;++i) print $1, $2, $3, $4 " " $i}' >> roulette-losses 
 
# get count of unique names and sort in decending order by largest count
awk '{print $5}' roulette-losses | sort | uniq -c | sort -nr





