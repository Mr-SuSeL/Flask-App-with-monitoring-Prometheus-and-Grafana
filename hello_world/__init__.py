from flask import Flask
from prometheus_flask_exporter import PrometheusMetrics

app = Flask(__name__)

metrics = PrometheusMetrics(app)

import hello_world.views  # noqa: E402, F401
