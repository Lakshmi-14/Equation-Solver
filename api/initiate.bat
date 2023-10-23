@echo off

if not exist "project" (
            echo virtual ENV not found...
            echo virtual env is being created
            cd !cur_dir!\Equation-Solver\api &&python -m venv project
        )
echo virtual Found, activating virtual ENV.
call project\Scripts\activate.bat
echo installing packages
pip install -r requirements.txt
echo starting server
uvicorn app:app --port 8000 --reload
pause