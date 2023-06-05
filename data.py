import csv
file=open('HW2grade.csv')
grade = [g for g in list(csv.reader(file))][::-1]

with open('HW2data.csv', newline='') as stufile:
    datas = csv.reader(stufile)
    next(datas) # 省略第一行
    output = csv.writer(open('outputPy.csv', 'w', newline=''))
    output.writerow(['NO', 'ID', 'Name', 'score', 'grade'])
    for data in datas:
        score = round((float(data[3]) + float(data[4]) + float(data[5]))*0.1 + float(data[6])*0.3 + float(data[7])*0.4, 2)
        for g in grade:
            if float(g[1]) >= round(score) >= float(g[0]) :
                output.writerow([data[0], data[1], data[2], str(score), g[2]]) 
                # data0:NO、data1 : ID、data2 : Name、str : 總成績強制轉型、g2 : A、B、C...等第
                break
        
    print("Success!")