type . venv/bin/activate	to start virtual envrinoment

pip install Flask on your system when you're in the venv

type deactivate to leave the virtualenv

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

To run the application you can either use the flask command or 
pythons -m switch with Flask. 
Before you do that you need to tell your terminal the application
to work with by exporting the FLASK_APP environment variable.

export FLASK_APP=test.py
flask run
* Running on http://127.0.0.1:5000/
