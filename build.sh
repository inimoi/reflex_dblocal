python -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
rm -rf public
reflex init
API_URL=http://185.166.214.210:8000 reflex export --frontend-only
unzip frontend.zip -d public
rm -f frontend.zip
deactivate