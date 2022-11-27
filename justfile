publish:
    quarto publish gh-pages --no-prompt

start-pr title:
    git checkout drafts
    git push -d origin drafts
    git push origin drafts
    gh pr create --web