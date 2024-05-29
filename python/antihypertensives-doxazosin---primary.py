# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Ian Buchan, Mamas A Mamas, Naveed Sattar, Darren M Ashcroft, Martin M Rutter, 2024.

import sys, csv, re

codes = [{"code":"57784","system":"gprdproduct"},{"code":"61066","system":"gprdproduct"},{"code":"66065","system":"gprdproduct"},{"code":"19193","system":"gprdproduct"},{"code":"62351","system":"gprdproduct"},{"code":"41543","system":"gprdproduct"},{"code":"63158","system":"gprdproduct"},{"code":"119","system":"gprdproduct"},{"code":"1294","system":"gprdproduct"},{"code":"34715","system":"gprdproduct"},{"code":"50467","system":"gprdproduct"},{"code":"56145","system":"gprdproduct"},{"code":"57448","system":"gprdproduct"},{"code":"48150","system":"gprdproduct"},{"code":"65853","system":"gprdproduct"},{"code":"62019","system":"gprdproduct"},{"code":"61123","system":"gprdproduct"},{"code":"60200","system":"gprdproduct"},{"code":"55916","system":"gprdproduct"},{"code":"34625","system":"gprdproduct"},{"code":"60319","system":"gprdproduct"},{"code":"62158","system":"gprdproduct"},{"code":"59209","system":"gprdproduct"},{"code":"64233","system":"gprdproduct"},{"code":"47807","system":"gprdproduct"},{"code":"54785","system":"gprdproduct"},{"code":"58276","system":"gprdproduct"},{"code":"35603","system":"gprdproduct"},{"code":"55906","system":"gprdproduct"},{"code":"53322","system":"gprdproduct"},{"code":"61283","system":"gprdproduct"},{"code":"20369","system":"gprdproduct"},{"code":"493","system":"gprdproduct"},{"code":"34342","system":"gprdproduct"},{"code":"57074","system":"gprdproduct"},{"code":"58325","system":"gprdproduct"},{"code":"51685","system":"gprdproduct"},{"code":"19216","system":"gprdproduct"},{"code":"59862","system":"gprdproduct"},{"code":"40891","system":"gprdproduct"},{"code":"40678","system":"gprdproduct"},{"code":"65159","system":"gprdproduct"},{"code":"63314","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensives-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensives-doxazosin---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensives-doxazosin---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensives-doxazosin---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
