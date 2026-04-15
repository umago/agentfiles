# agentfiles

Dotfiles for AI assistants. A collection of skills, recipes, and behaviors
for agentic workflows.

Managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Structure

Files are stored at the root of this repository, mirroring the home
directory structure.

## Usage

From **inside** the `dotfiles` directory:

| Command          | Description                          |
|------------------|--------------------------------------|
| `make install`   | Symlink all dotfiles into `$HOME`    |
| `make uninstall` | Remove all symlinks                  |
| `make reinstall` | Re-apply symlinks after changes      |
| `make dry-run`   | Preview changes without applying     |
