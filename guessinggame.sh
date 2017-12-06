# get number of files in current directory
local num_files=$(ls -1 | wc -l)

# welcome the user
  while (( key == "" )); do
    displayText 'Welcome to G.G. otherwise known as the Guessing Game'
  sleep 0.5
  displayText "Press enter to continue"
  read -p "How many files do you think are in the current working directory? " guess

echo $guess
# prompt the user to guess the number of files

# display text like in Pokemon :D
function displayText {
  text=$1
  for (( i=0; i <${#text}; i++ )); do
    echo -n "${text:$i:1}"
    sleep 0.05
  done

  echo -e "\n"
}

function pause {
  read -p "$*"
}
