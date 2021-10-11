## Planning for TwO-O-Player Math Game

### Flow and Elements
- turn (start)
  - when both players have 3 lives

- players
  - start with 3 lives

- random question from P1
  - (questions should only be generated when both players lives > 0)

- P2 input answers

- answers validation 
  -> the Question Player will inform right or wrong

- player score update
  - if answer is wrong
    -> player loses 1 life
  

- new turn number after player score update
  -> Game over when someone's life = 0
  


### Roles for each class
#### 1. Players

  ##### State (Variables)
  - name (player1, player2)
  - total no. of lives
  ##### Behavior (Methods)
  - losing life
  - game over (when 1 of them has no life)

#### 2. Questions
  ##### State (Variables)
  (there will be get.chomps to get player's input for answer)

  - 2 placeholders (num1) (num 2) for math addition problems
    e.g. num 1 + num 2 (random generated 2 numbers)
  
  ##### Behavior (Methods)
  - new question 
  - answer validation by conditional statements
  > initialize 2 random num save it (placeholder)  for answer validation

#### 3. Game
  ##### State (Variables)
  - total no. of lives from Players
  - players info from Players
  - questions from Questions
  - Turn number

  ##### Behavior (Methods)
  - start game 
    (check if players still have any life up front)
  - update lives / score
    (if game over, break the loop)
  - update turn
 

#### main (run everything here)





