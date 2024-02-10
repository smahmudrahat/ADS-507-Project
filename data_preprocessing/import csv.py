import csv
import os
import sys

# Directory containing the TSV files
directory = "/Users/smsultanmahmudrahat/Downloads/department/Data_engineering/Project/imbd/"

# Increase the maximum field size limit
max_int = sys.maxsize
while True:
    # Decrease the max_int value by half each time to handle the OverflowError
    try:
        csv.field_size_limit(max_int)
        break
    except OverflowError:
        max_int = int(max_int / 2)

# Loop through all files in the directory
for filename in os.listdir(directory):
    # Check if the file is a TSV file
    if filename.endswith(".tsv"):
        tsv_path = os.path.join(directory, filename)
        csv_path = os.path.join(directory, filename.replace('.tsv', '.csv'))

        with open(tsv_path, 'r', newline='', encoding='utf-8') as infile, \
             open(csv_path, 'w', newline='', encoding='utf-8') as outfile:
            tsv_reader = csv.reader(infile, delimiter='\t')
            csv_writer = csv.writer(outfile)

            # Write each row from the TSV file into the CSV file
            for row in tsv_reader:
                csv_writer.writerow(row)

        print(f"Converted {filename} to CSV.")

print("Conversion of all TSV files to CSV completed.")
