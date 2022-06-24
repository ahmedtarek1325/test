from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    return f'Hello, everybody!\nThis is testing the deployment of a source code to Heroku.\n Application uses flask.'


if __name__ == "__main__":
    app.run()