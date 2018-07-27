from flask import Flask, jsonify, render_template
from database import Database
import sqlite3
app = Flask(__name__)
database = Database('database.db')

@app.route('/')
def root():
    decks = query_database('SELECT * FROM `decks`;')
    return render_template('root.html', decks=decks)

@app.route('/json')
def json():
    dictionary = open('cedict_ts.u8', 'r')

    contents = dictionary.readlines()

    dictionary.close()

    jsonOutput = []
    for line in contents:
        if line[0] == '#':
            continue
        lineSplit = line.split(' ')
        jsonObject = {
            'traditional': lineSplit[0],
            'simplified': lineSplit[1],
            'pinyin': lineSplit[2][1:-1],
            'english': line.split('/')[1:-1]
        }
        jsonOutput.append(jsonObject)
        
    return jsonify(jsonOutput)

def query_database(query, args=(), returnInserted=False):
    connection = sqlite3.connect('database.db')
    connection.row_factory = dict_factory
    cursor = connection.cursor()

    cursor.execute(query, args)
    try:
        results = cursor.fetchall()
    except:
        results = None

    connection.commit()
    connection.close()

    return results if results else None

def dict_factory(cursor, row):
    d = {}
    for idx, col in enumerate(cursor.description):
        d[col[0]] = row[idx]
    return d


if __name__ == '__main__':
    app.run(debug = True)
