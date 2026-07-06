# PushToProd Homebrew Tap

The official Homebrew tap for [`prod`](https://github.com/pushtoprodai/prod-cli) — deploy
code **and agents** to the cloud with natural language. One self-contained binary, no
backend, your own credentials.

## Install

```bash
brew install pushtoprodai/tap/prod
```

Equivalently:

```bash
brew tap pushtoprodai/tap
brew install prod
```

Prefer not to use Homebrew? The install one-liner works too:

```bash
curl -fsSL https://raw.githubusercontent.com/pushtoprodai/prod-cli/main/scripts/install.sh | sh
```

macOS and Linux (glibc) are supported. On Windows, use **WSL2** and install the Linux build
inside it — see [docs/windows.md](https://github.com/pushtoprodai/prod-cli/blob/main/docs/windows.md).

## What is prod?

Describe intent in English; prod parses it, plans the deploy, shows you the plan and estimated
cost, and — once you approve — deploys to your cloud with **your own credentials** (no prod
account, nothing phones home).

Targets: Fly.io, Render, Vercel, Netlify, Heroku, AWS App Runner, Google Cloud Run, Azure
Container Apps, **Modal** (experimental), and anything else via a provider plugin. It also
speaks **MCP**, so AI agents can deploy, roll back, and tear down behind a human-approval gate.

Full documentation: **https://github.com/pushtoprodai/prod-cli**

## How this tap is maintained

`Formula/prod.rb` is published **automatically** by prod-cli's release workflow on every
tagged release — it is not edited by hand. Until the first release is cut, install via the
`curl … | sh` one-liner above. See
[docs/DISTRIBUTION.md](https://github.com/pushtoprodai/prod-cli/blob/main/docs/DISTRIBUTION.md)
for how releases and this formula are produced.
