# rubocop-challenge

[Custom action](https://docs.github.com/en//actions/creating-actions/about-custom-actions)
to run [rubocop-challenger](https://github.com/ryz310/rubocop_challenger).

## Usage

An example workflow to run rubocop-challenger via
[manual running](https://docs.github.com/en//actions/managing-workflow-runs/manually-running-a-workflow).

```yaml
# .github/workflows/rubocop-challenge.yml
name: rubocop-challenge

on:
  workflow_dispatch:

jobs:
  run:
    runs-on: ubuntu-latest
    steps:
      - uses: r7kamura/rubocop-challenge@v0
```

Now you can run rubocop-challenge via GitHub Actions page,
or [GitHub CLI](https://cli.github.com/) like this:

```
gh workflow run rubocop-challenge
```

## Inputs

### `base_branch`

- Pull request base branch.
- default: `"main"`
