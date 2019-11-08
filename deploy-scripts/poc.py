import os

with open(os.environ['BASH_ENV'], 'w') as f:
    f.write('export HELLO=123')
