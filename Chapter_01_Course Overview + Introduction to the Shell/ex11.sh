# Write a command that copies a file to a backup with today’s date in the filename (e.g., notes.txt → notes_2026-01-12.txt).
# (Hint: $(date +%Y-%m-%d)).

#mv if you want to move the file instead of copying it, use the mv command instead of cp.

nano file.txt

mv file.txt file_$(date +%Y-%m-%d).txt