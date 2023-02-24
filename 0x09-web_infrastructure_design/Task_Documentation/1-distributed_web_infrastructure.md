## ALX Project

### Web infrastructure design

#### Task 1

#### Definitions and Explanations

- `For every additional element, why are adding it`; Adding a new server so that we can
be able to add a load balancer to handle too much incoming traffic and also enable us to
eliminate a single point of failure which could occur by having just one server.
- `What distribution algorithm your load balancer is configured with` and how it
works; Our load balancer uses the Round Robin algorithm which connects in order
unless a server is down. Requests are served by the server sequentially one after
another. After sending the request to the last server, it starts from the first server again.
This algorithm is used when servers are of equal specification and there are not many
persistent connections.
- `Is your load-balancer enabling an Active-Active or Active-Passive setup`, explain
the difference between both; The load balancer enables an Active-Active setup where
both nodes (servers) are actively running the same kind of service simultaneously. While
in an Active-Passive setup, not all nodes are going to be active. In the case of two
nodes, if the first node is already active, the second node must be passive or on standby.
The key difference between these two architectures is performance. Active-active
clusters give you access to the resources of all your servers during normal operation. In
an active-passive cluster, the backup server only sees action during failover.
- `How a database Primary-Replica (Master-Slave) cluster works`; master-slave
replication enables data from one database server (the master) to be replicated to
one or more other database servers (the slaves). The master logs the updates, which
then ripple through the slaves. If the changes are made to the master and slave at
the same time, it is synchronous. If changes are queued up and written later, it is
asynchronous. It is usually used to spread read access on multiple servers for
scalability, although it can also be used for other purposes such as for failover, or
analyzing data on the slave in order not to overload the master.

- `What is the difference between the Primary node and the Replica node` in regard to
the application; A replica node is a copy of the primary node, they provide redundant
copies of the application codebase to protect against hardware failure and increase
capacity to serve read requests like searching or retrieving a document .

### Issues

- `SPOF (Single Point Of Failure)`; The major single point of failure in this infrastructure is
having only one load balancer.
- `Security issues (no firewall, no HTTPS)`; Major security issues involve having the
application communicate over HTTP protocol that is not secure and can allow an attacker
(who may be in the middle) to view sensitive information (since HTTP transfers plain
texts) like passwords. Also since the application doesn’t have a firewall, This can allow
an attacker to perform a denial of service attack(DOS or DDOS) that may cause a major
downtime in the system, or allow a malicious attacker to breach the system exploiting
unknown open ports and perform data exfiltration.
- `No monitoring`; “You cannot fix or improve what you cannot measure” is a famous
saying in the tech industry. Monitoring the server, website, or application in general,
would allow the owner to identify any problems, downtime, or security threats and resolve
them quickly before they turn into a serious problem. It will also improve productivity and
possibly save some costs on IT support. As well as improve user experience in general.

#### References

<https://www.thegeekstuff.com/2016/01/load-balancer-intro/>
<https://www.toptal.com/mysql/mysql-master-slave-replication-tutorial>
<https://www.purestorage.com/au/knowledge/what-is-active-active.html>

**Done by:**

- **Dennis Kinyanjui**
- **Murugi Nthakanio**
- **Sunday chinaza Goodness Sunday**
