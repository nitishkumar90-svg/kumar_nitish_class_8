#-------Generic Functions--------

function addBlankSpaces() {
   echo ""
   echo ""
}

function displayResult() {
   echo "-------------------------"
   echo "        Result: $1       "
   echo "-------------------------"
   addBlankSpaces
}

#--------------------------------


#------Functions------------------

function Add() {
   let finalValue=$1+$2
   displayResult $finalValue
}


function Subtract() {
   let finalValue=$2-$1
   displayResult $finalValue
}


function Multiplication() {
   let finalValue=$1*$2
   displayResult $finalValue
}


function Division() {
   let finalValue=$1/$2
   displayResult $finalValue
}

function exitCustom() {
   exit 0
}

#---------------------------------

echo "Welcome to custom calculator"
echo "Time now: $(date)"

while true; do
  echo "Please provide input"
  echo "1 - Addition"
  echo "2 - Subtraction"
  echo "3 - Multiplication"
  echo "4 - Division"
  echo "5 - Exit"
  read value
case $value in
1)
  echo "Provide 1st value"
  read value1
  echo "Provide 2nd value"
  read value2
  Add $value1 $value2
;;
2)
  echo "Provide 1st Value"
  read value1
  echo "Provide 2nd Value"
  read value2
  Subtract $value1 $value2
;;
3)
  echo "Provide 1st Value"
  read value1
  echo "Provide 2nd Value"
  read value2
  Multiplication $value1 $value2
;;
4)
  echo "Provide 1st Value"
  read value1
  echo "Provide 2nd Value"
  read value2
  Division $value1 $value2
;;
5)
  exitCustom
;;
*)
  echo "Please provide valid input"
  addBlankSpaces
;;
esac
done