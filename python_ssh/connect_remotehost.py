import paramiko
from paramiko.ssh_exception import NoValidConnectionsError, AuthenticationException
def connect(cmd, hostname, port=22, user='root'): 
 client = paramiko.SSHClient()  
 private_key = paramiko.RSAKey.from_private_key_file('/root/.ssh/id_rsa') 
 ###id_rsa为本地局域网密钥文件 
 client.set_missing_host_key_policy(paramiko.AutoAddPolicy()) 
 try: 
  client.connect(hostname,
  port, 
  user, 
  private_key 
  ) 
  stdin, stdout, stderr = client.exec_command(cmd) 
 except NoValidConnectionsError as e: 
  print("连接失败") 
 except AuthenticationException as e: 
  print("密码错误") 
 else: 
  result = stdout.read().decode('utf-8') 
  print(result) 
 finally: 
  client.close() 


for count in range(214, 215):
 host = '172.16.0.%s' %(count+1) 
 print(host.center(50, '*')) 
 connect('uname', host) 
 connect('ls /root', host) 




# paramiko基于公钥密钥连接

