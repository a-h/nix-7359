# github.com/a-h/nix-7359

Explore creating a lot of derivations to trigger the GC.

## Tasks

### copy-to-file-store

Copy everything in this flake to the Nix store. The Flake creates 10k derivations, so this will copy a lot of files.

```bash
nix copy --offline --derivation --no-check-sigs --to file://$HOME/nix-store
```

### clear-temp-store

Clear the temporary store.

```bash
rm -rf $HOME/nix-store
```
