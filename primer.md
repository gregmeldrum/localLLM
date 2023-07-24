# Local LLM Primer

Open source Large Language Models (LLM)s are freely availble for download and can be run on consumer grade hardware. The current generation of open source LLMs have yet to achieve the speed and accuracy of OpenAI's GPT-3.5 model, but they are improving at an astonishing rate.

## Why would you want to run your own LLM?


1. Privacy and data security: All data stays on your infrastructure
2. Hands on learning: You can interact with the different facets of LLMs: models, training, finetuning, embeddings, etc...
2. The novelty of having you own personal LLM
3. Specialized models can be fine-tuned for specific data sets and usecases.
4. You want an unfiltered model without the guard rails inherent to public hosted LLMs

## Why wouldn't you want to run your own LLM?

1. Hosted LLMs are fast. Unless you have access to high end video cards with lots (100GB+) of vRAM, your local LLM will be slower than leading hosted models.
2. Hosted LLMs are cheap. The cost of the power to run your local LLMs will be more than the cost of using a leading hosted models.
3. Hosted LLMs are better quality. They are trained on massive amounts of data and fine tuned specific purposes / domains.

## What are the considerations when choosing an open LLM to run locally?

### Hardware

At the moment, you will get the best performance by running the LLM totally or partially on a video card. If you have an AMD video card you are out of luck with the current generation of tooling. The LLM frameworks are optimized for Nvidia's CUDA platform.

If you do not have a high-end video card, there are options for running on CPU only or a combination of CPU and Apple M1/M2 GPUs.

### Number of Model Parameters

A model's size is directly related to the number of model parameters. Small models have 3 billion - 7 billion parameters. Large models have 65 billion - 220 billion parameters. A model's parameter size is positively correlated to accuracy but also to the resource requirements for running the model. Open source LLMs typically have multiple versions, with different parameter sizes. Common parameter sizes include 3B, 7B, 13B, 30B, 40B, 65B.

### Quantization

LLMs require a large amount of memory. Quantization is a method of compressing the LLM by reducing the number of bits used to represent the model weights. This form of compression is lossy however, so the smaller the model becomes the less accurate it becomes. Typically model weights are represented as 32 bit floating point numbers. Common quantization methods reduce the number of bits to 2, 3, 4, 5 or 8.

### LLM Lineage

There are many open source LLMs that come from different sources. You must match the tooling used to run the LLM with it's lineage. Here are some examples:

* Llama - Meta's "released" their open source LLM and it has been used as a basis for many other models, including OpenLLaMA, Alpaca, Vicuna, Orca mini, WizardLM
* Falcon - currently (Jul 2023) the [leading Open LLM](https://huggingface.co/spaces/HuggingFaceH4/open_llm_leaderboard)
* OPT - another Meta open source LLM
* StarCoderBase

### Fine Tuning

Foundation (base) models are primarily only good at text completion. In order to use a model for other purposes (following instructions, chat applications) the model must be fine tuned. Fine tuning can also be used to impart domain knowledge in a base model. Fine tuning a base model requires considerably more resources and time than running the model.

Fine tuned models typical require the input prompt to be formatted in a specific way in order tot get maximum accuracy. For instance, some my include a `system` section to prime the LLM and then an `instruction` section for the instruction. Other prompt models are conversation and include prompts for the `user` and the `bot`. The model description will typically include a sample prompt.

### Context Window Length

The input and output of any LLM is limited by it's supported context window length. Initially most models were limited to 1024 - 2048 tokens, but recently we've seen a number of models with larger context sizes (4096, 8192).

### License

Some LLMs are licenses that permit commercial use (MIT / Apache 2.0), others do not.

## Resources

* https://www.reddit.com/r/LocalLLaMA/
* https://huggingface.co/