# Reverse the lines order
git log --oneline | tac

# Search
rg -i 'console.log' ./src
grep -rni 'console.log' ./src
