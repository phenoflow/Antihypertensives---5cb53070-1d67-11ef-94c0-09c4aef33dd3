# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Ian Buchan, Mamas A Mamas, Naveed Sattar, Darren M Ashcroft, Martin M Rutter, 2024.

import sys, csv, re

codes = [{"code":"2495","system":"gprdproduct"},{"code":"63555","system":"gprdproduct"},{"code":"66195","system":"gprdproduct"},{"code":"39602","system":"gprdproduct"},{"code":"55548","system":"gprdproduct"},{"code":"36767","system":"gprdproduct"},{"code":"32091","system":"gprdproduct"},{"code":"814","system":"gprdproduct"},{"code":"45305","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensives-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensives-bumetanide---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensives-bumetanide---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensives-bumetanide---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
