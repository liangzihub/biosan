#基于密钥的上传和下载

import paramiko
private_key = paramiko.RSAKey.from_private_key_file('/root/.ssh/id_rsa')
tran = paramiko.Transport('172.16.0.215',22)
tran.connect(username='root',password='preacme#17')

#获取SFTP实例
sftp = paramiko.SFTPClient.from_transport(tran)
remotepath='/home/biosan/fish8'
localpath='/home/biosan/fish1'
sftp.put(localpath,remotepath)
sftp.get(remotepath, localpath)


