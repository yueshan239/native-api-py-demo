import iris

hostname ='127.0.0.1'       # Server Address
port = 51773                # IRIS Superserver Port
namespace = 'Demo'          # IRIS NameSpace
username = 'username'        # IRIS UserName
password = 'password'        # IRIS PassWord

args = {
        'hostname':hostname, 
        'port':port,
        'namespace':namespace, 
        'username':username, 
        'password':password
    }

#  Create connection to InterSystems IRIS
conn = iris.connect(**args)

# Create an iris object
irispy = iris.createIRIS(conn)

className='Demo.Python.PyDemo'

stringVal = irispy.classMethodString(className,'Demo','World')
print(stringVal)

# Obtaining data from global
#irispy.kill('message')
messgae=irispy.get('message')
print(messgae)