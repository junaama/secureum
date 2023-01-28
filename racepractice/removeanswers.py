import re

def remove_answers(filepath):
    # Open the file for reading
    with open(filepath, 'r') as f:
        # Read the file's contents into a list of lines
        lines = f.readlines()

    # Use a regular expression to find lines that contain answers
    pattern = re.compile(r'\[Answers\]:.*')
    lines_without_answers = [line for line in lines if not pattern.search(line)]

    # Open the file for writing
    with open(filepath, 'w') as f:
        # Write the lines without answers back to the file
        f.writelines(lines_without_answers)

remove_answers("file.txt")