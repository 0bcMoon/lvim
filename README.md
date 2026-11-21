# LunarVim Configuration

My personal LunarVim configuration, organized into Lua modules under `lua/cMoon/`.

## Contents

- `config.lua`: entry point that loads the configuration modules.
- `lua/cMoon/`: keymaps, editor settings, autocommands, plugins, snippets, search, and competitive programming configuration.
- `ftplugin/java.lua`: Java-specific configuration.
- `snippets/`: C++ and Make snippets with package metadata.
- `lazy-lock.json`: locked plugin revisions.

## Use

This repository contains configuration for an existing LunarVim installation. Review `config.lua` and its required modules before adapting them to your own setup. Back up your current configuration before replacing any files.

Plugin configuration and external tool assumptions are personal to this setup; this is not a standalone Neovim distribution or an installation script.
