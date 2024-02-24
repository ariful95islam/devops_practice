
# Creating a Nexus User

This guide outlines the steps to create a user in Nexus Repository Manager for the Project 1 team, granting them access to a specific npm repository.

## Prerequisites

- Nexus Repository Manager 3.x installed and accessible at `http://your_droplet_ip:8081`.
- Administrative access to the Nexus UI.

## Step 1: Define a Role for Project 1 Team

### 1. Log in to Nexus UI

Navigate to `http://your_droplet_ip:8081` and log in with your admin credentials.

### 2. Access Security Settings

Click on the gear icon (⚙️) to open the Server Administration and Configuration sidebar, then click on "Security" and select "Roles".

### 3. Create New Role

- Click the "Create role" button and select "Nexus role".
- **Role ID**: Enter a unique identifier for the role, such as `project1-npm`.
- **Role Name**: Provide a descriptive name, like `Project 1 npm Access`.
- **Privileges**: Assign privileges that allow reading from and writing to the npm repository you created. Include privileges like:
    - `nx-repository-view-npm-*-read`
    - `nx-repository-view-npm-*-add`
    - `nx-repository-view-npm-*-edit`
- Click "Create role" to save your new role.

## Step 2: Create a User for Project 1 Team

### 1. Navigate to Users

In the Server Administration and Configuration sidebar under "Security", select "Users".

### 2. Create New User

- Click the "Create local user" button.
- **UserID**: Choose a unique ID for the user, such as `project1user`.
- **First Name**, **Last Name**, **Email**: Fill in the user's details.
- **Status**: Set to "Active" to ensure the user can log in.
- **Password**: Assign a secure password. Recommend the user to change this upon first login.
- **Roles**: Assign the role you created earlier (`project1-npm`) to this user. You can also assign additional roles if necessary.
- Click "Create local user" to finalize the user creation.

