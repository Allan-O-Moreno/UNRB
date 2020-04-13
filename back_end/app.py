from flask import Flask
from flask_sqlalchemy import SQLAlchemy

# Creates the Flask application
app = Flask(__name__)

# Load the configuration
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:////tmp/test.db'

# Create the sqlalchemy object by passing the flask application
db = SQLAlchemy(app)


class users(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    user_id = db.Column(db.Integer, unique=True, nullable=False)
    # student = db.Column(Boolean, unique=False, nullable=False)
    # staff
    username = db.Column(db.String(120), unique=True, nullable=False)


class student(db.Model):
    # Should be a Foreign key, depends on users(username)
    username = db.Column(db.String(120), unique=True, nullable=False)

    # This will be encrypted in the future
    password = db.Column(db.String(120), unique=True, nullable=False)


class staff(db.Model):
    # This will be a Foreign key, depends on users(username)
    username = db.Column(db.String(120), unique=True, nullable=False)

    # 0 - staff 1 - student_staff 2 - admin
    access_level = db.Column(db.Integer)

    # This will be encrypted in the future
    password = db.Column(db.String(120), unique=True, nullable=False)

    # Foreign key, depends on users(id)
    id = db.Column(db.Integer)


@app.route('/')
def __repr__(self):
    return '<users %r>' % self.username
