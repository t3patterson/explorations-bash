function say_yes {
  echo "awesome I like you too!!"
}

function say_no {
  echo "i dont like you either then"
}


# make user choose choose y or n

function choose {
  local default="$1"
  local prompt="$2"
  local choice_yes_fn="$3"
  local choice_no_fn="$4"
  local answer

  echo "$prompt"
  read answer

  echo $answer
  [ -z "$answer" ] && answer="$default"
  #  note: [-z "$VAR"] is to check for a variable
          
  case "$answer" in 
    [yY1]|"yes" ) 
      $choice_yes_fn
      ;;
    [nN0]|"no" )
      $choice_no_fn
      ;;
    *     ) 
      echo "%b" "Unexpected Answer: '$answer'" 
      ;;
  esac
}



# called like this
choose y "Do you like me?" say_yes say_no