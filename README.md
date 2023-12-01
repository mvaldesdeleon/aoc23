# Advent of Code 2023

Advent of Code 2023, in Haskell

http://adventofcode.com/2023

# Instructions

Before you compile the code, you'll need to create the `Session` module at **src/Session.hs** and provide your session cookie. This will download your input files automatically, and cache them.

```haskell
module Session where

import Relude.String (ByteString)

session :: ByteString
session = "<YOUR SESSION COOKIE HERE>"
```

You should have [stack](https://docs.haskellstack.org/en/stable/README/) installed before continuing.

```sh
git clone git@github.com:mvaldesdeleon/aoc23.git
cd aoc23
# Create the Session module
cat << EOF > src/Session.hs
module Session where

import Relude.String (ByteString)

session :: ByteString
session = "<YOUR SESSION COOKIE HERE>"
EOF
stack build
stack exec aoc23 day[1-5]
# i.e., stack exec aoc23 day1
```

You can also override the input file for testing:

```sh
stack exec aoc23 day1 --input alternative/input.txt
```

# Live Stream

I'll be live streaming my solutions on [twitch](https://www.twitch.tv/mvaldesdeleon). No fixed schedule, but I would expect something between 18:00 and 22:00 CET.

# License

BSD-3-Clause