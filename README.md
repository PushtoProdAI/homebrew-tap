# PushToProd Homebrew Tap

This is the official Homebrew tap for PushToProd's development tools and CLI applications.

## What is a Homebrew Tap?

A Homebrew tap is a third-party repository of Homebrew formulas. It allows you to install software that isn't included in the main Homebrew repository.

## Available Packages

### `prod` - Production CLI Tool

A powerful command-line tool for development workflows, deployment management, and production operations.

**Install:**
```bash
brew install pushtoprod/tap/prod
```

**Features:**
- 🚀 **Development workflows** - Streamline your development process
- 🏗️ **Deployment management** - Deploy and manage applications
- 🔧 **Production operations** - Monitor and maintain production systems
- 📊 **Analytics dashboard** - Track usage and performance
- 🔐 **Authentication** - Secure access to services
- 🌐 **Multi-platform** - Works on macOS, Linux, and Windows

## Installation

### Add the Tap
```bash
brew tap pushtoprodai/tap
```

### Install Packages
```bash
# Install the Production CLI
brew install prod

# Or install directly without adding the tap
brew install pushtoprodai/tap/prod
```

## Usage

### Production CLI
```bash
# Check version
prod --version

# Get help
prod --help

# Run commands
prod <command>
```

## Updates

Update your installed packages:
```bash
# Update all packages from this tap
brew upgrade

# Update specific package
brew upgrade prod
```

## Uninstallation

Remove packages:
```bash
# Remove specific package
brew uninstall prod

# Remove the tap (removes all packages from this tap)
brew untap pushtoprodai/tap
```

## Requirements

- **macOS**: 10.15 (Catalina) or later
- **Linux**: Most modern distributions
- **Homebrew**: Latest version recommended

## Support

- **Documentation**: [GitHub Repository](https://github.com/pushtoprod/prod)
- **Issues**: [GitHub Issues](https://github.com/pushtoprod/prod/issues)
- **Support**: [PushToProd Support](https://github.com/pushtoprod/prod/issues)

## Development

This tap is automatically updated when new versions are released. The formulas point to our Supabase storage for fast, reliable downloads.

### Formula Details

- **Source**: Built from [pushtoprod/prod](https://github.com/pushtoprod/prod)
- **Storage**: Hosted on Supabase for optimal performance
- **Updates**: Automatic updates via GitHub Actions
- **Signing**: All packages are GPG signed for security

## License

This tap and its packages are licensed under the MIT License. See individual package licenses for details.

---

**Made with ❤️ by the PushToProd team**
