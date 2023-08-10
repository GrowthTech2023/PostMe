---
### Firebase Initialization for Project "PostMe"

1. **Started Firebase Initialization**:
   ```
   firebase init
   ```

2. **Selected Firebase Features**:
   - Realtime Database
   - Firestore
   - Functions
   - Hosting
   - Storage
   - Emulators

3. **Firestore Configuration**:
   - Firestore Rules File: `firestore.rules`
   - Firestore Indexes File: `firestore.indexes.json`

4. **Cloud Functions Configuration**:
   - Language for Cloud Functions: JavaScript

5. **Hosting Configuration**:
   - Public Directory: `public`
   - Configured as a single-page app: No (Given that the frontend is being developed with FlutterFlow)

6. **GitHub Action Deploys for Hosting**:
   - Set up automatic builds and deploys with GitHub: Yes
   - GitHub Repository for Workflow: `https://github.com/GrowthTech2023/PostMe.git`
   - Script to run before every deploy: `npm ci && npm run build`

7. **Emulators Configuration**:
   - Authentication Emulator Port: 9099
   - Functions Emulator Port: 5001
   - Firestore Emulator Port: 8080
   - Hosting Emulator Port: 5000
   - Storage Emulator Port: 9199
   - Emulator UI: Enabled (with any available port chosen for the UI)
   - Downloaded the emulators.

---
