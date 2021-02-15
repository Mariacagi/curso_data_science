import pymysql.cursors

def connection(host, port, user, password, database):

    connection = pymysql.connect(host=host,
                                    port=port,
                                    user=user,
                                    password=password,
                                    database=database,
                                    cursorclass=pymysql.cursors.DictCursor)
    return connection