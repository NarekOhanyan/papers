clear
set more off

import excel "./data/in/RomerandRomerDataAppendix.xls", sheet("DATA BY MONTH") firstrow

destring PC*,replace force

gen date = mofd(DATE)
tsset date , monthly

gen month = month(DATE)

reg PCIPNSA l(1/24).PCIPNSA l(1/36).RESID i.month if tin(1970m1,1996m12)
reg PCPPINSA l(1/24).PCPPINSA l(1/48).RESID i.month if tin(1970m1,1996m12)
