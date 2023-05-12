0x19. Postmortem
================

- By Dev Nderitu
- Weight: 1

Concepts
--------

*For this project, students are expected to look at this concept:*

- [On-call](https://alx-intranet.hbtn.io/concepts/39)

Background Context
------------------

[![](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/294/tWUPWmR.png)](https://youtu.be/rp5cVMNmbro)[](http://savefrom.net/?url=https%3A%2F%2Fyoutu.be%2Frp5cVMNmbro&utm_source=userjs-chrome&utm_medium=extensions&utm_campaign=link_modifier "Obtenir un lien direct")

Any software system will eventually fail, and that failure can come stem from a wide range of possible factors: bugs, traffic spikes, security issues, hardware failures, natural disasters, human error... Failing is normal and failing is actually a great opportunity to learn and improve. Any great Software Engineer must learn from his/her mistakes to make sure that they won't happen again. Failing is fine, but failing twice because of the same issue is not.

A postmortem is a tool widely used in the tech industry. After any outage, the team(s) in charge of the system will write a summary that has 2 main goals:

- To provide the rest of the company's employees easy access to information detailing the cause of the outage. Often outages can have a huge impact on a company, so managers and executives have to understand what happened and how it will impact their work.
- And to ensure that the root cause(s) of the outage has been discovered and that measures are taken to make sure it will be fixed.

Resources
---------

**Read or watch**:

- [Incident Report, also referred to as a Postmortem](https://alx-intranet.hbtn.io/rltoken/vkEjk-M6yBWW-wyB-7-I9Q "Incident Report, also referred to as a Postmortem")
- [How to run a Postmortem](https://alx-intranet.hbtn.io/rltoken/pzE_VO7Bfe49K_MhkOyzdQ "How to run a Postmortem")

More Info
---------

### Manual QA Review

**It is your responsibility to request a review for your postmortem from a peer before the project's deadline. If no peers have been reviewed, you should request a review from a TA or staff member.**

Tasks
-----

### 0\. My first postmortem

mandatory

[![](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/294/pQ9YzVY.gif)](https://twitter.com/devopsreact/status/834887829486399488)

Using one of the web stack debugging project issue or an outage you have personally face, write a postmortem. Most of you will never have faced an outage, so just get creative and invent your own :)

Requirements:

- Issue Summary (that is often what executives will read) must contain:
  - duration of the outage with start and end times (including timezone)
  - what was the impact (what service was down/slow? What were user experiencing? How many % of the users were affected?)
  - what was the root cause
- Timeline (format bullet point, format: `time` - `keep it short, 1 or 2 sentences`) must contain:

  - when was the issue detected
  - how was the issue detected (monitoring alert, an engineer noticed something, a customer complained...)
  - actions taken (what parts of the system were investigated, what were the assumption on the root cause of the issue)
  - misleading investigation/debugging paths that were taken
  - which team/individuals was the incident escalated to
  - how the incident was resolved
- Root cause and resolution must contain:

  - explain in detail what was causing the issue
  - explain in detail how the issue was fixed
- Corrective and preventative measures must contain:

  - what are the things that can be improved/fixed (broadly speaking)
  - a list of tasks to address the issue (be very specific, like a TODO, example: patch Nginx server, add monitoring on server memory...)
- Be brief and straight to the point, between 400 to 600 words

While postmortem format can vary, stick to this one so that you can get properly reviewed by your peers.

Please, remember that these blogs must be written in English to further your technical ability in a variety of settings.

#### Add URLs here

Save

<https://docs.google.com/document/d/1beyDFpjU8GusqktPl5HFL5w0QDX9o_EshMMz79TovKc/edit?usp=sharing>

```
SOLUTION

Title: DevOps Incident Postmortem: Docker Container Outage

Issue Summary:
Duration: 2 hours, from 2023-05-11 14:00 UTC to 2023-05-11 16:00 UTC.
Impact: The containerized service "NdechSystemz" experienced a complete outage during the incident. Users were unable to access the service, resulting in a 100% service disruption. User experience was severely affected, with all users unable to perform any actions within the application.

Timeline:

2023-05-11 14:00 UTC: The issue was detected when the monitoring system triggered an alert for the unavailability of the "NdechSystemz" service.
Investigation began immediately after receiving the alert.

Initially, the investigation focused on network connectivity issues and Docker host health checks as possible root causes.

Misleading investigation paths included examining the load balancer configuration and checking for any issues with external dependencies.

The incident was escalated to the DevOps team lead and the system architect for further assistance.

Additional debugging efforts were undertaken, including reviewing container logs and resource allocation.
Root Cause and Resolution:
Root Cause: The root cause of the outage was identified as a misconfiguration in the container orchestration platform. A recent update to the platform introduced a configuration change that caused service containers to fail during startup.

Resolution: To resolve the issue, the DevOps team rolled back the recent configuration change, reverting the container orchestration platform to its previous stable version. Once rolled back, the service containers started successfully, and the application was restored to full functionality.

Corrective and Preventative Measures:
Improvements/Fixes:

Enhance monitoring capabilities to include detailed health checks and alerts specifically for container startup failures.
Implement stricter testing and validation processes for container orchestration platform updates to catch potential configuration issues before deployment.
Establish clear communication channels and escalation paths within the team to ensure timely incident response.

Tasks:

Update monitoring system to include container startup checks for critical services.
Review and enhance testing procedures for future container orchestration platform updates.

Conduct a post-incident review meeting with the team to identify lessons learned and document best practices.
Develop a comprehensive incident response plan, including clear roles and responsibilities for each team member.

In conclusion, the Docker container outage was caused by a misconfiguration introduced during a recent update to the container orchestration platform. The incident was promptly detected by the monitoring system, and investigation efforts were initiated. Misleading paths were explored before identifying the root cause. The incident was escalated to higher levels, and a rollback of the configuration change resolved the issue. To prevent similar incidents in the future, monitoring capabilities will be enhanced, testing procedures will be strengthened, and a comprehensive incident response plan will be developed and implemented.

By following these corrective measures, we aim to improve the stability and reliability of our containerized services, ensuring uninterrupted access for our users.
```

**Repo:**

- GitHub repository: `alx-system_engineering-devops`
- Directory: `0x19-postmortem`
- File: `README.md`

 Done! Help

### 1\. Make people want to read your postmortem

# advanced

We are constantly stormed by a quantity of information, it's tough to get people to read you.

Make your post-mortem attractive by adding humour, a pretty diagram or anything that would catch your audience attention.

Please, remember that these blogs must be written in English to further your technical ability in a variety of settings.

#### Add URLs here

<https://docs.google.com/document/d/1beyDFpjU8GusqktPl5HFL5w0QDX9o_EshMMz79TovKc/edit?usp=sharing>

**Repo:**

- GitHub repository: `alx-system_engineering-devops`
- Directory: `0x19-postmortem`
- File: `README.md`
