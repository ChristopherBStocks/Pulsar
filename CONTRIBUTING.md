# Contributing

## Commit Convention

This repository follows [Conventional Commits](https://www.conventionalcommits.org/), where possible:
```
fix(parser): handle empty commit messages gracefully
feat(cli): add support for --dry-run flag
refactor(core)!: change internal API to use async/await
```

## Developer Certificate of Origin

All commits must be signed off to indicate you agree to the [Developer Certificate of Origin (DCO)](https://developercertificate.org/). This is enforced automatically on pull requests.

Add the `-s` flag when committing:
```
git commit -s -m "feat(parser): handle empty commit messages gracefully"
```

This appends a `Signed-off-by` line using your git config name and email. If you forget, you can amend your last commit with:
```
git commit --amend -s --no-edit
```

Or sign off an entire branch with:
```
git rebase --signoff HEAD~<number of commits>
```

## Pull Requests

Open pull requests against the `main` branch. A DCO bot automatically checks that every commit in the PR is signed off. If the check fails, fix it by signing off the relevant commits:

```bash
git rebase --signoff HEAD~<number of commits>
git push --force-with-lease
```

> **Note:** The DCO check must pass before a PR can be merged.