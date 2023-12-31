@echo off
title Bckend Server
if not exist "project" (
            echo Creating Environment
            python -m venv project
        )
echo Activating Environment
call project\Scripts\activate.bat
echo installing packages
pip install -r requirements.txt
echo starting server
uvicorn app:app --port 8000 --reload
pause
