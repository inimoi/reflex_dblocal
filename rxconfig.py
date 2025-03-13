import reflex as rx
from dotenv import load_dotenv
import os

load_dotenv()

DATABASE_URL = os.getenv("DATABASE_URL")

config = rx.Config(
    app_name="reflex_dblocal_venv",
    db_url=DATABASE_URL,
    api_url="https://reflexdblocal-production.up.railway.app/",
    #cors_allowed_origins =["https://reflex-dblocal.vercel.app/"]
)