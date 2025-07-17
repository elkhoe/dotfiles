# Dotfiles

My personal dotfiles repository for macOS. This repo contains configuration files for various tools and applications I use daily.

## What's included

- **`.zshrc`** - Zsh shell configuration
- **`gitconfig`** - Git configuration
- **`sshconfig`** - SSH configuration
- **`link.sh`** - Script to create symbolic links

## Quick Setup

1. Clone this repository:
   ```bash
   git clone <your-repo-url> ~/dotfiles
   cd ~/dotfiles
   ```

2. Make the link script executable:
   ```bash
   chmod +x link.sh
   ```

3. Run the link script to create symbolic links:
   ```bash
   ./link.sh
   ```

This will create symbolic links from your dotfiles to your home directory, backing up any existing files as `.backup`.

## Making Changes

**Always edit files in this repository**, not in your home directory. Since the files in your home directory are symbolic links, changes made to the files in this repo are immediately reflected.

Example:
```bash
# Edit your zshrc in the dotfiles repo
vim ~/dotfiles/zshrc

# Changes are immediately available because ~/.zshrc is a symlink
```

## Files

- `zshrc` - Zsh configuration with aliases, functions, and environment setup
- `gitconfig` - Git configuration with user settings and aliases
- `sshconfig` - SSH configuration for GitHub and other hosts
- `link.sh` - Automated script to create symbolic links with backup functionality

## Backup

The `link.sh` script automatically backs up existing configuration files as `.backup` before creating symlinks. If you need to restore:

```bash
mv ~/.zshrc.backup ~/.zshrc
mv ~/.gitconfig.backup ~/.gitconfig
mv ~/.ssh/config.backup ~/.ssh/config
```

## Syncing Across Machines

To use these dotfiles on a new machine:

1. Clone this repository
2. Run `./link.sh`
3. Your configuration is ready!

## License

This is my personal configuration - feel free to use and modify as needed.