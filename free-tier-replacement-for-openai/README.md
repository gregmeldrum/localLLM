# Colab free-tier replacement for OpenAI API

The colabs in this directory can be used as a drop in replacement for the OpenAI API.

After running the colab, note your ngrok URL and use it as the `base_url` for OpenAI.

Here is an example:

```
import openai

openai.base_url = "https://a4d4-34-125-32-22.ngrok-free.app/"
openai.api_key = "dummy-key"

completion = openai.chat.completions.create(
  model="ollama/llama2-7B",
  messages=[
    {"role": "system", "content": "You are a helpful assistant."},
    {"role": "user", "content": "Create a json object that represents 10 different people. Include the first and last name, age and gender. Make sure the list is diverse."}
  ]
)

print(completion.choices[0].message.content)
```
