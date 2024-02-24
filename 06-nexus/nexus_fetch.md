# Fetch and Run the Latest Node.js Artifact from Nexus

## Step 1: Fetch the Download URL
Use `curl` to fetch the artifact's download URL from Nexus:
```bash
curl -u {user}:{password} -X GET 'http://{nexus-ip}:8081/service/rest/v1/components?repository={node-repo}&sort=version'
```
Replace `{user}`, `{password}`, `{nexus-ip}`, and `{node-repo}` with your Nexus credentials, Nexus IP, and Node.js repository name, respectively.

## Step 2: Download the Artifact
After obtaining the URL, download the artifact:
```bash
wget --user={username} --password={password} {artifact-download-url}
```
Or use `curl`:
```bash
curl -o filename.tar.gz {artifact-download-url}
```

## Step 3: Untar the Artifact
Extract the contents of the downloaded file:
```bash
tar -xzvf filename.tar.gz
```

## Step 4: Run the Application
Navigate to the application directory, install dependencies, and start the app:
```bash
cd path/to/extracted/app
npm install
npm start
```