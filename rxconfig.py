import reflex as rx
from decouple import config


DATABASE_URL = config("DATABASE_URL")

config = rx.Config(
    app_name="reflex_dblocal_venv",
    db_url=DATABASE_URL,
    api_url="http://localhost:8008",
    cors_allowed_origins = ['*']
)