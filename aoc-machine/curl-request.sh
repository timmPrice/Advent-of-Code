#!/bin/bash

# get the day
echo -n "advent day = (1 - 25)" 
read -r AdventDay

# get the year
echo -n "advent year = (2015 - 2024)" 
read -r AdventYear

echo ${AdventYear} > puzzle.txt
echo ${AdventDay} > puzzle.txt

url="https://adventofcode.com/${AdventYear}/day/$AdventDay"

# getting cookie information
source ./.env
cookie="${curl_cookie}"
echo "${cookie}"

# curl request info
curl "${url}" --compressed \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:130.0) Gecko/20100101 Firefox/130.0' \
  -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/png,image/svg+xml,*/*;q=0.8' \
  -H 'Accept-Language: en-US,en;q=0.5' \
  -H 'Accept-Encoding: gzip, deflate, br, zstd' \
  -H "Referer: https://adventofcode.com/${AdventYear}" \
  -H 'Connection: keep-alive' \
  -H "Cookie: session=${cookie}" \
  -H 'Upgrade-Insecure-Requests: 1' \
  -H 'Sec-Fetch-Dest: document' \
  -H 'Sec-Fetch-Mode: navigate' \
  -H 'Sec-Fetch-Site: same-origin' \
  -H 'Sec-GPC: 1' \
  -H 'Priority: u=0, i' \
  -H 'TE: trailers' > puzzle-info.txt

# curl request input

curl "${url}/input" --compressed \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:130.0) Gecko/20100101 Firefox/130.0' \
  -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/png,image/svg+xml,*/*;q=0.8' \
  -H 'Accept-Language: en-US,en;q=0.5' \
  -H 'Accept-Encoding: gzip, deflate, br, zstd' \
  -H "Referer: https://adventofcode.com/${AdventYear}" \
  -H 'Connection: keep-alive' \
  -H "Cookie: session=${cookie}" \
  -H 'Upgrade-Insecure-Requests: 1' \
  -H 'Sec-Fetch-Dest: document' \
  -H 'Sec-Fetch-Mode: navigate' \
  -H 'Sec-Fetch-Site: same-origin' \
  -H 'Sec-GPC: 1' \
  -H 'Priority: u=0, i' \
  -H 'TE: trailers' > puzzle-input.txt

# organizing inputs

touch temppuzzle.txt
tail -n +75 puzzle-info.txt > temppuzzle.txt
sed -i '/^\s*$/d' temppuzzle.txt 
cat temppuzzle.txt > puzzle-info.txt
rm temppuzzle.txt

dotnet run

# add language templates here

echo -n "language template | available: cs {c-sharp}, ocaml {ocaml}, ..." 
read -r Language

if [ "${Language}" = "cs" ]; then
    echo "creating C# template"
    dotnet new console -n day${AdventDay} --force
    cp puzzle.txt day${AdventDay}/
    cp puzzle-input.txt day${AdventDay}/
    mv day${AdventDay}/ ../${AdventYear}/c-sharp/
fi