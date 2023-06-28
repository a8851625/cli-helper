#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: cli <your request>"
  exit 1
fi


# Set the OpenAI API key from environment variable
OPENAI_API_KEY=$OPENAI_API_KEY

# Set the model to use (e.g. "gpt-3.5-turbo-0301") - this is the cheapest model
MODEL="gpt-3.5-turbo-0301"

# Set the prompt to use as input for the language model
PROMPT="你是一位linux命令专家,请输出可能的linux命令并输出使用的例子:'$1'"

# Set the number of tokens to generate
TOKEN_COUNT=500

# Set the temperature
TEMPERATURE=0.0

# Set the top_p value
TOP_P=1

# Set the frequency
FREQUENCY=0.5

# Set the presence
PRESENCE=0.5
# Generate text using the language model
response=$(curl -s \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -X POST -d @- https://api.openai.com/v1/chat/completions <<EOF
{
  "model": "$MODEL",
  "messages": [{"role": "user", "content": "$PROMPT"}],
  "temperature": $TEMPERATURE,
  "top_p": $TOP_P,
  "frequency_penalty": $FREQUENCY,
  "presence_penalty": $PRESENCE,
  "max_tokens": $TOKEN_COUNT
}
EOF
)

output=$(echo "$response" | sed -n 's/.*"content": "\(.*\)".*/\1/p')

echo -e "$output"
