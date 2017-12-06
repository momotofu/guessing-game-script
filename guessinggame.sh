# display text like in Pokemon :D
function displayText {
  text=$1
  for (( i=0; i <${#text}; i++ )); do
    echo -n "${text:$i:1}"
    sleep 0.03
  done
  echo -e '\n'
}

function pause() {
  read -p "$*"
}

# get number of files in current directory
num_files=$(ls -1 | wc -l)

higherText[0]="Not quite. Guess higher."
higherText[1]="A little higher."
higherText[2]="Getting there... but still too low."
higherText[3]="Try guessing higher"

lowerText[0]="Your guess is in the sky"
lowerText[1]="Try guessing lower"
lowerText[2]="A lower guess might do the trick"
lowerText[3]="Guess something lower"

# welcome the user
displayText "Welcome to G.G. otherwise known as the Guessing Game "
pause "Press enter to continue"
displayText "How many files do you think are in the current working directory? "
read guess

while (( guess != num_files )); do
  rand=$(( (RANDOM % 4)))
  if (( guess < num_files )); then
    displayText "${higherText[$rand]}"
    read guess
  elif (( guess > num_files )); then
    displayText "${lowerText[$rand]}"
    read guess
  fi
done

displayText "Correct! there are $guess in this directory 🎉"
