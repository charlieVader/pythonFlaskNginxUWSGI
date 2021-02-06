from app import app as server
from flask import request, jsonify


@server.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'GET':
        return "Hello from Flask with uWSGI and hot reloading!"
    else:
        return run_request()


def run_request():
    index = int(request.json['index'])
    list = ['red', 'blue', 'yellow', 'black']
    color = list[index] if index < len(list) else None
    return jsonify(color or "No records found!")
