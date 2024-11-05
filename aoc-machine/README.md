## Advent of Code Machine

*requires [advent of code](https://adventofcode.com/) account*

### Setup Instructions

1. Make an .env folder in the `aoc-machine` directory.
2. Obtain cookie "token" from advent of code website.
![instruction 1](https://github.com/timmPrice/advent-of-code/blob/main/aoc-machine/images/inspect-1.png)
![instruction 2](https://github.com/timmPrice/advent-of-code/blob/main/aoc-machine/images/inspect-2.png)
![instruction 3](https://github.com/timmPrice/advent-of-code/blob/main/aoc-machine/images/inspect-3.png)
4. Make a `.env` directory inside the `aoc-machine` directory.
5. The contents of `.env` should look some thing like this `curl_cookie="your_cookie_token_here"`.
![cookie token](https://github.com/timmPrice/advent-of-code/blob/main/aoc-machine/images/token.png) 
6. If the contents are going in a git repository, use a `.gitignore` file to prevent commiting the `.env` folder. 
7. run `make`
