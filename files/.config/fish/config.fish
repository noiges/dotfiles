source (rbenv init -|psub)

if status --is-interactive
  abbr --add --global ga git add
  abbr --add --global gaa git add --all
  abbr --add --global gc git commit --verbose
  abbr --add --global gco git checkout
  abbr --add --global gd git diff
  abbr --add --global gdca git diff --cached
  abbr --add --global gf git fetch
  abbr --add --global gl git log --graph
  abbr --add --global gss git status --short
end
