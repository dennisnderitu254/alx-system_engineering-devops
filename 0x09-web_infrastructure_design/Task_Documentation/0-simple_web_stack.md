## ALX Project

### Web infrastructure design

#### Task 0

#### Definitions and Explanations

- `What is a server`; A server is a device, a virtual device or computer program or providing
functionality for other programs or devices, called “clients”.
- `What is the role of a domain name`; A domain name serves to identify Internet
resources, such as computers, networks, and services with a text-based label that is
easier to memorize than numerical addresses (IP addresses).
- `What type of DNS record www is in www.foobar.com`; It is a ‘cname’.
- `What is the role of the Web Server; The role of a Web Server is to store, process and
display website contents (codebase)`; deliver web pages to users (basically HTML and
CSS) over the protocol HTTP.
- `What is the role of the application server`; The role of the application server is to
generate dynamic contents by executing server-side code such as JSP, Ajax,
PHP, etc.
- `What is the role of the database`; The role of a database is to manage data
systematically and efficiently in a well-organized manner which allows data to be easily
added, accessed, updated, managed, and deleted.
- `What is the server using to communicate with the computer of the user requesting the website`; The server communicates through HTTP protocol.

#### Issues

- `SPOF (Single Point Of Failure)`; There are a lot of single points of failures starting from
having one server that contains only one web server, application server, and database.
A single point of failure is a part of a system that, if it fails, will stop the entire system
from working.

- `Downtime when maintenance is needed (like deploying a new code web server needs to be restarted)`; The downtime period might be longer than expected because
the server is dependent on one code base which at that moment, isn’t available. Users
will therefore not be able to access the website and its contents which results in a bad
user experience and loss of traffic.

- `Cannot scale if too much incoming traffic`; The domain name points directly at the server hence doesn’t contain a load balancer which allows handling increased loads easier. This poses an issue to the volume of users trying to access the website’s content and can lead to poor user experience or rather set a limit to the number of users the website will be able to accommodate.

**Done by:**

- **Dennis Kinyanjui**
- **Murugi Nthakanio**
- **Sunday chinaza Goodness Sunday**
