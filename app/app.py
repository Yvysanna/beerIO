import os

from flask import Flask, session, render_template
from flask_session import Session

from models import *

app = Flask(__name__)

# Configure session to use filesystem
app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"

Session(app)

def load_data():
    pass

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/<beer>")
def info_page(beer):

    return f"{beer}"