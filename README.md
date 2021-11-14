# Alex Github Action

This is a Github Action for [alex](https://github.com/get-alex/alex), a prose
linter which helps identify insensitive language.

## Usage

Here's a minimal example of a GitHub action which runs alex with no arguments
on every push and pull request:

```yaml
name: Check for insensitive writing
on: [push, pull_request]
jobs:
  alex_lint:
    name: Lint textfiles using alex
    runs-on: ubuntu-latest
    steps:
      - name: Lint
        uses: ouroboros8/alex-action@master
```

If you want to pass arguments to `alex`, use the
[with.args](https://docs.github.com/en/actions/learn-github-actions/workflow-syntax-for-github-actions#jobsjob_idstepswithargs)
parameter to the lint step:

```yaml
name: Check for insensitive writing
on: [push, pull_request]
jobs:
  alex_lint:
    name: Lint HTML using alex
    runs-on: ubuntu-latest
    steps:
      - name: Lint
        uses: ouroboros8/alex-action@master
        with:
          args: --html
```
