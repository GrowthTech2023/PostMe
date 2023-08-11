# PostMe
# PostMe: AI-Powered Social Media Content Assistant

## Overview

**PostMe** is a cutting-edge application designed to streamline the content posting process across multiple social media platforms. Leveraging the power of GPT-4, PostMe assists users in generating platform-specific captions, descriptions, and hashtags for their video content, ensuring optimal engagement and reach.

### Features

- **Video Uploads**: Users can easily upload their videos to the platform.
  
- **AI Content Generation**: Once a video is uploaded, GPT-4 analyzes it to produce tailored captions, descriptions, and hashtags suitable for platforms like YouTube, Facebook, TikTok, and Instagram.
  
- **Multi-Platform Integration**: Users can connect multiple accounts across various social media platforms, allowing for seamless content distribution.
  
- **User-Prompted Customization**: Users have the option to provide specific prompts, guiding the AI to generate content that aligns with their unique needs and brand voice.
  
- **Secure Data Storage**: User data, including connected platforms and video details, are securely stored in a Firestore database.

## Firestore Schema

1. **users Collection**: Contains user-specific data such as email, display name, UID, and connected platforms.
  
2. **Videos Collection**: Stores details about uploaded videos, including AI-generated content for each platform.
  
3. **ConnectedAccounts Collection**: A sub-collection under the `users` collection, detailing the social media platforms a user has connected to, including access tokens and refresh tokens.

## Getting Started

1. **Firebase Setup**: Ensure you have Firebase set up and integrated with your application. Upgrade to the Firebase Blaze plan to deploy custom functions.
  
2. **Firestore Rules**: Before deploying, review and test Firestore rules to ensure data security and appropriate access levels.
  
3. **Firebase Storage**: Integrate Firebase Storage to handle video uploads.
  
4. **FlutterFlow**: This application is built using FlutterFlow. Familiarize yourself with its UI and functionalities to make the most of its capabilities.

## Future Development

- **Connect UI Elements to Backend**: Every button and interactive element in the FlutterFlow application should be connected to the backend, ensuring a seamless user experience.
  
- **Database Refinement**: Periodically review and refine the Firestore database structure and data.
  
- **Subscription Logic**: Implement logic to limit the number of videos a user can upload based on their subscription tier.

## Contributing

Contributions are welcome! Please read the [CONTRIBUTING](CONTRIBUTING.md) guide for more information.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE.md) file for details.
