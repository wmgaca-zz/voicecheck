from bottle import run
from bottle import route


@route("/")
def check_voice():
    return "Voice check, one, two, one, two."


run(host="127.0.0.1", port=10666, debug=True, reloader=True)
