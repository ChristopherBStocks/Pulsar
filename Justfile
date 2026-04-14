lint:
    yamllint .
    ansible-lint

format:
    nix fmt .
    ansible-lint --fix

changelog version:
    git tag -a v{{ version }} -m "chore(release): v{{ version }}"
    git-cliff \
      --exclude-path "collections/**" \
      --output CHANGELOG.md
    git add -A
    git commit -s -m "chore(release): add changelog for v{{ version }}"
    git tag -f v{{ version }} -m "chore(release): v{{ version }}"

cl version:
    just changelog {{ version }}

collection-changelog collection version:
    git tag -a {{ collection }}/v{{ version }} -m "chore(release): {{ collection }}/v{{ version }}"
    git-cliff \
      --include-path "collections/{{ collection }}/**"  \
      --output collections/{{ collection }}/CHANGELOG.md
    git add -A
    git commit -s -m "chore(release/{{ collection }}): add changelog for {{ collection }}/v{{ version }}"
    git tag -f {{ collection }}/v{{ version }} -m "chore(release): {{ collection }}/v{{ version }}"

ccl collection version:
    just collection-changelog {{ collection }} {{ version }}
