#
# Using Set-Content
#

#UTF8/UTF16 to SJIS (Default)
get-content -Encoding UTF8 .\input\UTF8_NoBOM.csv | Set-Content .\output_sc\SJIS_From_UTF8_NoBOM.csv
get-content -Encoding UTF8 .\input.\UTF8_BOM.csv | Set-Content .\output_sc\SJIS_From_UTF8_BOM.csv
get-content -Encoding Unicode .\input.\UTF16_NoBOM.csv | Set-Content .\output_sc\SJIS_From_UTF16_NoBOM.csv
get-content -Encoding Unicode .\input.\UTF16_BOM.csv | Set-Content .\output_sc\SJIS_From_UTF16_BOM.csv

#UTF8/UTF16 to UTF16/UTF8
get-content -Encoding UTF8 .\input\UTF8_NoBOM.csv | Set-Content -Encoding Unicode .\output_sc\UTF16_From_UTF8_NoBOM.csv
get-content -Encoding UTF8 .\input.\UTF8_BOM.csv | Set-Content -Encoding Unicode .\output_sc\UTF16_From_UTF8_BOM.csv
get-content -Encoding Unicode .\input.\UTF16_NoBOM.csv | Set-Content -Encoding UTF8 .\output_sc\UTF8_From_UTF16_NoBOM.csv
get-content -Encoding Unicode .\input.\UTF16_BOM.csv | Set-Content -Encoding UTF8 .\output_sc\UTF8_From_UTF16_BOM.csv

#
#Using Out-File
#

#UTF8/UTF16 to SJIS (Default)
get-content -Encoding UTF8 .\input\UTF8_NoBOM.csv | Out-File -Encoding default .\output_of\SJIS_From_UTF8_NoBOM.csv
get-content -Encoding UTF8 .\input.\UTF8_BOM.csv | Out-File -Encoding default .\output_of\SJIS_From_UTF8_BOM.csv
get-content -Encoding Unicode .\input.\UTF16_NoBOM.csv | Out-File -Encoding default .\output_of\SJIS_From_UTF16_NoBOM.csv
get-content -Encoding Unicode .\input.\UTF16_BOM.csv | Out-File -Encoding default .\output_of\SJIS_From_UTF16_BOM.csv

#UTF8/UTF16 to UTF16/UTF8
get-content -Encoding UTF8 .\input\UTF8_NoBOM.csv | Out-File -Encoding Unicode .\output_of\UTF16_From_UTF8_NoBOM.csv
get-content -Encoding UTF8 .\input.\UTF8_BOM.csv | Out-File -Encoding Unicode .\output_of\UTF16_From_UTF8_BOM.csv
get-content -Encoding Unicode .\input.\UTF16_NoBOM.csv | Out-File -Encoding UTF8 .\output_of\UTF8_From_UTF16_NoBOM.csv
get-content -Encoding Unicode .\input.\UTF16_BOM.csv | Out-File -Encoding UTF8 .\output_of\UTF8_From_UTF16_BOM.csv
