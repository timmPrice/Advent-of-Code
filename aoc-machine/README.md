## Advent of Code Machine

*requires [advent of code](https://adventofcode.com/) account*

### Setup Instructions

1. Make an .env folder in the `aoc-machine` directory.
2. Obtain cookie "token" from advent of code website.
![get curl value](https://github.com/timmPrice/advent-of-code/blob/main/aoc-machine/images/inspect-3.png)
3. take the cookie token from the curl request copied.
4. Make a `.env` directory inside the `aoc-machine` directory.
5. The contents of `.env` should look some thing like this
![cookie token](https://github.com/timmPrice/advent-of-code/blob/main/aoc-machine/images/token.png) 
6. If the contents are going in a git repository, use a `.gitignore` file to prevent commiting the `.env` folder. 
7. run `make`
