#!/bin/bash

# Arg $1 4 char date ex. 0310
# Arg $2 2 char AM/PM
# Note .* = and.  This must be presented in double quotes

# Select the specific times from the appropriate file
grep -E "$1.*$2" $3-dealer-schedule |

# Concatenate the 4 character date to the time
sed "s/AM/AM $3/" | sed "s/PM/PM $3/" |

 awk '{print $1 " " $2 " " $3 "\t" $6 " " $7}' >> dealers-working-during-lossesx
cat dealers-working-during-lossesx
