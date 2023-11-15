import sqlite3


con = sqlite3.connect("C:\\Users\\viewa\\Downloads\\DB\\Ex_Files_Learning_SQL_Prog\\Exercise Files\\SQLite\\quizdata.db")
print(con.total_changes)
cur = con.cursor()
cur.execute('SELECT * FROM people;')
rows = cur.fetchall()


for i in rows:
    print(i)

con.close()


