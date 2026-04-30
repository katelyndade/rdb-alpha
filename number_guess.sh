#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "Enter your username:"
read USERNAME

PLAYER=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")
GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE username='$USERNAME'")
BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE username='$USERNAME'")

if [[ -z $PLAYER ]]
then
  ADD_PLAYER=$($PSQL "INSERT INTO users (username) VALUES('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id from users where username='$USERNAME'")
  echo -e "Welcome, $USERNAME! It looks like this is your first time here."
else
  echo -e "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo -e "Guess the secret number between 1 and 1000:"
RAND_NUM=$((1 + RANDOM % 1000))
TRIES=0

while read GUESS
do
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    TRIES=$(($TRIES + 1))
    echo "That is not an integer, guess again:"
    continue
  else
    if [[ $GUESS == $RAND_NUM ]]
    then
      TRIES=$(($TRIES + 1))
      break
    else
      if [[ $GUESS > $RAND_NUM ]]
      then
        TRIES=$(($TRIES + 1))
        echo "It's lower than that, guess again:"
      else
        TRIES=$(($TRIES + 1))
        echo "It's higher than that, guess again:"
      fi
    fi
  fi
done

echo -e "You guessed it in $TRIES tries. The secret number was $RAND_NUM. Nice job!"

ADD_GAME=$($PSQL "UPDATE users SET games_played=games_played + 1 WHERE username='$USERNAME'")

if [[ -z $BEST_GAME || $TRIES < $BEST_GAME ]]
then
  UPDATE_SCORE=$($PSQL "UPDATE users SET best_game=$TRIES WHERE username='$USERNAME'")
fi