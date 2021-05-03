#!/bin/bash
echo "#!/bin/bash" > generated-clean-all.sh
for file in */clean.sh; do
    IFS='/'; 
    read -ra parts <<< "$file"; 
    echo "echo Cleaning ${parts[0]} project.";
    echo "cd ${parts[0]}"; 
    echo "./${parts[1]}"; 
    echo "cd ..";  
done >> generated-clean-all.sh
./generated-clean-all.sh
rm generated-clean-all.sh

