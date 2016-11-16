import json

from sigopt.examples import franke_function
from sigopt import Connection

def get_token(filename='api_token.secret'):
    """Return API Token."""
    
    with open(filename) as f:
        data = json.loads(f.read())
    
    return data['API_TOKEN']

def get_connection(api_token=get_token()):
    """Return connection."""
    
    return Connection(client_token=api_token)

def make_new_experiment(name, parameters, connection):
    """Make new experiment and return experiment object."""
    
    experiment = (connection.experiments().create(
                  name=name,
                  parameters=parameters))

    return experiment

def report_observation(experiment_id, 
                     suggestion_id, 
                     value, 
                     connection):
    """Commit observation."""
    
    observation = (connection.experiments(experiment_id).
                    observations().create(
                    suggestion=suggestion_id,
                    value=value))

    return observation


def get_new_suggestion(experiment_id, connection):
    """Return tuple of (suggestion_id, assignments)."""

    experiment_id = str(experiment_id)
    suggestion = (connection.experiments(
                        experiment_id).
                        suggestions().
                        create())
    
    return suggestion.id, suggestion.assignments

def evaluate_franke_function(assignments):
    """Return observation value."""
    
    x = assignments['x']
    y = assignments['y']
    
    return franke_function(x,y)