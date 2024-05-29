# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Ian Buchan, Mamas A Mamas, Naveed Sattar, Darren M Ashcroft, Martin M Rutter, 2024.

import sys, csv, re

codes = [{"code":"25644","system":"gprdproduct"},{"code":"60934","system":"gprdproduct"},{"code":"39233","system":"gprdproduct"},{"code":"58407","system":"gprdproduct"},{"code":"38395","system":"gprdproduct"},{"code":"59448","system":"gprdproduct"},{"code":"5220","system":"gprdproduct"},{"code":"34867","system":"gprdproduct"},{"code":"18497","system":"gprdproduct"},{"code":"35938","system":"gprdproduct"},{"code":"3222","system":"gprdproduct"},{"code":"58910","system":"gprdproduct"},{"code":"62711","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensives-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensives-180mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensives-180mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensives-180mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
