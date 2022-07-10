def store(username, data):
    file = open('E:\\Py workshop\\OICQ\\server\\' + str(username) + '\\temp.txt', 'a')
    file.write(data + '\n')
    file.close()
    return 'ok', 0


def resend(username):
    file = open('E:\\Py workshop\\OICQ\\server\\' + str(username) + '\\temp.txt', 'r')
    data = file.readlines()
    file.close()
    file = open('E:\\Py workshop\\OICQ\\server\\' + str(username) + '\\temp.txt', 'w')
    file.close()
    return data
