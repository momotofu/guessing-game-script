# get number of files in current directory
local num_files=$(ls -1 | wc -l)

# welcome the user
  displayText 'Welcome to G.G. otherwise known as the Guessing Game'
  pause "Press enter to continue"
  displayText "How many files do you think are in the current working directory? "
  read guess
  while (( guess != num_files )); do
    if (( guess < num_files )); then
      displayText "Not quite. Guess higher."
      read guess
    elif (( guess > num_files )); then
      displayText "Too high. Try again"
      read guess
    fi
  done

echo $guess
# prompt the user to guess the number of files

# display text like in Pokemon :D
function displayText {
  text=$1
  for (( i=0; i <${#text}; i++ )); do
    echo -n "${text:$i:1}"
    sleep 0.05
  done
}

function pause() {
  read -p "$*"
}
