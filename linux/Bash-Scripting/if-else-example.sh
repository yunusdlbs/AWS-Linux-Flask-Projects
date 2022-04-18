#Write a script that first takes user age and give info about his/her retirement etc.

#! /bin/bash
read -p "Enter your name: " name
read -p "Enter your age: " age
read -p "What is your life expectancy: " ale
echo "Hello $name, Welcome!"

if [[ $age -lt 18 ]]
then
  echo "Student"
  echo "At least $(( 18-$age )) years to become a worker."
elif [[ $age -ge 18 ]] && [[ $age -lt 65 ]]
then 
  echo "Worker"
  echo "$(( 65-$age )) years to retire."
else 
  if [[ $age -lt $ale ]]
  then
    echo "Retired."
    echo "$(( $ale-$age)) years to die."
  else
    echo -ne "\007"
    echo "!!! Already died !!!"
    sleep 3
    echo -ne "\007"
    echo "!!! Already died !!!"
    echo -ne "\007"
    sleep 3
    echo "!!! Already died !!!"
  fi
fi
ls -l
