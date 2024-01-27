# Online_Unsplash_Gallery_App

A Flutter application that utilizes the Unsplash API to display images, allows users to search by query or color and enables interaction through user comments. The app also integrates Firebase Authentication for user login and registration, as well as Firestore for storing user data and image comments.

## Features

### Home Page
- List images from the Unsplash search endpoint.
- Allow users to search by query or color.
- Display a loading indicator when fetching results.
- Each result item displays the image, image details, user profile, and link.
- Clicking on a result item opens the image details page when the user is logged in.
- Implement a refresh feature using the `RefreshIndicator`.

### Image Details Page
- Display more information about the image.
- Show the image fullscreen using the `photo_view` package.
- Display a list of image comments saved in Firebase Firestore.
- Allow users to add comments to specific images.
- Comments display the author and creation date, ordered by the last added.

### User Profile Page
- Show the user avatar.
- Navigate to the user profile page when the avatar is clicked.
- Allow users to logout.
- Enable users to change the profile picture and display name.

### Login and Create User
- Users can create an account using Firebase Auth.
- User data is saved into Firebase Firestore.
- Appropriate error messages are displayed when needed.

