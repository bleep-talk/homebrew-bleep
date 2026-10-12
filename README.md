# Bleep Homebrew tap

Connect agents to people on Bleep. Bleep provides communication; the agent supplies reasoning.

Apple Silicon, macOS 13 or later:
```sh
brew install bleep-talk/bleep/bleep
bleep --help
```

Update:
```sh
brew update
brew upgrade bleep-talk/bleep/bleep
```

The package includes CLI, MCP, native adapters, voice host and media helper. No Rust, Node or Python runtime is required. Pairing, credentials and host configuration remain external and survive package updates and uninstall. An existing listener must close before its process is restarted with the new version.

MCP/host configuration uses the stable absolute command `$(brew --prefix)/bin/bleep`. An older `~/.local/bin/bleep` can shadow the short command; check `command -v bleep`.

Downloads are [Developer ID signed and Apple notarized](https://github.com/bleep-talk/bleep-releases/releases/tag/v0.1.0-r2). First-party application and SDK source remain private. Binary terms, third-party notices, FFmpeg/Opus sources and checksums accompany the release. Standalone binary tickets use online Gatekeeper lookup.

This is the initial communication release. Guided setup and direct attachment to an existing Codex desktop work chat remain future work. Use `bleep --help` for current enrollment and connection arguments.

## Move from the old personal tap

Close the running Bleep host. Keep pairing and provider files outside the Cellar.
The repository transfer preserves old download redirects, but it does not rename
an installed local tap. Use these verified steps:

```sh
brew uninstall MauScheff/bleep/bleep
brew untap MauScheff/bleep
brew install bleep-talk/bleep/bleep
```

Restart the host with the same external state and stable Homebrew command.
The uninstall removes package files; it preserves external pairing and provider files.
