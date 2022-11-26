from flask import Flask, jsonify
from flask.logging import create_logger
import logging

from datetime import datetime as dt

app = Flask(__name__)
LOG = create_logger(app)
LOG.setLevel(logging.INFO)

@app.route("/")
def home():
    html = "<h3>Go to /what-time-is-this</h3>"
    return html.format(format)

@app.route("/what-time-is-this", methods=['GET'])
def datetime():
    # get time current
    now = dt.now()
    LOG.info(f"/what-time-is-this \n{now}")

    return jsonify({'date and time': now})

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80, debug=True) 

