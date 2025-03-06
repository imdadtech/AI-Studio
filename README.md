# AI-Studio
A simple and collaborative editor that uses AI to enhance and make your research or writing process faster.

## Features
- A  user can login and register with email/username/password or with his google account
- A user can create a new document
- A user can fill a created document with a title and content
- A user can save a content of a document
- A user can summarize a long text using AI and add the result inside the document
- A user can modify the style of the text document using a simple editor
- A user can generate an image using a AI and add the image to the document
- A user can choose a subscription and the fee by stripe (There is two subscription basic and pro)
- A user can upload a profile picture

## Technologies
<li>Flutter</li>
<li>Nodejs</li>
<li>Mongodb</li>

## How to install locally
1. Install Flutter:
     - For Windows:
         - Download the Flutter SDK from the official Flutter website.
         - Extract the downloaded file to a desired location.
         - Add the Flutter SDK's `bin` directory to your system's `PATH` environment variable.
     - For macOS:
         - Download the Flutter SDK from the official Flutter website.
         - Extract the downloaded file to a desired location.
         - Add the Flutter SDK's `bin` directory to your system's `PATH` environment variable.
     - For Linux:
         - Download the Flutter SDK from the official Flutter website.
         - Extract the downloaded file to a desired location.
         - Add the Flutter SDK's `bin` directory to your system's `PATH` environment variable.
2. Clone the GitHub repository and run the project:
     - Open a terminal or command prompt.
     - Navigate to the directory where you want to clone the repository.
     - Run the following command:
         ```
         git clone https://github.com/imdadAdelabou/docs.ai
         ```
     - And then ```
                cd docs.ai
                flutter run
                ```
     - And select your device
         
## Packages
- [cached_network_image](https://pub.dev/packages/cached_network_image/)
    ```
    A flutter library to show images from the internet and keep them in the cache directory.
    ```
- [dio](https://pub.dev/packages/dio/)
    ```
    A powerful HTTP networking package for Dart/Flutter, supports Global configuration, Interceptors, FormData, Request cancellation, File uploading/downloading, Timeout, Custom adapters, Transformers, etc.
    ```
- [file_picker](https://pub.dev/packages/file_picker/)
    ```
    A package that allows you to use the native file explorer to pick single or multiple files, with extensions filtering support.
    ```
- [firebase_core](https://pub.dev/packages/firebase_core/)
    ```
    A Flutter plugin to use the Firebase Core API, which enables connecting to multiple Firebase apps.
    ```
- [firebase_crashlytics](https://pub.dev/packages/firebase_crashlytics/)
    ```
    Flutter plugin for Firebase Crashlytics. It reports uncaught errors to the Firebase console.
    ```
- [firebase_storage](https://pub.dev/packages/firebase_storage/)
    ```
    A Flutter package to interact with the cloud firebase storage service.
    ```
- [flutter_quill](https://pub.dev/packages/flutter_quill/)
    ```
    A Flutter package used to have a google docs like editor view.
    ```
- [flutter_quill_extensions](https://pub.dev/packages/flutter_quill_extensions#platform-specific-configurations/)
    ```
    An extensions for flutter_quill to support embedding widgets like images, formulas, videos, and more.
    ```
- [flutter_riverpod](https://pub.dev/packages/flutter_riverpod/)
    ```
    A reactive caching and data-binding framework. https://riverpod.dev
    Riverpod makes working with asynchronous code a breeze by:

    handling errors/loading states by default. No need to manually catch errors
    natively supporting advanced scenarios, such as pull-to-refresh
    separating the logic from your UI
    ensuring your code is testable, scalable and reusable.
    ```
- [flutter_stripe](https://pub.dev/packages/flutter_stripe/)
    ```
    The Stripe Flutter SDK allows you to build delightful payment experiences in your native Android and iOS apps using Flutter. We provide powerful and customizable UI screens and elements that can be used out-of-the-box to collect your users' payment details.
    ```
- [flutter_stripe_web](https://pub.dev/packages/flutter_stripe_web/)
    ```
    An additional package to use with flutter_stripe to integrate the stripe widget on the web.
    ```
- [form_field_validator](https://pub.dev/packages/form_field_validator)
    ```
    A straightforward flutter form field validator that provides common validation options.
    ```
- [gap](https://pub.dev/packages/gap/)
    ```
    A Flutter widgets for easily adding gaps inside Flex widgets such as Columns and Rows or scrolling views.
    ```
- [google_fonts](https://pub.dev/packages/google_fonts/)
    ```
    A Flutter package to use fonts from fonts.google.com.
    ```
- [google_sign_in](https://pub.dev/packages/google_sign_in/)
    ```
    A Flutter package to handle google authentification.
    ```
- [image_picker](https://pub.dev/packages/image_picker/)
    ```
    A Flutter plugin for iOS and Android for picking images from the image library, and taking new pictures with the camera.
    ```
- [intl](https://pub.dev/packages/intl/)
    ```
    Provides internationalization and localization facilities, including message translation, plurals and genders, date/number formatting and parsing, and bidirectional text.
    ```
- [json_annotation](https://pub.dev/packages/json_annotation/)
    ```
    Defines the annotations used by json_serializable to create code for JSON serialization and deserialization.
    ```
- [riverpod_annotation](https://pub.dev/packages/riverpod_annotation/)
    ```
   This is a side package for riverpod_generator, exposing annotations.
    ```
- [routemaster](https://pub.dev/packages/routemaster/)
    ```
    An easy to use router for Flutter. Simple declarative mapping from URLs to pages
    Easy-to-use API: just Routemaster.of(context).push('/page')
    Really easy nested navigation support for tabs
    Multiple route maps: for example one for a logged in user, another for logged out
    Observers to easily listen to route changes
    Covered by over 250 unit, widget and integration tests
    ```
- [screenshot](https://pub.dev/packages/screenshot/)
    ```
    A simple package to capture widgets as Images. Now you can also capture the widgets that are not rendered on the screen.
    ```
- [shared_preferences](https://pub.dev/packages/shared_preferences/)
    ```
    A simple package used to interact with the localstorage of the current platform.
    ```
- [socket_io_client](https://pub.dev/packages/socket_io_client/)
    ```
    A simple package used to communicate with a server using websocket.
    ```
- [blackfoot_flutter_lint](https://pub.dev/packages/blackfoot_flutter_lint/)
    ```
    This package contains a recommended set of lints for Blackfoot's Flutter apps to encourage good coding practices.
    ```
- [build_runner](https://pub.dev/packages/build_runner/)
    ```
    The build_runner package provides a concrete way of generating files using Dart code. Files are always generated directly on disk, and rebuilds are incremental - inspired by tools such as Bazel.
    ```
- [flutter_lints](https://pub.dev/packages/flutter_lints/)
    ```
   This package contains a recommended set of lints for Flutter apps, packages, and plugins to encourage good coding practices.
    ```
- [json_serializable](https://pub.dev/packages/json_serializable/)
    ```
    Provides Dart Build System builders for handling JSON.
    ```
- [patrol](https://pub.dev/packages/patrol/)
    ```
    Patrol package builds on top of flutter_test and integration_test to make it easy to control the native UI from Dart test code
    ```
- [test](https://pub.dev/packages/test/)
    ```
    Test provides a standard way of writing and running tests in Dart.
    ```

## Architectures
First, we use Riverpod for the state management. Riverpod provides a better way to register providers into the widget tree and access them easily. It also provides an optimizable way to change a view state according to the result of an asynchronous API request. 

Our project files are separated into different directories. Each directory has a specific purpose. 
The models directory contains our data model.
The repository directory contains a set of functions to interact with our backend server and other external services. Each repository is registered inside the provider to easily access it globally.
The screens directory contains all the UI.
The widgets directory contains all the shared components.
The utils directory contains some reusable functions and constants.
The viewModels directory is like a controller, it connects the UI interface to the repository.
Basically, each feature has a UI screen, a serviceModel, and a repository associated with it. All connected using the power of provider.


## Management
We use github project to manage the project and here I will explain the meaning of S, XS, L and XL. It represent the complexity of a task and how many days it will take to accomplish this task.
- XS -> the task will take 01 day to finish
- S -> the task will take 02 days to finish
- L -> the task will take 03 days to finish
- XL -> the task will take more than 03 days to finish
  

## Authors
-  [IMDAD ADELABOU](https://www.linkedin.com/in/imdad-adelabou-a4056919a/)

