import reflex as rx
from dotenv import load_dotenv
import os

load_dotenv()

DATABASE_URL = os.getenv("DATABASE_URL")

config = rx.Config(
    app_name="reflex_dblocal_venv",
    db_url=DATABASE_URL,
    api_url="http://185.166.214.210:8000",
    cors_allowed_origins = ['*']
)