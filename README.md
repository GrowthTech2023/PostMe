# PostMe

A new Flutter project.

## Getting Started

FlutterFlow projects are built to run on the Flutter _stable_ release.

---

Cloudinary's Google AI Video Transcription add-on, Updated journey:

### Your Updated Journey:

#### Step 1: Video Upload
- **Task**: Use Cloudinary for video uploads.
- **Why**: To securely store user videos and take advantage of Cloudinary's Google AI Video Transcription add-on.

#### Step 2: Video Transcription and Analysis
- **Task**: Use Cloudinary's Google AI Video Transcription add-on.
- **Why**: To get both the audio transcript and video content insights without having to directly interact with Google's API.

#### Step 3: Optional User Prompt
- **Task**: Implement a text field in FlutterFlow for the optional user prompt.
- **Why**: To allow users to guide the GPT model.

#### Step 4: Combine Data for GPT
- **Task**: Concatenate the Cloudinary transcript and optional user prompt.
- **Why**: To prepare the data for GPT processing.

#### Step 5: GPT API Call
- **Task**: Send the concatenated data to the GPT API.
- **Why**: To generate video description, hashtags, etc.

#### Step 6: Receive and Parse GPT Output
- **Task**: Parse the GPT API response.
- **Why**: To extract the generated content.

#### Step 7: User Review and Edit
- **Task**: Display the GPT-generated content in editable fields in FlutterFlow.
- **Why**: To allow users to review and edit the content.

#### Step 8: Store Final Content
- **Task**: Save the finalized content in Firebase Firestore.
- **Why**: To keep a record of the content associated with each video.

#### Step 9: Publish
- **Task**: Implement a publishing mechanism.
- **Why**: To allow users to publish their videos along with the generated content.

#### Step 10: Testing
- **Task**: Rigorous testing of the entire workflow.
- **Why**: To ensure everything works as expected.

#### Step 11: Deployment
- **Task**: Deploy the application.
- **Why**: To make it accessible to users.
