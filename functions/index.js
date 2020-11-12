const functions = require('firebase-functions');
const admin = require('firebase-admin');
admin.initializeApp();

var db = admin.firestore();
exports.scheduledFunction = functions.pubsub.schedule('* * * * *').onRun((context) => {


  return  null;
});
// // Create and Deploy Your First Cloud Functions
// // https://firebase.google.com/docs/functions/write-firebase-functions
//
// exports.helloWorld = functions.https.onRequest((request, response) => {
//   functions.logger.info("Hello logs!", {structuredData: true});
//   response.send("Hello from Firebase!");
// });
