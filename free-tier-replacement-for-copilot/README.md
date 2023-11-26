# Colab free-tier replacement for copilot on VSCode

The colabs in this directory can be used as a drop in replacement for the copilot on VSCode

After running the colab, note your ngrok URL and update your copilot extension advanced settings `settings.json` to be:

```
{
    "github.copilot.advanced": {
        "debug.testOverrideProxyUrl": "https://8a70-34-90-231-157.ngrok-free.app",
        "debug.overrideProxyUrl": "https://8a70-34-90-231-157.ngrok-free.app"
    }
}
```

(replace the URL with your ngrok URL)
