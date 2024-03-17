const functions = require('firebase-functions');
const admin = require('firebase-admin');
const { log } = require('firebase-functions/logger');
admin.initializeApp();

exports.sendNotificationOnNewCollectionUpdate = functions.firestore
  .document('/chatRooms/{userId}/users/{documentId}')
  .onUpdate((change, context) => {
    // Get the updated document data
    const updatedData = change.after.data();

    const userFCMToken = updatedData.fcm_token; 
    if(updatedData.fcm_token != updatedData.peer_token && updatedData.update_type == "message"){
      // Notification payload
      const payload = {
        notification: {
          title: updatedData.sender_name,
          body: updatedData.message,
        },
        token: userFCMToken,
        data:{
          type: "chat",
          channel_id: updatedData.channel_id,
          sender: updatedData.sender,
          receiver: updatedData.receiver,
          message: updatedData.message,
          sender_name: updatedData.sender_name,
          fcm_token: updatedData.fcm_token,
          peer_token: updatedData.peer_token,
          update_type: updatedData.update_type,
          time_stamp: updatedData.time_stamp,
        },
        apns: {
          headers: {
              'apns-priority': '10',
          },
          payload: {
              aps: {
                  sound: 'default',
              }
          },
        },
        android: {
          priority: 'high',
          notification: {
              sound: 'default',
          }
        },
      };

      // Send the notification using the FCM token
      return admin.messaging().send(payload);
    }

  });