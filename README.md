Machine learning and Artificial Intelligence Usage in Dining apps
 
Suggesting user favorite location in dining apps:
 
How do dining apps get the user's favorite location?
 
Ans: OLO
 
Referring OLO documentation for getting user favorite location:
 
 
Favorite Location Olo API:
 
Request API: users/{authtoken}/favelocations/{restaurant_id}
 
Request Parameters:  AuthToken, RestaurantId.
 
Response:
 
{
  "id": 38910481,
  "vendorid": 27739,
  "vendorname": "Kitchen Sink Seaport",
  "isdefault": true
}
 
How to get a user's favorite location using ML?
 
 
In order to get user favorite location, we can consider the following parameters:
 
1.	User Id
2.	Location Id – Latitude and Longitude
3.	Restaurant Id
4.	Restaurant Name
 
 
 
Other User related API’s – OLO Documentation:
 
1.	Billing Accounts.
2.	Contact Details.
3.	Contact Options.
4.	User Delivery Addresses.
5.	Faves.
6.	Recent Orders.
7.	Qualifying Rewards.
8.	Rewards Near.
9.	Saved Products.
10. Byref
 
 
 
Apple provides a framework called Create ML and Core ML to integrate ML into your app.

Create ML – Using Create ML we can create a ML model on your application.

Core ML – Use Core ML to integrate machine learning model into your app. Your app uses core ML APIs and user data to make predictions, and to train fine-tune models, all on a person’s device.




Basic demo implementation for fetching user favorite location using Create ML and Core ML:
 
 
1.	Create a ML Model using Create ML. xcode -> open developer tools -> Create ML
2.	It will redirect to choose a template tab. In that, I chose tabular regression. And then click next.
3.	Give a project name for your ML project like FavoriteLocationModel.
4.	Create a csv file with all required data for your ML model. And then import it in your ML project in the “Training Data” box.
5.	And then click the run button at the top left of your ML project. It will train the ML model with your imported data.
Note: In Create ML, we have, 5 types of Algorithm
Random Forest
Boosted Tree
Decision Tree
Linear Regression
Automatic
Here, I chose Automatic, which will train the model using best algorithm based on a given input dataset. 
6.	Finally you can import your trained ML model in your demo application and you can make predictions based on your inputs.




MLKit: 

ML Kit is a mobile SDK that brings Google's on-device machine learning expertise to Android and iOS apps. Use our powerful yet easy to use Vision and Natural Language APIs to solve common challenges in your apps or create brand-new user experiences.


In MLKit, we have Turnkey Api’s 

Using Turnkey Api’s:

Text Recognition
Face Recognition
Barcode Scanning
Image Labeling
Object Detection
Tracking Pose Detection
Selfie Segmentation
Smart Reply
Text Translation
Language Identification


So, ML Kit's turn-key APIs don't meet our needs and we require a more custom solution. For that we have a On Device Machine Learning.

What is On Device Machine Learning?

Machine Learning is an exciting area that lets you build new AI-powered features for your apps or sites. The process of Machine Learning involves using models that have either been pre-trained for you, or that you train yourself, to give your app or site functionality in areas such as Computer Vision, Natural Language Processing, and more.

Traditionally, ML models only ran on powerful servers in the Cloud. On-device Machine Learning is when you perform inference with models directly on a device (e.g. in a mobile app or web browser). The ML model processes input data—like images, text, or audio—on device rather than sending that data to a server and doing the processing there.


Innovations like the TensorFlow Lite framework make it possible to run on-device machine learning models on Android and iOS, desktops, and other consumer devices. 
