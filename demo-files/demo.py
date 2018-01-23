from __future__ import print_function
## haha
class Hadoop:
    '''
    Get fs handler from java gateway
    https://hadoop.apache.org/docs/current/api/org/apache/hadoop/fs/FileSystem.html
    '''
    def __init__(self, sc):
        self.sc = sc
    def Path(self):
        return self.sc._gateway.jvm.org.apache.hadoop.fs.Path
    def FileSystem(self):
        return self.sc._gateway.jvm.org.apache.hadoop.fs.FileSystem
    def open_connection(address):
            p = pexpect.spawn("ssh -oUserKnownHostsFile=/dev/null -oStrictHostKeyChecking=no --use-dns=no " + username + "@{ip}".format(ip=address), timeout=120)
            i = p.expect(['password', 'timed out', 'No route to host', pexpect.TIMEOUT])
            if i == 0:
            elif i == 3:
    return 'ERR: pexpect timed out, last ouput was: ' + p.before, 0
host_list = open(host_file, "r")
#build list of hosts with non-empty values from input file
hosts = [host.strip() for host in host_list if host.strip() ]
host_list.close()
max_threads = 5
#max_threads = 10
p.sendline("")
time.sleep(.5)
p.expect('\[root.*\]', timeout=600)
time.sleep(1)
