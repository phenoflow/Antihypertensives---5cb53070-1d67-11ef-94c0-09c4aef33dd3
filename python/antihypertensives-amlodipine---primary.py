# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Ian Buchan, Mamas A Mamas, Naveed Sattar, Darren M Ashcroft, Martin M Rutter, 2024.

import sys, csv, re

codes = [{"code":"56334","system":"gprdproduct"},{"code":"54654","system":"gprdproduct"},{"code":"71","system":"gprdproduct"},{"code":"34093","system":"gprdproduct"},{"code":"45070","system":"gprdproduct"},{"code":"56147","system":"gprdproduct"},{"code":"59762","system":"gprdproduct"},{"code":"49636","system":"gprdproduct"},{"code":"59001","system":"gprdproduct"},{"code":"54696","system":"gprdproduct"},{"code":"54515","system":"gprdproduct"},{"code":"60244","system":"gprdproduct"},{"code":"6856","system":"gprdproduct"},{"code":"52440","system":"gprdproduct"},{"code":"66817","system":"gprdproduct"},{"code":"6477","system":"gprdproduct"},{"code":"61374","system":"gprdproduct"},{"code":"63515","system":"gprdproduct"},{"code":"58580","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensives-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensives-amlodipine---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensives-amlodipine---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensives-amlodipine---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
