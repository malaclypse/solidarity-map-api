import os
from environs import Env
from base import *

env = Env()

# DB connection
MONGO_URI = env.str('MONGODB_URI')

# CORS whitelist for client domains.
# This can be an env var which contains a comma separated list of domains allowed to make requests of this server
X_DOMAINS = env.list('X_DOMAINS', default=['192.168.127.2','127.0.0.1','0.0.0.0','localhost'])
print(X_DOMAINS)
