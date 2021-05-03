#!/bin/bash
echo "#!/bin/bash" > generated-build-all.sh
for file in */build.sh; do
    IFS='/'; 
    read -ra parts <<< "$file"; 
    echo "echo Building ${parts[0]} project.";
    echo "cd ${parts[0]}"; 
    echo "./${parts[1]}"; 
    echo "cd ..";  
done >> generated-build-all.sh
./generated-build-all.sh
rm generated-build-all.sh

