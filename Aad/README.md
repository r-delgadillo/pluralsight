[Getting Started with Azure Active Directory for Developers](https://app.pluralsight.com/library/courses/getting-started-azure-active-directory-developers/table-of-contents)

# An Introduction to Azure Active Directory

## What is Azure Active Directory?

Azure AD is Microsoft's cloud-based identity and access management service.

---
### A Modern Cloud-based Identity Solution which supports:
---
    1. Users, Devices and Applications
        - Lets you manage internal and external users
        - Allows you to manage devices
        - Allows you to manage first party and third party applications
            - First party: apps you write in your org
            - Third party: apps that belong to a third party (not your orgnization)
    2. Internet Scale
        - Needs to be standards based
        - Supports modern protocols
        - Globally available 
    3. Secure and Resilient 
        - Information protection
        - Intrusion detection
        - Reports and alerts
        - A myriad of other security features

---
### Authentication in the Microsoft Ecosystem
---
On premise identities are able to be uploaded to AAD (the cloud) so users are able to sign in. This allows AAD to authenticate those users.

#### Creating a new Azure Active Directory (AAD)
- Can either be a normal AAD or AAD (B2C)
- B2C (Buesiness to Consumer)

#### User Authentication in Azure ADD
##### Provides
- Interactive Logon
- Manage in AAD or On-Premises
- Role Based Access Control (RBAC)

#### Managing Users in Azure AD
#### Manage User Permissions

#### App Management in Azure
- Single Tenant
- Multi Tenant
- Enterprise Apps

Kinds of Apps:

1. Public Client
2. Confidential Client (Web Application)


### Modern Authentication Basics

#### Some History

1. Legacy
    - Basic: Send username and password  in header or using hash or password. Should not be used in today day of age.
    - NTLM: Cannot forward credentials from one website to the other. (cannot hop more than 1 machine)
    - Kerberos: Solves NTLM issue by exchanging sessions

---
### What is Modern Authentication?
---
Using Standards such as:
1. WS-* and SAML (WS-* is many protocols)
    - WS-Federation (Web Services Federation) protocol
    - SAML protocol
2. OAuth
    - A standerd for delegation
        - I am allowing "A" to do "B" on my behalf
    - At no point does A get my password
    - B is a set of permissions.
    - Example:
        - I (Rogelio on twitter) am allowing 
        - Website www.somesite.com (A) to,
        - read my profile
            - And in exchange A gets to know who I am, and offers me some functionality
            - Pseudo-Authentication
    - Problems with OAuth
        - Loosely standards
        - Oversharing
        - Phishing attacks
3. OpenId Connect
    - Adds strict standards so OAuth can be used as an authentication protocol
    - Identity later built on top of OAuth 2.0
    - Connect Flows
        - Implicit
        - PKCE (Mobile Apps)
        - AuthCode
            - Built on token
            - Token exchange
            - ID token (user identity)
            - Auth token (key to access, access token)
            - Client Credentials
                - Pass client id and secret and you get access token in return

---
### Federation
---
The technologies, standards and use-cases which serve to enable the portability of identiy information across othewise autonomous security domains.

---
## Service Principals
---
### What are Service Principals

- An identity created for use with obligations, hosted services, and automated tools that need to access azure resources.

- Used for automated scenarios

#### Apps and Service Principals
- Different Entities
- Permissions
- User.Read


---
## Azure AD Application Registrations
---

### What are Applications in Azure AD?
User wishes to use application and application wants AAD to perform authentication. The application must be registered to AAD before using it.

### Different Application Types
1. Single Tenant
    - Designed and meant to be only used by your organization
    - For example, Contoso application only used by contoso application users
2. Multi Tenant
    - Used by users of numerous Active Directories
    - Or consuming applications by other AD tenants

### OR

1. Native
    - Public clients
2. Web

### Register and App
You can register an app using
- Portal
- Azure CLI
- Powershell
- Microsoft Graph

