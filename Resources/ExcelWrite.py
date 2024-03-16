import openpyxl as xl

wk=xl.Workbook()
sh=wk.active
sh.title="practice"
print(sh.title)
sh['A4'].value="write"


#create 2nd sheet

wk.create_sheet(title="practice2")
sh1=wk['practice2']
sh1['A3']="999999999999"

wk.save("D:\\Pysheet.xlsx")