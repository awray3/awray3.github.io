publish:
    quarto publish gh-pages --no-prompt

start-pr title:
    git checkout drafts
    if [[ -n "git ls-remote --heads git@github.com:awray3/awray3.github.io drafts" ]]; then git push -d origin drafts; fi
    git push origin drafts
    gh pr create --title "{{title}}" --web