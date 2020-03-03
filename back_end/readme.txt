type . venv/bin/activate	to start virtual envrinoment

pip install Flask on your system when you're in the venv

type deactivate to leave the virtualenv

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

To run the application you can either use the flask command or 
pythons -m switch with Flask. 
Before you do that you need to tell your terminal the application
to work with by exporting the FLASK_APP environment variable.

export FLASK_APP=app.py
flask run
* Running on http://127.0.0.1:5000/


DEPENDENCIES
sudo pip install virtualenv

We are going to use a library called 'SQLAlchemy' for the writing/reading
from the database. SQLAlchemy works with SQLite, PostgreSQL, MySQL, etc. 
We can write our models to the database and then retrieve them.

JWT is the technology for authentication. When the user logs into our API, 
the API will create a temporary 'access_token', will pass it to the user 
and it will be saved by the client. After that, with every request the client
makes to the API the 'access_token' should be sent and this way the API will
know the client is already logged in. 
