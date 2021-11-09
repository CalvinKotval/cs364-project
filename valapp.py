import sqlite3

db = 'test.db'

def main():

    print('Welcome to Valorant Statistics Pro')
    print('By: Calvin Kotval')
    print('')
    print('Command Syntax: {Add | Update | Delete | Query} + {table}')
    print('')

    firstPrompt = input('Command:')
    firstPrompt.lower()

    if firstPrompt == 'add player':
        print('')
        table = 'Player'
        alias = input("Alias: ")
        region = input(": ")
        addPlayer(table, alias, region)

def addPlayer(table, alias, region):
    con = sqlite3.connect(db)
    cur = con.cursor()

    # INSERT INTO Player VALUES (alias, region)
    # format
    query = "INSERT INTO" + " " + table + " " + "VALUES" + " "

    cur.execute("INSERT INTO table VALUES ()")
    con.commit()
    con.close()





if __name__ == "__main__":
    main()