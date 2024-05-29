# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Ian Buchan, Mamas A Mamas, Naveed Sattar, Darren M Ashcroft, Martin M Rutter, 2024.

import sys, csv, re

codes = [{"code":"34208","system":"gprdproduct"},{"code":"27447","system":"gprdproduct"},{"code":"31932","system":"gprdproduct"},{"code":"45343","system":"gprdproduct"},{"code":"23587","system":"gprdproduct"},{"code":"19195","system":"gprdproduct"},{"code":"17149","system":"gprdproduct"},{"code":"47674","system":"gprdproduct"},{"code":"34171","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensives-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensives-ratiopharm---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensives-ratiopharm---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensives-ratiopharm---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
