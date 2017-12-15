#!/bin/bash

# Drop all votes and POST new votes to MongoDB or Cosmos DB

url="https://api.voter-demo.com"

echo "Dropping all existing votes documents from votes DB..."
echo "POSTing ${url}/voter/drop/votes"
curl --request POST --url ${url}/voter/drop/votes

echo "Creating sample voting data..."
echo "POSTing ${url}/voter/simulation/2016%20Presidential%20Election"
curl --request GET --url ${url}/voter/simulation/2016%20Presidential%20Election