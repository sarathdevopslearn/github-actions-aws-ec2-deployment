from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "🚀 GitHub Actions CI/CD deployed successfully to AWS EC2!"

@app.route("/health")
def health():
    return {
        "status": "UP",
        "application": "github-actions-demo"
    }

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)