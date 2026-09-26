from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Thanks for this application buddy which is running on AKS!"

@app.route("/health")
def health():
    return {"status": "ok"}, 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)