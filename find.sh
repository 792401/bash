 #!/bin/bash  
 for f in a*; do unzip -p $f/artifact.zip current.csv >> result.csv; done
 sed -i e 's/REMOVE//g' result.csv
