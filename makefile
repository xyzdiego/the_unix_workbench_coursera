touch README.md
echo "Title of project: The Unix Workbench Coursera. Course Project." > README.md
echo "" >> README.md
echo "Date make ran this program:" >> README.md
date >> README.md
echo "" >> README.md
echo "Number of lines file 'guessingame.sh' contains: " >> README.md
cat guessingame.sh | wc -l >> README.md
