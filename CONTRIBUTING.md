# Contributing

## Branch and PR Model

- Base branch: `main`
- Use focused branches: `fix/<topic>`, `chore/<topic>`, `docs/<topic>`
- Keep one logical fix/change per PR
- Do not combine unrelated refactors with bug fixes

## PR Title Format

PR titles must use conventional format:

- `fix(scope): summary`
- `chore(scope): summary`
- `docs(scope): summary`

Allowed types: `fix`, `feat`, `chore`, `docs`, `refactor`, `test`, `build`, `ci`, `perf`, `style`

## Required Checks (Retail)

PRs to `main` run:

- Lua syntax check
- Retail API guard
- PR title format validation
- Markdown lint (`markdownlint-cli2`)

PRs should only merge when all required checks pass.

## Release Process (Retail)

- Create and push a version tag: `vX.Y.Z`
- Tag push triggers the release workflow
- Workflow builds a zip artifact and publishes a GitHub Release with notes

## Retail Patch Watcher

- A scheduled workflow checks the latest retail client version and maps it to TOC interface format.
- If `ElvUI_Enhanced.toc` is behind, automation opens or updates a PR:

  - branch: `chore/retail-interface-bump`
  - title: `chore(toc): bump retail interface to <value>`

## Notes

- Current automation is retail-only by design.
- Multi-flavor (Classic/Cata) automation can be added later as a separate initiative.
