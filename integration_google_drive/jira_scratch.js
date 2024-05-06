async function updateJiraTicket() {
  const jiraDomain = "your-jira-domain"; // Replace with your Jira domain
  const username = "your-username"; // Replace with your username
  const apiToken = "your-api-token"; // Replace with your API token
  const issueKey = "issue-key"; // Replace with the key of the issue to update
  const fileLink = "file-link"; // Replace with the file link

  const url = `https://${jiraDomain}.atlassian.net/rest/api/2/issue/${issueKey}`;
  const auth = "Basic " + btoa(username + ":" + apiToken);

  const data = {
    fields: {
      description: `File link: ${fileLink}`,
    },
  };

  const response = await fetch(url, {
    method: "PUT",
    headers: {
      Authorization: auth,
      "Content-Type": "application/json",
    },
    body: JSON.stringify(data),
  });

  if (response.ok) {
    console.log("Updated Jira ticket successfully");
  } else {
    console.log("Failed to update Jira ticket");
  }
}

updateJiraTicket();
