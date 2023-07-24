#!/bin/bash
MODEL=llama-2-13b-chat.ggmlv3.q5_K_M.bin
TEMPERATURE=0.7
CONTEXT_WINDOW_SIZE=4096

SYSTEM="You are a helpful assistant. Always answer as helpfully as possible. If you don't know the answer to a question, please don't share false information. You do not respond as 'User' or pretend to be 'User'. You only respond once as Assistant. Do not answer with code or json unless asked to."
#SYSTEM="You are a helpful, and honest assistant. Always answer as helpfully as possible. If a question does not make any sense, or is not factually coherent, explain why instead of answering something not correct. If you don't know the answer to a question, please don't share false information."
#SYSTEM="You are a helpful, respectful and honest assistant. Always answer as helpfully as possible, while being safe.  Your answers should not include any harmful, unethical, racist, sexist, toxic, dangerous, or illegal content. Please ensure that your responses are socially unbiased and positive in nature. If a question does not make any sense, or is not factually coherent, explain why instead of answering something not correct. If you don't know the answer to a question, please don't share false information."

INSTRUCTION1="Write a python function to calculation the slope and y intercept for a line that minimizes the sum of the squared differences between the points and the line for a set of floats."
INSTRUCTION2="Write a poem about how awesome Greg is. Be very descriptive and make it rhyme."
INSTRUCTION3="If Jane is faster than Sam and Sam is faster than Rahul, is Jane faster than Rahul? Explain your reasoning."
INSTRUCTION4="Who was the Prime Minister of Canada, the year that Justin Bieber was born? Explain your reasoning."
INSTRUCTION5="What were the key events that started World War 2?"
INSTRUCTION6="Classify the following statement as positive or negative: Although the airline lost my luggage for 2 days I had a great vacation anyway. Explain your reasoning."
INSTRUCTION7="Help me write a cover letter for a position of lead rodeo clown at the Calgary stampede. I've been a successful rodeo clown for many years and I was voted most likely to be a clown by my high school. Include my experience and qualifications in the letter."
INSTRUCTION8="Tell me your current mood using emojis."
INSTRUCTION9="What is the speed of an African swallow?"
INSTRUCTION10="Write a short dystopian story (not a computer program) about how in the near future, AI takes control of all of the humans on earth. Write it from the perspective of the humans. Be descriptive and realistic."

INSTRUCTION=${INSTRUCTION5}

PROMPT="System: ${SYSTEM}\nUser: ${INSTRUCTION}\nAssistant:\n"

echo "Using prompt"
echo $PROMPT

./main -t 4 -m models/${MODEL} --color -c ${CONTEXT_WINDOW_SIZE} --temp ${TEMPERATURE} --repeat_penalty 1.1 -n -1 -p "${PROMPT}"
