/*
is_url - True
method - POST
url - /api/content/v2/users/${user}/achievements
body - { achievementId: achievementId }
*/

async function grant(achievementId, user) {
  const url = `/api/content/v2/users/${user}/achievements`;
  try {
    await codeengine.sendRequest("post", url, { achievementId: achievementId });
    return true;
  } catch (err) {
    throw new Error(
      `Failed to award user ${user} the achievement ${achievementId}`
    );
  }
}

