# Setting Up npm Repository in Nexus Repository Manager

This guide walks you through the process of setting up a new npm hosted repository in Nexus Repository Manager with a dedicated blob store. Follow these steps to create a blob store and an npm hosted repository.

## Prerequisites

- Nexus Repository Manager 3.x installed and accessible.
- Administrative access to the Nexus UI.
- Nexus is accessible at `http://your_droplet_ip:8081`.

## Step 1: Create a New Blob Store

### 1. Log in to Nexus

Open your browser and navigate to `http://your_droplet_ip:8081`. Use your admin credentials to log in.

### 2. Access Blob Stores

In the Nexus Admin interface, click on the gear icon (⚙️) to open the Server Administration and Configuration sidebar. Then, click on "Blob Stores" under the "Repository" section.

### 3. Create New Blob Store

Click the "Create blob store" button. Select "File" as the type for local storage.

### 4. Configure Blob Store

- **Name**: Enter a meaningful name for your blob store, such as `npm-blob-store`.
- **Path**: Specify the path for data storage. Leave blank to use the default location.

Click "Create" to finalize the blob store creation.

## Step 2: Create an npm Hosted Repository

### 1. Open Repositories

From the Server Administration and Configuration sidebar, click on "Repositories".

### 2. Create New Repository

Click the "Create repository" button and select "npm (hosted)" from the list.

### 3. Configure Repository

- **Name**: Provide a name for your repository, e.g., `npm-hosted`.
- **Blob Store**: Select the blob store you created earlier (`npm-blob-store`).
- **Version Policy**: Choose "Mixed" (recommended for npm).
- **Deployment Policy**: Select "Allow redeploy" for development purposes.

### 4. Save Repository

After configuring the options, click "Create repository" to complete the setup.

## Conclusion

You have now successfully created a dedicated blob store and an npm hosted repository in Nexus Repository Manager. Follow the Nexus documentation for detailed instructions on using your new repository to publish and install npm packages.

Replace `your_droplet_ip` with the actual IP address of your Nexus instance when accessing the Nexus UI and configuring npm clients.
