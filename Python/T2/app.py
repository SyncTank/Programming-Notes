from flask import Flask, redirect
from sqlite3 import dbapi2

app = Flask(__name__, static_url_path='/static')


@app.route('/1')
def one_r():
    return redirect("/first")


@app.route('/2')
def two_r():
    return redirect("/two")


@app.route('/first')
def one():
    heading = "First Entry"
    ndate = "November 9"
    entry = "Example: Today I entered the first diary entry on this website"
    page = ""
    f = open("templates/portfolio.html")
    page = f.read()
    f.close()
    page = page.replace("{heading}", heading)
    page = page.replace("{date}", ndate)
    page = page.replace("{entry}", entry)
    return page


@app.route('/two')
def two():
    heading = "Second Entry"
    ndate = "November 8"
    entry = "Example: Today I entered the second diary entry on this website"
    page = ""
    f = open("templates/portfolio.html")
    page = f.read()
    f.close()
    page = page.replace("{heading}", heading)
    page = page.replace("{date}", ndate)
    page = page.replace("{entry}", entry)
    return page


app.run(host='0.0.0.0', port=81)
