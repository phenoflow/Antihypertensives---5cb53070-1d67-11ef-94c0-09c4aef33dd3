cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  antihypertensives-250mg---primary:
    run: antihypertensives-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  antihypertensives-400mg---primary:
    run: antihypertensives-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: antihypertensives-250mg---primary/output
  antihypertensives-025mg---primary:
    run: antihypertensives-025mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: antihypertensives-400mg---primary/output
  antihypertensives-slowrelease---primary:
    run: antihypertensives-slowrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: antihypertensives-025mg---primary/output
  antihypertensives-320mg---primary:
    run: antihypertensives-320mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: antihypertensives-slowrelease---primary/output
  antihypertensives-angitil---primary:
    run: antihypertensives-angitil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: antihypertensives-320mg---primary/output
  antihypertensives-nifedipine---primary:
    run: antihypertensives-nifedipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: antihypertensives-angitil---primary/output
  antihypertensives-candesartan---primary:
    run: antihypertensives-candesartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: antihypertensives-nifedipine---primary/output
  antihypertensives-180mg---primary:
    run: antihypertensives-180mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: antihypertensives-candesartan---primary/output
  antihypertensives-120mg---primary:
    run: antihypertensives-120mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: antihypertensives-180mg---primary/output
  antihypertensives-adizemxl---primary:
    run: antihypertensives-adizemxl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: antihypertensives-120mg---primary/output
  antihypertensives-motens---primary:
    run: antihypertensives-motens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: antihypertensives-adizemxl---primary/output
  antihypertensives-accupro---primary:
    run: antihypertensives-accupro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: antihypertensives-motens---primary/output
  antihypertensives-ratiopharm---primary:
    run: antihypertensives-ratiopharm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: antihypertensives-accupro---primary/output
  antihypertensives-3125mg---primary:
    run: antihypertensives-3125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: antihypertensives-ratiopharm---primary/output
  antihypertensives-dexcel---primary:
    run: antihypertensives-dexcel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: antihypertensives-3125mg---primary/output
  antihypertensives-telmisartan---primary:
    run: antihypertensives-telmisartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: antihypertensives-dexcel---primary/output
  antihypertensives-250microgram---primary:
    run: antihypertensives-250microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: antihypertensives-telmisartan---primary/output
  antihypertensives-modifiedrelease---primary:
    run: antihypertensives-modifiedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: antihypertensives-250microgram---primary/output
  antihypertensives-doxazosin---primary:
    run: antihypertensives-doxazosin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: antihypertensives-modifiedrelease---primary/output
  antihypertensives-acebutolol---primary:
    run: antihypertensives-acebutolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: antihypertensives-doxazosin---primary/output
  antihypertensives-eprosartan---primary:
    run: antihypertensives-eprosartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: antihypertensives-acebutolol---primary/output
  antihypertensives-amlostin---primary:
    run: antihypertensives-amlostin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: antihypertensives-eprosartan---primary/output
  antihypertensives-verapamil---primary:
    run: antihypertensives-verapamil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: antihypertensives-amlostin---primary/output
  antihypertensives-625mg---primary:
    run: antihypertensives-625mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: antihypertensives-verapamil---primary/output
  antihypertensives-codiovan---primary:
    run: antihypertensives-codiovan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: antihypertensives-625mg---primary/output
  antihypertensives-100mg---primary:
    run: antihypertensives-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: antihypertensives-codiovan---primary/output
  antihypertensives-hyperplasia---primary:
    run: antihypertensives-hyperplasia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: antihypertensives-100mg---primary/output
  antihypertensives-irbesartan---primary:
    run: antihypertensives-irbesartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: antihypertensives-hyperplasia---primary/output
  antihypertensives-felotens---primary:
    run: antihypertensives-felotens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: antihypertensives-irbesartan---primary/output
  antihypertensives-360mg---primary:
    run: antihypertensives-360mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: antihypertensives-felotens---primary/output
  antihypertensives-betaadalat---primary:
    run: antihypertensives-betaadalat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: antihypertensives-360mg---primary/output
  antihypertensives-odrik---primary:
    run: antihypertensives-odrik---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: antihypertensives-betaadalat---primary/output
  antihypertensives-cardioplen---primary:
    run: antihypertensives-cardioplen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: antihypertensives-odrik---primary/output
  antihypertensives-perindopril---primary:
    run: antihypertensives-perindopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: antihypertensives-cardioplen---primary/output
  antihypertensives-olmesartan---primary:
    run: antihypertensives-olmesartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: antihypertensives-perindopril---primary/output
  antihypertensives-felogen---primary:
    run: antihypertensives-felogen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: antihypertensives-olmesartan---primary/output
  antihypertensives-adipine---primary:
    run: antihypertensives-adipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: antihypertensives-felogen---primary/output
  antihypertensives-exforge---primary:
    run: antihypertensives-exforge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: antihypertensives-adipine---primary/output
  antihypertensives-lopresor---primary:
    run: antihypertensives-lopresor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: antihypertensives-exforge---primary/output
  antihypertensives-berkozide---primary:
    run: antihypertensives-berkozide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: antihypertensives-lopresor---primary/output
  antihypertensives-300mg---primary:
    run: antihypertensives-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: antihypertensives-berkozide---primary/output
  antihypertensives-innovace---primary:
    run: antihypertensives-innovace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: antihypertensives-300mg---primary/output
  antihypertensives-amlodipine---primary:
    run: antihypertensives-amlodipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: antihypertensives-innovace---primary/output
  antihypertensives-furosemide---primary:
    run: antihypertensives-furosemide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: antihypertensives-amlodipine---primary/output
  antihypertensives-parmid---primary:
    run: antihypertensives-parmid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: antihypertensives-furosemide---primary/output
  antihypertensives-erbumine---primary:
    run: antihypertensives-erbumine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: antihypertensives-parmid---primary/output
  antihypertensives-totamol---primary:
    run: antihypertensives-totamol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: antihypertensives-erbumine---primary/output
  sectral-antihypertensives---primary:
    run: sectral-antihypertensives---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: antihypertensives-totamol---primary/output
  antihypertensives-hillcross---primary:
    run: antihypertensives-hillcross---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: sectral-antihypertensives---primary/output
  antihypertensives-titration---primary:
    run: antihypertensives-titration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: antihypertensives-hillcross---primary/output
  antihypertensives-retard---primary:
    run: antihypertensives-retard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: antihypertensives-titration---primary/output
  antihypertensives-cozaarcomp---primary:
    run: antihypertensives-cozaarcomp---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: antihypertensives-retard---primary/output
  antihypertensives-spiroctan---primary:
    run: antihypertensives-spiroctan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: antihypertensives-cozaarcomp---primary/output
  antihypertensives-atenixco---primary:
    run: antihypertensives-atenixco---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: antihypertensives-spiroctan---primary/output
  antihypertensives-elanpharma---primary:
    run: antihypertensives-elanpharma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: antihypertensives-atenixco---primary/output
  antihypertensives-sandoz---primary:
    run: antihypertensives-sandoz---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: antihypertensives-elanpharma---primary/output
  antihypertensives-liquid---primary:
    run: antihypertensives-liquid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: antihypertensives-sandoz---primary/output
  antihypertensives-takeda---primary:
    run: antihypertensives-takeda---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: antihypertensives-liquid---primary/output
  antihypertensives-tensopril---primary:
    run: antihypertensives-tensopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: antihypertensives-takeda---primary/output
  antihypertensives-spironolactone---primary:
    run: antihypertensives-spironolactone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: antihypertensives-tensopril---primary/output
  antihypertensives-alphavase---primary:
    run: antihypertensives-alphavase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: antihypertensives-spironolactone---primary/output
  antihypertensives-375mg---primary:
    run: antihypertensives-375mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: antihypertensives-alphavase---primary/output
  antihypertensives-pantheon---primary:
    run: antihypertensives-pantheon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: antihypertensives-375mg---primary/output
  antihypertensives-aldactide---primary:
    run: antihypertensives-aldactide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: antihypertensives-pantheon---primary/output
  antihypertensives-disogram---primary:
    run: antihypertensives-disogram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: antihypertensives-aldactide---primary/output
  antihypertensives-frusol---primary:
    run: antihypertensives-frusol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: antihypertensives-disogram---primary/output
  zestoretic-antihypertensives---primary:
    run: zestoretic-antihypertensives---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: antihypertensives-frusol---primary/output
  antihypertensives-sovereign---primary:
    run: antihypertensives-sovereign---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: zestoretic-antihypertensives---primary/output
  antihypertensives-chlorothiazide---primary:
    run: antihypertensives-chlorothiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: antihypertensives-sovereign---primary/output
  geigy-antihypertensives---primary:
    run: geigy-antihypertensives---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: antihypertensives-chlorothiazide---primary/output
  antihypertensives-teveten---primary:
    run: antihypertensives-teveten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: geigy-antihypertensives---primary/output
  antihypertensives-slozem---primary:
    run: antihypertensives-slozem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: antihypertensives-teveten---primary/output
  antihypertensives-betim---primary:
    run: antihypertensives-betim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: antihypertensives-slozem---primary/output
  antihypertensives-ednyt---primary:
    run: antihypertensives-ednyt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: antihypertensives-betim---primary/output
  antihypertensives-coaprovel---primary:
    run: antihypertensives-coaprovel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: antihypertensives-ednyt---primary/output
  antihypertensives-lacidipine---primary:
    run: antihypertensives-lacidipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: antihypertensives-coaprovel---primary/output
  antihypertensives-abbott---primary:
    run: antihypertensives-abbott---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: antihypertensives-lacidipine---primary/output
  antihypertensives-celectol---primary:
    run: antihypertensives-celectol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: antihypertensives-abbott---primary/output
  antihypertensives-carace---primary:
    run: antihypertensives-carace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: antihypertensives-celectol---primary/output
  antihypertensives-vascace---primary:
    run: antihypertensives-vascace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: antihypertensives-carace---primary/output
  antihypertensives-viazem---primary:
    run: antihypertensives-viazem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: antihypertensives-vascace---primary/output
  antihypertensives-wockhardt---primary:
    run: antihypertensives-wockhardt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: antihypertensives-viazem---primary/output
  generic-antihypertensives---primary:
    run: generic-antihypertensives---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: antihypertensives-wockhardt---primary/output
  antihypertensives-lexon---primary:
    run: antihypertensives-lexon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: generic-antihypertensives---primary/output
  antihypertensives-enalapril---primary:
    run: antihypertensives-enalapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: antihypertensives-lexon---primary/output
  antihypertensives-folpik---primary:
    run: antihypertensives-folpik---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: antihypertensives-enalapril---primary/output
  antihypertensives-azilsartan---primary:
    run: antihypertensives-azilsartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: antihypertensives-folpik---primary/output
  antihypertensives-bisoprolol---primary:
    run: antihypertensives-bisoprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: antihypertensives-azilsartan---primary/output
  antihypertensives-capozide---primary:
    run: antihypertensives-capozide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: antihypertensives-bisoprolol---primary/output
  antihypertensives-valsartan---primary:
    run: antihypertensives-valsartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: antihypertensives-capozide---primary/output
  antihypertensives-tablet---primary:
    run: antihypertensives-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: antihypertensives-valsartan---primary/output
  corgaretic-antihypertensives---primary:
    run: corgaretic-antihypertensives---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: antihypertensives-tablet---primary/output
  antihypertensives-terazosin---primary:
    run: antihypertensives-terazosin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: corgaretic-antihypertensives---primary/output
  antihypertensives-torem---primary:
    run: antihypertensives-torem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: antihypertensives-terazosin---primary/output
  antihypertensives-shire---primary:
    run: antihypertensives-shire---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: antihypertensives-torem---primary/output
  antihypertensives-rapranol---primary:
    run: antihypertensives-rapranol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: antihypertensives-shire---primary/output
  antihypertensives-hytrin---primary:
    run: antihypertensives-hytrin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: antihypertensives-rapranol---primary/output
  antihypertensives-240mg---primary:
    run: antihypertensives-240mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: antihypertensives-hytrin---primary/output
  antihypertensives-congescor---primary:
    run: antihypertensives-congescor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: antihypertensives-240mg---primary/output
  antihypertensives-zemtard---primary:
    run: antihypertensives-zemtard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: antihypertensives-congescor---primary/output
  antihypertensives-felodipine---primary:
    run: antihypertensives-felodipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: antihypertensives-zemtard---primary/output
  antihypertensives-atenolol---primary:
    run: antihypertensives-atenolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: antihypertensives-felodipine---primary/output
  antihypertensives-benzthiazide---primary:
    run: antihypertensives-benzthiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: antihypertensives-atenolol---primary/output
  antihypertensives-atenamin---primary:
    run: antihypertensives-atenamin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: antihypertensives-benzthiazide---primary/output
  antihypertensives-oxprenolol---primary:
    run: antihypertensives-oxprenolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: antihypertensives-atenamin---primary/output
  antihypertensives-noyada---primary:
    run: antihypertensives-noyada---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: antihypertensives-oxprenolol---primary/output
  antihypertensives-hoechst---primary:
    run: antihypertensives-hoechst---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: antihypertensives-noyada---primary/output
  antihypertensives-propranolol---primary:
    run: antihypertensives-propranolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: antihypertensives-hoechst---primary/output
  antihypertensives-coamilofruse---primary:
    run: antihypertensives-coamilofruse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: antihypertensives-propranolol---primary/output
  antihypertensives-tosilate---primary:
    run: antihypertensives-tosilate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: antihypertensives-coamilofruse---primary/output
  antihypertensives-aldactone---primary:
    run: antihypertensives-aldactone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: antihypertensives-tosilate---primary/output
  antihypertensives-cardura---primary:
    run: antihypertensives-cardura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: antihypertensives-aldactone---primary/output
  antihypertensives-tenormin---primary:
    run: antihypertensives-tenormin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: antihypertensives-cardura---primary/output
  antihypertensives-solution---primary:
    run: antihypertensives-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: antihypertensives-tenormin---primary/output
  antihypertensives-burinex---primary:
    run: antihypertensives-burinex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: antihypertensives-solution---primary/output
  hydrosaluric-antihypertensives---primary:
    run: hydrosaluric-antihypertensives---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: antihypertensives-burinex---primary/output
  antihypertensives-kaplon---primary:
    run: antihypertensives-kaplon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: hydrosaluric-antihypertensives---primary/output
  antihypertensives-lasix---primary:
    run: antihypertensives-lasix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: antihypertensives-kaplon---primary/output
  antihypertensives-navidrex---primary:
    run: antihypertensives-navidrex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: antihypertensives-lasix---primary/output
  antihypertensives-cyclopenthiazide---primary:
    run: antihypertensives-cyclopenthiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule122
      potentialCases:
        id: potentialCases
        source: antihypertensives-navidrex---primary/output
  antihypertensives-lopace---primary:
    run: antihypertensives-lopace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule123
      potentialCases:
        id: potentialCases
        source: antihypertensives-cyclopenthiazide---primary/output
  antihypertensives-indapamide---primary:
    run: antihypertensives-indapamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule124
      potentialCases:
        id: potentialCases
        source: antihypertensives-lopace---primary/output
  antihypertensives-losartan---primary:
    run: antihypertensives-losartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule125
      potentialCases:
        id: potentialCases
        source: antihypertensives-indapamide---primary/output
  antihypertensives-aventi---primary:
    run: antihypertensives-aventi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule126
      potentialCases:
        id: potentialCases
        source: antihypertensives-losartan---primary/output
  antihypertensives-adizemsr---primary:
    run: antihypertensives-adizemsr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule127
      potentialCases:
        id: potentialCases
        source: antihypertensives-aventi---primary/output
  antihypertensives-esidrex---primary:
    run: antihypertensives-esidrex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule128
      potentialCases:
        id: potentialCases
        source: antihypertensives-adizemsr---primary/output
  antihypertensives-indoramin---primary:
    run: antihypertensives-indoramin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule129
      potentialCases:
        id: potentialCases
        source: antihypertensives-esidrex---primary/output
  antihypertensives-quinapril---primary:
    run: antihypertensives-quinapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule130
      potentialCases:
        id: potentialCases
        source: antihypertensives-indoramin---primary/output
  antihypertensives-capoten---primary:
    run: antihypertensives-capoten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule131
      potentialCases:
        id: potentialCases
        source: antihypertensives-quinapril---primary/output
  moduretic-antihypertensives---primary:
    run: moduretic-antihypertensives---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule132
      potentialCases:
        id: potentialCases
        source: antihypertensives-capoten---primary/output
  antihypertensives-coversyl---primary:
    run: antihypertensives-coversyl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule133
      potentialCases:
        id: potentialCases
        source: moduretic-antihypertensives---primary/output
  antihypertensives-trinity---primary:
    run: antihypertensives-trinity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule134
      potentialCases:
        id: potentialCases
        source: antihypertensives-coversyl---primary/output
  antihypertensives-neonaclex---primary:
    run: antihypertensives-neonaclex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule135
      potentialCases:
        id: potentialCases
        source: antihypertensives-trinity---primary/output
  antihypertensives-fosinopril---primary:
    run: antihypertensives-fosinopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule136
      potentialCases:
        id: potentialCases
        source: antihypertensives-neonaclex---primary/output
  antihypertensives-cozidocapt---primary:
    run: antihypertensives-cozidocapt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule137
      potentialCases:
        id: potentialCases
        source: antihypertensives-fosinopril---primary/output
  antihypertensives-zentiva---primary:
    run: antihypertensives-zentiva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule138
      potentialCases:
        id: potentialCases
        source: antihypertensives-cozidocapt---primary/output
  antihypertensives-cardicor---primary:
    run: antihypertensives-cardicor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule139
      potentialCases:
        id: potentialCases
        source: antihypertensives-zentiva---primary/output
  antihypertensives-maleate---primary:
    run: antihypertensives-maleate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule140
      potentialCases:
        id: potentialCases
        source: antihypertensives-cardicor---primary/output
  antihypertensives-lercanidipine---primary:
    run: antihypertensives-lercanidipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule141
      potentialCases:
        id: potentialCases
        source: antihypertensives-maleate---primary/output
  antihypertensives-lisinopril---primary:
    run: antihypertensives-lisinopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule142
      potentialCases:
        id: potentialCases
        source: antihypertensives-lercanidipine---primary/output
  antihypertensives-150mg---primary:
    run: antihypertensives-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule143
      potentialCases:
        id: potentialCases
        source: antihypertensives-lisinopril---primary/output
  antihypertensives-captopril---primary:
    run: antihypertensives-captopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule144
      potentialCases:
        id: potentialCases
        source: antihypertensives-150mg---primary/output
  antihypertensives-triapin---primary:
    run: antihypertensives-triapin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule145
      potentialCases:
        id: potentialCases
        source: antihypertensives-captopril---primary/output
  antihypertensives-goldshield---primary:
    run: antihypertensives-goldshield---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule146
      potentialCases:
        id: potentialCases
        source: antihypertensives-triapin---primary/output
  antihypertensives-500mg---primary:
    run: antihypertensives-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule147
      potentialCases:
        id: potentialCases
        source: antihypertensives-goldshield---primary/output
  antihypertensives-bicarzem---primary:
    run: antihypertensives-bicarzem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule148
      potentialCases:
        id: potentialCases
        source: antihypertensives-500mg---primary/output
  antihypertensives-tanatril---primary:
    run: antihypertensives-tanatril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule149
      potentialCases:
        id: potentialCases
        source: antihypertensives-bicarzem---primary/output
  antihypertensives-bumetanide---primary:
    run: antihypertensives-bumetanide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule150
      potentialCases:
        id: potentialCases
        source: antihypertensives-tanatril---primary/output
  antihypertensives-pindolol---primary:
    run: antihypertensives-pindolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule151
      potentialCases:
        id: potentialCases
        source: antihypertensives-bumetanide---primary/output
  antihypertensives-actavis---primary:
    run: antihypertensives-actavis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule152
      potentialCases:
        id: potentialCases
        source: antihypertensives-pindolol---primary/output
  antihypertensives-metoro---primary:
    run: antihypertensives-metoro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule153
      potentialCases:
        id: potentialCases
        source: antihypertensives-actavis---primary/output
  antihypertensives-sterwin---primary:
    run: antihypertensives-sterwin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule154
      potentialCases:
        id: potentialCases
        source: antihypertensives-metoro---primary/output
  antihypertensives-sugar---primary:
    run: antihypertensives-sugar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule155
      potentialCases:
        id: potentialCases
        source: antihypertensives-sterwin---primary/output
  antihypertensives-metoprolol---primary:
    run: antihypertensives-metoprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule156
      potentialCases:
        id: potentialCases
        source: antihypertensives-sugar---primary/output
  antihypertensives-nadolol---primary:
    run: antihypertensives-nadolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule157
      potentialCases:
        id: potentialCases
        source: antihypertensives-metoprolol---primary/output
  antihypertensives-dumex---primary:
    run: antihypertensives-dumex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule158
      potentialCases:
        id: potentialCases
        source: antihypertensives-nadolol---primary/output
  antihypertensives-prestim---primary:
    run: antihypertensives-prestim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule159
      potentialCases:
        id: potentialCases
        source: antihypertensives-dumex---primary/output
  antihypertensives-bipranix---primary:
    run: antihypertensives-bipranix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule160
      potentialCases:
        id: potentialCases
        source: antihypertensives-prestim---primary/output
  antihypertensives-cardozin---primary:
    run: antihypertensives-cardozin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule161
      potentialCases:
        id: potentialCases
        source: antihypertensives-bipranix---primary/output
  antihypertensives-celiprolol---primary:
    run: antihypertensives-celiprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule162
      potentialCases:
        id: potentialCases
        source: antihypertensives-cardozin---primary/output
  antihypertensives-micardi---primary:
    run: antihypertensives-micardi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule163
      potentialCases:
        id: potentialCases
        source: antihypertensives-celiprolol---primary/output
  antihypertensives-nicardipine---primary:
    run: antihypertensives-nicardipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule164
      potentialCases:
        id: potentialCases
        source: antihypertensives-micardi---primary/output
  antihypertensives-trandate---primary:
    run: antihypertensives-trandate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule165
      potentialCases:
        id: potentialCases
        source: antihypertensives-nicardipine---primary/output
  antihypertensives-securon---primary:
    run: antihypertensives-securon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule166
      potentialCases:
        id: potentialCases
        source: antihypertensives-trandate---primary/output
  antihypertensives-labetalol---primary:
    run: antihypertensives-labetalol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule167
      potentialCases:
        id: potentialCases
        source: antihypertensives-securon---primary/output
  antihypertensives-bedranol---primary:
    run: antihypertensives-bedranol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule168
      potentialCases:
        id: potentialCases
        source: antihypertensives-labetalol---primary/output
  antihypertensives-valni---primary:
    run: antihypertensives-valni---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule169
      potentialCases:
        id: potentialCases
        source: antihypertensives-bedranol---primary/output
  antihypertensives-cobetaloc---primary:
    run: antihypertensives-cobetaloc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule170
      potentialCases:
        id: potentialCases
        source: antihypertensives-valni---primary/output
  inderal-antihypertensives---primary:
    run: inderal-antihypertensives---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule171
      potentialCases:
        id: potentialCases
        source: antihypertensives-cobetaloc---primary/output
  antihypertensives-betaprograne---primary:
    run: antihypertensives-betaprograne---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule172
      potentialCases:
        id: potentialCases
        source: inderal-antihypertensives---primary/output
  antihypertensives-dilzem---primary:
    run: antihypertensives-dilzem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule173
      potentialCases:
        id: potentialCases
        source: antihypertensives-betaprograne---primary/output
  antihypertensives-ashbourne---primary:
    run: antihypertensives-ashbourne---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule174
      potentialCases:
        id: potentialCases
        source: antihypertensives-dilzem---primary/output
  antihypertensives-astrazenec---primary:
    run: antihypertensives-astrazenec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule175
      potentialCases:
        id: potentialCases
        source: antihypertensives-ashbourne---primary/output
  antihypertensives-mibefradil---primary:
    run: antihypertensives-mibefradil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule176
      potentialCases:
        id: potentialCases
        source: antihypertensives-astrazenec---primary/output
  antihypertensives-natrilix---primary:
    run: antihypertensives-natrilix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule177
      potentialCases:
        id: potentialCases
        source: antihypertensives-mibefradil---primary/output
  antihypertensives-kenzem---primary:
    run: antihypertensives-kenzem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule178
      potentialCases:
        id: potentialCases
        source: antihypertensives-natrilix---primary/output
  eucardic-antihypertensives---primary:
    run: eucardic-antihypertensives---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule179
      potentialCases:
        id: potentialCases
        source: antihypertensives-kenzem---primary/output
  antihypertensives-calchan---primary:
    run: antihypertensives-calchan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule180
      potentialCases:
        id: potentialCases
        source: eucardic-antihypertensives---primary/output
  antihypertensives-acepril---primary:
    run: antihypertensives-acepril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule181
      potentialCases:
        id: potentialCases
        source: antihypertensives-calchan---primary/output
  antihypertensives-nebivolol---primary:
    run: antihypertensives-nebivolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule182
      potentialCases:
        id: potentialCases
        source: antihypertensives-acepril---primary/output
  antihypertensives-pfizer---primary:
    run: antihypertensives-pfizer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule183
      potentialCases:
        id: potentialCases
        source: antihypertensives-nebivolol---primary/output
  antihypertensives-starter---primary:
    run: antihypertensives-starter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule184
      potentialCases:
        id: potentialCases
        source: antihypertensives-pfizer---primary/output
  antihypertensives-baratol---primary:
    run: antihypertensives-baratol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule185
      potentialCases:
        id: potentialCases
        source: antihypertensives-starter---primary/output
  eastern-antihypertensives---primary:
    run: eastern-antihypertensives---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule186
      potentialCases:
        id: potentialCases
        source: antihypertensives-baratol---primary/output
  antihypertensives-doxadura---primary:
    run: antihypertensives-doxadura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule187
      potentialCases:
        id: potentialCases
        source: eastern-antihypertensives---primary/output
  antihypertensives-hygroton---primary:
    run: antihypertensives-hygroton---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule188
      potentialCases:
        id: potentialCases
        source: antihypertensives-doxadura---primary/output
  antihypertensives-wafer---primary:
    run: antihypertensives-wafer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule189
      potentialCases:
        id: potentialCases
        source: antihypertensives-hygroton---primary/output
  antihypertensives-cardilate---primary:
    run: antihypertensives-cardilate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule190
      potentialCases:
        id: potentialCases
        source: antihypertensives-wafer---primary/output
  antihypertensives-trasicor---primary:
    run: antihypertensives-trasicor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule191
      potentialCases:
        id: potentialCases
        source: antihypertensives-cardilate---primary/output
  antihypertensives-novartis---primary:
    run: antihypertensives-novartis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule192
      potentialCases:
        id: potentialCases
        source: antihypertensives-trasicor---primary/output
  antihypertensives-zemret---primary:
    run: antihypertensives-zemret---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule193
      potentialCases:
        id: potentialCases
        source: antihypertensives-novartis---primary/output
  antihypertensives-quinil---primary:
    run: antihypertensives-quinil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule194
      potentialCases:
        id: potentialCases
        source: antihypertensives-zemret---primary/output
  antihypertensives-posicor---primary:
    run: antihypertensives-posicor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule195
      potentialCases:
        id: potentialCases
        source: antihypertensives-quinil---primary/output
  antihypertensives-labrocol---primary:
    run: antihypertensives-labrocol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule196
      potentialCases:
        id: potentialCases
        source: antihypertensives-posicor---primary/output
  antihypertensives-mercury---primary:
    run: antihypertensives-mercury---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule197
      potentialCases:
        id: potentialCases
        source: antihypertensives-labrocol---primary/output
  antihypertensives-cotriamterzide---primary:
    run: antihypertensives-cotriamterzide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule198
      potentialCases:
        id: potentialCases
        source: antihypertensives-mercury---primary/output
  antihypertensives-coflumactone---primary:
    run: antihypertensives-coflumactone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule199
      potentialCases:
        id: potentialCases
        source: antihypertensives-cotriamterzide---primary/output
  antihypertensives-forte---primary:
    run: antihypertensives-forte---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule200
      potentialCases:
        id: potentialCases
        source: antihypertensives-coflumactone---primary/output
  antihypertensives-gopten---primary:
    run: antihypertensives-gopten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule201
      potentialCases:
        id: potentialCases
        source: antihypertensives-forte---primary/output
  antihypertensives-ampoule---primary:
    run: antihypertensives-ampoule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule202
      potentialCases:
        id: potentialCases
        source: antihypertensives-gopten---primary/output
  antihypertensives-tildiem---primary:
    run: antihypertensives-tildiem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule203
      potentialCases:
        id: potentialCases
        source: antihypertensives-ampoule---primary/output
  antihypertensives-tritace---primary:
    run: antihypertensives-tritace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule204
      potentialCases:
        id: potentialCases
        source: antihypertensives-tildiem---primary/output
  servier-antihypertensives---primary:
    run: servier-antihypertensives---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule205
      potentialCases:
        id: potentialCases
        source: antihypertensives-tritace---primary/output
  antihypertensives-clopamide---primary:
    run: antihypertensives-clopamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule206
      potentialCases:
        id: potentialCases
        source: servier-antihypertensives---primary/output
  antihypertensives-ranbaxy---primary:
    run: antihypertensives-ranbaxy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule207
      potentialCases:
        id: potentialCases
        source: antihypertensives-clopamide---primary/output
  antihypertensives-ecopace---primary:
    run: antihypertensives-ecopace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule208
      potentialCases:
        id: potentialCases
        source: antihypertensives-ranbaxy---primary/output
  antihypertensives-trandolapril---primary:
    run: antihypertensives-trandolapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule209
      potentialCases:
        id: potentialCases
        source: antihypertensives-ecopace---primary/output
  antihypertensives-monmouth---primary:
    run: antihypertensives-monmouth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule210
      potentialCases:
        id: potentialCases
        source: antihypertensives-trandolapril---primary/output
  antihypertensives-sotalol---primary:
    run: antihypertensives-sotalol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule211
      potentialCases:
        id: potentialCases
        source: antihypertensives-monmouth---primary/output
  antihypertensives-neozipine---primary:
    run: antihypertensives-neozipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule212
      potentialCases:
        id: potentialCases
        source: antihypertensives-sotalol---primary/output
  antihypertensives-astella---primary:
    run: antihypertensives-astella---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule213
      potentialCases:
        id: potentialCases
        source: antihypertensives-neozipine---primary/output
  antihypertensives-zurich---primary:
    run: antihypertensives-zurich---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule214
      potentialCases:
        id: potentialCases
        source: antihypertensives-astella---primary/output
  antihypertensives-monocor---primary:
    run: antihypertensives-monocor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule215
      potentialCases:
        id: potentialCases
        source: antihypertensives-zurich---primary/output
  antihypertensives-nimodrel---primary:
    run: antihypertensives-nimodrel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule216
      potentialCases:
        id: potentialCases
        source: antihypertensives-monocor---primary/output
  antihypertensives-imidapril---primary:
    run: antihypertensives-imidapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule217
      potentialCases:
        id: potentialCases
        source: antihypertensives-nimodrel---primary/output
  antihypertensives-angiopine---primary:
    run: antihypertensives-angiopine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule218
      potentialCases:
        id: potentialCases
        source: antihypertensives-imidapril---primary/output
  antihypertensives-hydroflumethiazide---primary:
    run: antihypertensives-hydroflumethiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule219
      potentialCases:
        id: potentialCases
        source: antihypertensives-angiopine---primary/output
  antihypertensives-hydrochloride---primary:
    run: antihypertensives-hydrochloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule220
      potentialCases:
        id: potentialCases
        source: antihypertensives-hydroflumethiazide---primary/output
  antihypertensives-capsule---primary:
    run: antihypertensives-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule221
      potentialCases:
        id: potentialCases
        source: antihypertensives-hydrochloride---primary/output
  antihypertensives-chlortalidone---primary:
    run: antihypertensives-chlortalidone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule222
      potentialCases:
        id: potentialCases
        source: antihypertensives-capsule---primary/output
  antihypertensives-neobendromax---primary:
    run: antihypertensives-neobendromax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule223
      potentialCases:
        id: potentialCases
        source: antihypertensives-chlortalidone---primary/output
  antihypertensives-recordati---primary:
    run: antihypertensives-recordati---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule224
      potentialCases:
        id: potentialCases
        source: antihypertensives-neobendromax---primary/output
  antihypertensives-perdix---primary:
    run: antihypertensives-perdix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule225
      potentialCases:
        id: potentialCases
        source: antihypertensives-recordati---primary/output
  antihypertensives-torasemide---primary:
    run: antihypertensives-torasemide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule226
      potentialCases:
        id: potentialCases
        source: antihypertensives-perdix---primary/output
  antihypertensives-zestril---primary:
    run: antihypertensives-zestril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule227
      potentialCases:
        id: potentialCases
        source: antihypertensives-torasemide---primary/output
  antihypertensives-kalspare---primary:
    run: antihypertensives-kalspare---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule228
      potentialCases:
        id: potentialCases
        source: antihypertensives-zestril---primary/output
  antihypertensives-staril---primary:
    run: antihypertensives-staril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule229
      potentialCases:
        id: potentialCases
        source: antihypertensives-kalspare---primary/output
  antihypertensives-cilazapril---primary:
    run: antihypertensives-cilazapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule230
      potentialCases:
        id: potentialCases
        source: antihypertensives-staril---primary/output
  antihypertensives-zanidip---primary:
    run: antihypertensives-zanidip---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule231
      potentialCases:
        id: potentialCases
        source: antihypertensives-cilazapril---primary/output
  antihypertensives-spiroco---primary:
    run: antihypertensives-spiroco---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule232
      potentialCases:
        id: potentialCases
        source: antihypertensives-zanidip---primary/output
  antihypertensives-olmetec---primary:
    run: antihypertensives-olmetec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule233
      potentialCases:
        id: potentialCases
        source: antihypertensives-spiroco---primary/output
  antihypertensives-tensipine---primary:
    run: antihypertensives-tensipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule234
      potentialCases:
        id: potentialCases
        source: antihypertensives-olmetec---primary/output
  antihypertensives-amiloride---primary:
    run: antihypertensives-amiloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule235
      potentialCases:
        id: potentialCases
        source: antihypertensives-tensipine---primary/output
  antihypertensives-diltiazem---primary:
    run: antihypertensives-diltiazem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule236
      potentialCases:
        id: potentialCases
        source: antihypertensives-amiloride---primary/output
  pralenal-antihypertensives---primary:
    run: pralenal-antihypertensives---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule237
      potentialCases:
        id: potentialCases
        source: antihypertensives-diltiazem---primary/output
  antihypertensives-helio---primary:
    run: antihypertensives-helio---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule238
      potentialCases:
        id: potentialCases
        source: pralenal-antihypertensives---primary/output
  antihypertensives-emcor---primary:
    run: antihypertensives-emcor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule239
      potentialCases:
        id: potentialCases
        source: antihypertensives-helio---primary/output
  antihypertensives-nifopress---primary:
    run: antihypertensives-nifopress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule240
      potentialCases:
        id: potentialCases
        source: antihypertensives-emcor---primary/output
  antihypertensives-coated---primary:
    run: antihypertensives-coated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule241
      potentialCases:
        id: potentialCases
        source: antihypertensives-nifopress---primary/output
  antihypertensives-arginine---primary:
    run: antihypertensives-arginine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule242
      potentialCases:
        id: potentialCases
        source: antihypertensives-coated---primary/output
  antihypertensives-pliva---primary:
    run: antihypertensives-pliva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule243
      potentialCases:
        id: potentialCases
        source: antihypertensives-arginine---primary/output
  antihypertensives-visken---primary:
    run: antihypertensives-visken---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule244
      potentialCases:
        id: potentialCases
        source: antihypertensives-pliva---primary/output
  antihypertensives-burgess---primary:
    run: antihypertensives-burgess---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule245
      potentialCases:
        id: potentialCases
        source: antihypertensives-visken---primary/output
  antihypertensives-alliance---primary:
    run: antihypertensives-alliance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule246
      potentialCases:
        id: potentialCases
        source: antihypertensives-burgess---primary/output
  antihypertensives-600mg---primary:
    run: antihypertensives-600mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule247
      potentialCases:
        id: potentialCases
        source: antihypertensives-alliance---primary/output
  antihypertensives-corgard---primary:
    run: antihypertensives-corgard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule248
      potentialCases:
        id: potentialCases
        source: antihypertensives-600mg---primary/output
  antihypertensives-chanelle---primary:
    run: antihypertensives-chanelle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule249
      potentialCases:
        id: potentialCases
        source: antihypertensives-corgard---primary/output
  antihypertensives-aprinox---primary:
    run: antihypertensives-aprinox---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule250
      potentialCases:
        id: potentialCases
        source: antihypertensives-chanelle---primary/output
  antihypertensives-winthrop---primary:
    run: antihypertensives-winthrop---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule251
      potentialCases:
        id: potentialCases
        source: antihypertensives-aprinox---primary/output
  antihypertensives-squibb---primary:
    run: antihypertensives-squibb---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule252
      potentialCases:
        id: potentialCases
        source: antihypertensives-winthrop---primary/output
  antihypertensives-carvedilol---primary:
    run: antihypertensives-carvedilol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule253
      potentialCases:
        id: potentialCases
        source: antihypertensives-squibb---primary/output
  antihypertensives-nebilet---primary:
    run: antihypertensives-nebilet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule254
      potentialCases:
        id: potentialCases
        source: antihypertensives-carvedilol---primary/output
  antihypertensives-mepranix---primary:
    run: antihypertensives-mepranix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule255
      potentialCases:
        id: potentialCases
        source: antihypertensives-nebilet---primary/output
  antihypertensives-injection---primary:
    run: antihypertensives-injection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule256
      potentialCases:
        id: potentialCases
        source: antihypertensives-mepranix---primary/output
  antihypertensives-celltech---primary:
    run: antihypertensives-celltech---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule257
      potentialCases:
        id: potentialCases
        source: antihypertensives-injection---primary/output
  antihypertensives-adanif---primary:
    run: antihypertensives-adanif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule258
      potentialCases:
        id: potentialCases
        source: antihypertensives-celltech---primary/output
  totaretic-antihypertensives---primary:
    run: totaretic-antihypertensives---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule259
      potentialCases:
        id: potentialCases
        source: antihypertensives-adanif---primary/output
  antihypertensives-genus---primary:
    run: antihypertensives-genus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule260
      potentialCases:
        id: potentialCases
        source: totaretic-antihypertensives---primary/output
  antihypertensives-neofel---primary:
    run: antihypertensives-neofel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule261
      potentialCases:
        id: potentialCases
        source: antihypertensives-genus---primary/output
  antihypertensives-cascor---primary:
    run: antihypertensives-cascor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule262
      potentialCases:
        id: potentialCases
        source: antihypertensives-neofel---primary/output
  antihypertensives-hypovase---primary:
    run: antihypertensives-hypovase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule263
      potentialCases:
        id: potentialCases
        source: antihypertensives-cascor---primary/output
  antihypertensives-cabren---primary:
    run: antihypertensives-cabren---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule264
      potentialCases:
        id: potentialCases
        source: antihypertensives-hypovase---primary/output
  antihypertensives-lagap---primary:
    run: antihypertensives-lagap---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule265
      potentialCases:
        id: potentialCases
        source: antihypertensives-cabren---primary/output
  antihypertensives-tartrate---primary:
    run: antihypertensives-tartrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule266
      potentialCases:
        id: potentialCases
        source: antihypertensives-lagap---primary/output
  antihypertensives-moexipril---primary:
    run: antihypertensives-moexipril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule267
      potentialCases:
        id: potentialCases
        source: antihypertensives-tartrate---primary/output
  antihypertensives-istin---primary:
    run: antihypertensives-istin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule268
      potentialCases:
        id: potentialCases
        source: antihypertensives-moexipril---primary/output
  antihypertensives-tillomed---primary:
    run: antihypertensives-tillomed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule269
      potentialCases:
        id: potentialCases
        source: antihypertensives-istin---primary/output
  antihypertensives-arrow---primary:
    run: antihypertensives-arrow---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule270
      potentialCases:
        id: potentialCases
        source: antihypertensives-tillomed---primary/output
  antihypertensives-bayer---primary:
    run: antihypertensives-bayer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule271
      potentialCases:
        id: potentialCases
        source: antihypertensives-arrow---primary/output
  antihypertensives-timolol---primary:
    run: antihypertensives-timolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule272
      potentialCases:
        id: potentialCases
        source: antihypertensives-bayer---primary/output
  antihypertensives-160mg---primary:
    run: antihypertensives-160mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule273
      potentialCases:
        id: potentialCases
        source: antihypertensives-timolol---primary/output
  antihypertensives-focus---primary:
    run: antihypertensives-focus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule274
      potentialCases:
        id: potentialCases
        source: antihypertensives-160mg---primary/output
  antihypertensives-200mg---primary:
    run: antihypertensives-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule275
      potentialCases:
        id: potentialCases
        source: antihypertensives-focus---primary/output
  antihypertensives-pharmacia---primary:
    run: antihypertensives-pharmacia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule276
      potentialCases:
        id: potentialCases
        source: antihypertensives-200mg---primary/output
  antihypertensives-metolazone---primary:
    run: antihypertensives-metolazone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule277
      potentialCases:
        id: potentialCases
        source: antihypertensives-pharmacia---primary/output
  antihypertensives-potassium---primary:
    run: antihypertensives-potassium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule278
      potentialCases:
        id: potentialCases
        source: antihypertensives-metolazone---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule279
      potentialCases:
        id: potentialCases
        source: antihypertensives-potassium---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
  inputModule120:
    id: inputModule120
    doc: Python implementation unit
    type: File
  inputModule121:
    id: inputModule121
    doc: Python implementation unit
    type: File
  inputModule122:
    id: inputModule122
    doc: Python implementation unit
    type: File
  inputModule123:
    id: inputModule123
    doc: Python implementation unit
    type: File
  inputModule124:
    id: inputModule124
    doc: Python implementation unit
    type: File
  inputModule125:
    id: inputModule125
    doc: Python implementation unit
    type: File
  inputModule126:
    id: inputModule126
    doc: Python implementation unit
    type: File
  inputModule127:
    id: inputModule127
    doc: Python implementation unit
    type: File
  inputModule128:
    id: inputModule128
    doc: Python implementation unit
    type: File
  inputModule129:
    id: inputModule129
    doc: Python implementation unit
    type: File
  inputModule130:
    id: inputModule130
    doc: Python implementation unit
    type: File
  inputModule131:
    id: inputModule131
    doc: Python implementation unit
    type: File
  inputModule132:
    id: inputModule132
    doc: Python implementation unit
    type: File
  inputModule133:
    id: inputModule133
    doc: Python implementation unit
    type: File
  inputModule134:
    id: inputModule134
    doc: Python implementation unit
    type: File
  inputModule135:
    id: inputModule135
    doc: Python implementation unit
    type: File
  inputModule136:
    id: inputModule136
    doc: Python implementation unit
    type: File
  inputModule137:
    id: inputModule137
    doc: Python implementation unit
    type: File
  inputModule138:
    id: inputModule138
    doc: Python implementation unit
    type: File
  inputModule139:
    id: inputModule139
    doc: Python implementation unit
    type: File
  inputModule140:
    id: inputModule140
    doc: Python implementation unit
    type: File
  inputModule141:
    id: inputModule141
    doc: Python implementation unit
    type: File
  inputModule142:
    id: inputModule142
    doc: Python implementation unit
    type: File
  inputModule143:
    id: inputModule143
    doc: Python implementation unit
    type: File
  inputModule144:
    id: inputModule144
    doc: Python implementation unit
    type: File
  inputModule145:
    id: inputModule145
    doc: Python implementation unit
    type: File
  inputModule146:
    id: inputModule146
    doc: Python implementation unit
    type: File
  inputModule147:
    id: inputModule147
    doc: Python implementation unit
    type: File
  inputModule148:
    id: inputModule148
    doc: Python implementation unit
    type: File
  inputModule149:
    id: inputModule149
    doc: Python implementation unit
    type: File
  inputModule150:
    id: inputModule150
    doc: Python implementation unit
    type: File
  inputModule151:
    id: inputModule151
    doc: Python implementation unit
    type: File
  inputModule152:
    id: inputModule152
    doc: Python implementation unit
    type: File
  inputModule153:
    id: inputModule153
    doc: Python implementation unit
    type: File
  inputModule154:
    id: inputModule154
    doc: Python implementation unit
    type: File
  inputModule155:
    id: inputModule155
    doc: Python implementation unit
    type: File
  inputModule156:
    id: inputModule156
    doc: Python implementation unit
    type: File
  inputModule157:
    id: inputModule157
    doc: Python implementation unit
    type: File
  inputModule158:
    id: inputModule158
    doc: Python implementation unit
    type: File
  inputModule159:
    id: inputModule159
    doc: Python implementation unit
    type: File
  inputModule160:
    id: inputModule160
    doc: Python implementation unit
    type: File
  inputModule161:
    id: inputModule161
    doc: Python implementation unit
    type: File
  inputModule162:
    id: inputModule162
    doc: Python implementation unit
    type: File
  inputModule163:
    id: inputModule163
    doc: Python implementation unit
    type: File
  inputModule164:
    id: inputModule164
    doc: Python implementation unit
    type: File
  inputModule165:
    id: inputModule165
    doc: Python implementation unit
    type: File
  inputModule166:
    id: inputModule166
    doc: Python implementation unit
    type: File
  inputModule167:
    id: inputModule167
    doc: Python implementation unit
    type: File
  inputModule168:
    id: inputModule168
    doc: Python implementation unit
    type: File
  inputModule169:
    id: inputModule169
    doc: Python implementation unit
    type: File
  inputModule170:
    id: inputModule170
    doc: Python implementation unit
    type: File
  inputModule171:
    id: inputModule171
    doc: Python implementation unit
    type: File
  inputModule172:
    id: inputModule172
    doc: Python implementation unit
    type: File
  inputModule173:
    id: inputModule173
    doc: Python implementation unit
    type: File
  inputModule174:
    id: inputModule174
    doc: Python implementation unit
    type: File
  inputModule175:
    id: inputModule175
    doc: Python implementation unit
    type: File
  inputModule176:
    id: inputModule176
    doc: Python implementation unit
    type: File
  inputModule177:
    id: inputModule177
    doc: Python implementation unit
    type: File
  inputModule178:
    id: inputModule178
    doc: Python implementation unit
    type: File
  inputModule179:
    id: inputModule179
    doc: Python implementation unit
    type: File
  inputModule180:
    id: inputModule180
    doc: Python implementation unit
    type: File
  inputModule181:
    id: inputModule181
    doc: Python implementation unit
    type: File
  inputModule182:
    id: inputModule182
    doc: Python implementation unit
    type: File
  inputModule183:
    id: inputModule183
    doc: Python implementation unit
    type: File
  inputModule184:
    id: inputModule184
    doc: Python implementation unit
    type: File
  inputModule185:
    id: inputModule185
    doc: Python implementation unit
    type: File
  inputModule186:
    id: inputModule186
    doc: Python implementation unit
    type: File
  inputModule187:
    id: inputModule187
    doc: Python implementation unit
    type: File
  inputModule188:
    id: inputModule188
    doc: Python implementation unit
    type: File
  inputModule189:
    id: inputModule189
    doc: Python implementation unit
    type: File
  inputModule190:
    id: inputModule190
    doc: Python implementation unit
    type: File
  inputModule191:
    id: inputModule191
    doc: Python implementation unit
    type: File
  inputModule192:
    id: inputModule192
    doc: Python implementation unit
    type: File
  inputModule193:
    id: inputModule193
    doc: Python implementation unit
    type: File
  inputModule194:
    id: inputModule194
    doc: Python implementation unit
    type: File
  inputModule195:
    id: inputModule195
    doc: Python implementation unit
    type: File
  inputModule196:
    id: inputModule196
    doc: Python implementation unit
    type: File
  inputModule197:
    id: inputModule197
    doc: Python implementation unit
    type: File
  inputModule198:
    id: inputModule198
    doc: Python implementation unit
    type: File
  inputModule199:
    id: inputModule199
    doc: Python implementation unit
    type: File
  inputModule200:
    id: inputModule200
    doc: Python implementation unit
    type: File
  inputModule201:
    id: inputModule201
    doc: Python implementation unit
    type: File
  inputModule202:
    id: inputModule202
    doc: Python implementation unit
    type: File
  inputModule203:
    id: inputModule203
    doc: Python implementation unit
    type: File
  inputModule204:
    id: inputModule204
    doc: Python implementation unit
    type: File
  inputModule205:
    id: inputModule205
    doc: Python implementation unit
    type: File
  inputModule206:
    id: inputModule206
    doc: Python implementation unit
    type: File
  inputModule207:
    id: inputModule207
    doc: Python implementation unit
    type: File
  inputModule208:
    id: inputModule208
    doc: Python implementation unit
    type: File
  inputModule209:
    id: inputModule209
    doc: Python implementation unit
    type: File
  inputModule210:
    id: inputModule210
    doc: Python implementation unit
    type: File
  inputModule211:
    id: inputModule211
    doc: Python implementation unit
    type: File
  inputModule212:
    id: inputModule212
    doc: Python implementation unit
    type: File
  inputModule213:
    id: inputModule213
    doc: Python implementation unit
    type: File
  inputModule214:
    id: inputModule214
    doc: Python implementation unit
    type: File
  inputModule215:
    id: inputModule215
    doc: Python implementation unit
    type: File
  inputModule216:
    id: inputModule216
    doc: Python implementation unit
    type: File
  inputModule217:
    id: inputModule217
    doc: Python implementation unit
    type: File
  inputModule218:
    id: inputModule218
    doc: Python implementation unit
    type: File
  inputModule219:
    id: inputModule219
    doc: Python implementation unit
    type: File
  inputModule220:
    id: inputModule220
    doc: Python implementation unit
    type: File
  inputModule221:
    id: inputModule221
    doc: Python implementation unit
    type: File
  inputModule222:
    id: inputModule222
    doc: Python implementation unit
    type: File
  inputModule223:
    id: inputModule223
    doc: Python implementation unit
    type: File
  inputModule224:
    id: inputModule224
    doc: Python implementation unit
    type: File
  inputModule225:
    id: inputModule225
    doc: Python implementation unit
    type: File
  inputModule226:
    id: inputModule226
    doc: Python implementation unit
    type: File
  inputModule227:
    id: inputModule227
    doc: Python implementation unit
    type: File
  inputModule228:
    id: inputModule228
    doc: Python implementation unit
    type: File
  inputModule229:
    id: inputModule229
    doc: Python implementation unit
    type: File
  inputModule230:
    id: inputModule230
    doc: Python implementation unit
    type: File
  inputModule231:
    id: inputModule231
    doc: Python implementation unit
    type: File
  inputModule232:
    id: inputModule232
    doc: Python implementation unit
    type: File
  inputModule233:
    id: inputModule233
    doc: Python implementation unit
    type: File
  inputModule234:
    id: inputModule234
    doc: Python implementation unit
    type: File
  inputModule235:
    id: inputModule235
    doc: Python implementation unit
    type: File
  inputModule236:
    id: inputModule236
    doc: Python implementation unit
    type: File
  inputModule237:
    id: inputModule237
    doc: Python implementation unit
    type: File
  inputModule238:
    id: inputModule238
    doc: Python implementation unit
    type: File
  inputModule239:
    id: inputModule239
    doc: Python implementation unit
    type: File
  inputModule240:
    id: inputModule240
    doc: Python implementation unit
    type: File
  inputModule241:
    id: inputModule241
    doc: Python implementation unit
    type: File
  inputModule242:
    id: inputModule242
    doc: Python implementation unit
    type: File
  inputModule243:
    id: inputModule243
    doc: Python implementation unit
    type: File
  inputModule244:
    id: inputModule244
    doc: Python implementation unit
    type: File
  inputModule245:
    id: inputModule245
    doc: Python implementation unit
    type: File
  inputModule246:
    id: inputModule246
    doc: Python implementation unit
    type: File
  inputModule247:
    id: inputModule247
    doc: Python implementation unit
    type: File
  inputModule248:
    id: inputModule248
    doc: Python implementation unit
    type: File
  inputModule249:
    id: inputModule249
    doc: Python implementation unit
    type: File
  inputModule250:
    id: inputModule250
    doc: Python implementation unit
    type: File
  inputModule251:
    id: inputModule251
    doc: Python implementation unit
    type: File
  inputModule252:
    id: inputModule252
    doc: Python implementation unit
    type: File
  inputModule253:
    id: inputModule253
    doc: Python implementation unit
    type: File
  inputModule254:
    id: inputModule254
    doc: Python implementation unit
    type: File
  inputModule255:
    id: inputModule255
    doc: Python implementation unit
    type: File
  inputModule256:
    id: inputModule256
    doc: Python implementation unit
    type: File
  inputModule257:
    id: inputModule257
    doc: Python implementation unit
    type: File
  inputModule258:
    id: inputModule258
    doc: Python implementation unit
    type: File
  inputModule259:
    id: inputModule259
    doc: Python implementation unit
    type: File
  inputModule260:
    id: inputModule260
    doc: Python implementation unit
    type: File
  inputModule261:
    id: inputModule261
    doc: Python implementation unit
    type: File
  inputModule262:
    id: inputModule262
    doc: Python implementation unit
    type: File
  inputModule263:
    id: inputModule263
    doc: Python implementation unit
    type: File
  inputModule264:
    id: inputModule264
    doc: Python implementation unit
    type: File
  inputModule265:
    id: inputModule265
    doc: Python implementation unit
    type: File
  inputModule266:
    id: inputModule266
    doc: Python implementation unit
    type: File
  inputModule267:
    id: inputModule267
    doc: Python implementation unit
    type: File
  inputModule268:
    id: inputModule268
    doc: Python implementation unit
    type: File
  inputModule269:
    id: inputModule269
    doc: Python implementation unit
    type: File
  inputModule270:
    id: inputModule270
    doc: Python implementation unit
    type: File
  inputModule271:
    id: inputModule271
    doc: Python implementation unit
    type: File
  inputModule272:
    id: inputModule272
    doc: Python implementation unit
    type: File
  inputModule273:
    id: inputModule273
    doc: Python implementation unit
    type: File
  inputModule274:
    id: inputModule274
    doc: Python implementation unit
    type: File
  inputModule275:
    id: inputModule275
    doc: Python implementation unit
    type: File
  inputModule276:
    id: inputModule276
    doc: Python implementation unit
    type: File
  inputModule277:
    id: inputModule277
    doc: Python implementation unit
    type: File
  inputModule278:
    id: inputModule278
    doc: Python implementation unit
    type: File
  inputModule279:
    id: inputModule279
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
