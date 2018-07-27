import sqlite3

connection = sqlite3.connect('database.db')
connection.text_factory = str
cursor = connection.cursor()

with open('cedict_ts.u8') as f:
    lines = f.readlines()
n = 0
for line in lines:
    print(str(n) + ' / 116253')
    n = n + 1
    line_split = line.split(' ')
    pinyin_start = line.find('[') + 1
    pinyin_end = line.find(']')

    dictionary_entry = {
        'hanzi': line_split[1],
        'pinyin': line[pinyin_start:pinyin_end],
        'english': line.split('/')[1:-1]
    }
    args = ('<br>'.join(dictionary_entry['english']), dictionary_entry['pinyin'], dictionary_entry['hanzi'])
    cursor.execute('INSERT INTO `cards` (`english`, `pinyin`, `hanzi`) VALUES (?,?,?)', args)
    connection.commit()

connection.close()