# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Ian Buchan, Mamas A Mamas, Naveed Sattar, Darren M Ashcroft, Martin M Rutter, 2024.

import sys, csv, re

codes = [{"code":"4540","system":"gprdproduct"},{"code":"4226","system":"gprdproduct"},{"code":"14965","system":"gprdproduct"},{"code":"37747","system":"gprdproduct"},{"code":"21423","system":"gprdproduct"},{"code":"5723","system":"gprdproduct"},{"code":"41232","system":"gprdproduct"},{"code":"52427","system":"gprdproduct"},{"code":"40571","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensives-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensives-cozaarcomp---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensives-cozaarcomp---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensives-cozaarcomp---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
