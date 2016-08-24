import rethinkdb as r

key=open('data/secrets/rethinkdb', 'r').read()
r.connect('localhost', auth_key=key).repl()
