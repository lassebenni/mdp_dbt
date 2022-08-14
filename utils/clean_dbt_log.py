import os
import re

path = os.environ.get('DBT_LOG_PATH', 'output.txt')

with open(path) as input_file:
    lines = input_file.readlines()

    separated_lines = re.split('([0-9][0-9]:[0-9][0-9]:[0-9][0-9])', ' '.join(lines))

    with open('dbt.log', 'w') as output_file:
            for x in range(1,len(separated_lines) - 1,2):
                print(f"separated_lines[x],separated_lines[x+1]", file=output_file)
