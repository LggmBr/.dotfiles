#!bin/bash
echo """
 ___       ________  ________  _____ ______   ________  ________     
|\  \     |\   ____\|\   ____\|\   _ \  _   \|\   __  \|\   __  \    
\ \  \    \ \  \___|\ \  \___|\ \  \\\__\ \  \ \  \|\ /\ \  \|\  \   
 \ \  \    \ \  \  __\ \  \  __\ \  \\|__| \  \ \   __  \ \   _  _\  
  \ \  \____\ \  \|\  \ \  \|\  \ \  \    \ \  \ \  \|\  \ \  \\  \| 
   \ \_______\ \_______\ \_______\ \__\    \ \__\ \_______\ \__\\ _\ 
    \|_______|\|_______|\|_______|\|__|     \|__|\|_______|\|__|\|__|
"""

addModule()
{
  echo "source $bashModules/$1.sh"
}

echo "List the modules you want to add separated by spaces ' '. "
read -a array
for ((i = 0; i < ${#array[@]}; i++)); do
  addModule "${array[$i]}"
done


