import web

'''
Configurar los parametros para una base de datos localhost
'''
# Base de datos local
db_host = 'localhost'
db_name = 'heroku_google'
db_user = 'heroku_google'
db_pw = 'heroku.2019'
db_port = 3306

db_localhost = web.database(
    dbn = 'mysql',
    host = db_host,
    db = db_name,
    user = db_user,
    pw = db_pw,
    port = db_port
    )

'''
Configurar los parametros para una base de datos remota
'''
# Base de datos en la nube
db_host_cloud = 'olxl65dqfuqr6s4y.cbetxkdyhwsb.us-east-1.rds.amazonaws.com'
db_name_cloud = 'q0squ35git15j2r5'
db_user_cloud = 'kuseihxdvov05hwn'
db_pw_cloud = 'idzj5fogx6ck4z1s'
db_port_cloud = 3306

db_cloud = web.database(
    dbn = 'mysql',
    host = db_host_cloud,
    db = db_name_cloud,
    user = db_user_cloud,
    pw = db_pw_cloud,
    port = db_port_cloud
    )
