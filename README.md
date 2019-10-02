# ToyRobot
ToyRobot is a toy robot simulator written in Ruby. An imaginary robot is placed on a table of given size. The robot must be able to move in the direction he is facing and then report his location and th direction he is facing. 
  - The table is a 5x5 square
  - The table is free from obstructions
  - The robot must stay within the boundaries of the table

## Installation
Built using ruby 2.6.3p62
Clone repo using:
> $ git clone https://github.com/rmklaus12/toy_robot.git

In the application root directory on the local machine run:
> $ gem install bundler
$ bundle install

## Usage
Edit the commands.txt file in the application root directory for desired commands:

PLACE(X,Y,direction) -> e.g. PLACE(2,3,north)
MOVE -> move 1 space in facing direction
LEFT -> turn 90 degrees to the left
RIGHT -> turn 90 degrees to the right
REPORT -> output current position and facing diretion of robot
Run the app from the application root directory:
> $ bundle exec exe/toy_robot commands.txt

## Testing
Run testing suite using rspec
> $ rspec spec
