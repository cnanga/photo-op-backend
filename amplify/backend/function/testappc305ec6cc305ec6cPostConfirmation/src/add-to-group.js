const aws = require('aws-sdk');

const cognitoIdentityServiceProvider = new aws.CognitoIdentityServiceProvider({
  apiVersion: '2016-04-18',
});

/**
 * @type {import('@types/aws-lambda').PostConfirmationTriggerHandler}
 */
exports.handler = async (event) => {
  
  var mediaBuyer = event.request.userAttributes['custom:media_buyer'] == "true";

  var groupName = mediaBuyer ? "MediaBuyers" : "MediaCreators";

  const groupParams = {
    GroupName: groupName, //process.env.GROUP,
    UserPoolId: event.userPoolId,
  };
  const addUserParams = {
    GroupName: groupName, //process.env.GROUP,
    UserPoolId: event.userPoolId,
    Username: event.userName,
  };
  /**
   * Check if the group exists; if it doesn't, create it.
   */
  try {
    await cognitoIdentityServiceProvider.getGroup(groupParams).promise();
  } catch (e) {
    await cognitoIdentityServiceProvider.createGroup(groupParams).promise();
  }
  /**
   * Then, add the user to the group.
   */
  await cognitoIdentityServiceProvider.adminAddUserToGroup(addUserParams).promise();

  return event;
};
