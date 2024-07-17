
## Key Features
- The application implements a dynamic parallax effect in the PageView by using the `Transform.translate` method to create a smooth and engaging visual experience. The effect is achieved by adjusting the offset of widgets based on the page offset and a Gaussian function, creating a sense of depth as the user scrolls through pages.
- Custom AppBar with Google Fonts.
- Dynamic PageView with a parallax effect.
- Custom widgets for additional functionalities.
- Responsive design using the flutter_screenutil package.

## Project Structure

### lib/screens/HomeScreen.dart

This file contains the `HomeScreen` widget, which serves as the main screen.

### lib/screens/Page1.dart and lib/screens/Page2.dart

These files define `Page1` and `Page2` widgets, which are used in the `PageView` of the `HomeScreen`. 

### lib/constants/images.dart

This file contains image assets used throughout the application.

### lib/constants/customcolors.dart

This file defines custom color constants used for styling the application.

### lib/widgets/FamilyGroupWidget.dart

This file defines the `FamilyGroupWidget` used in the `HomeScreen`.

### lib/widgets/SalaryWidget.dart

This file contains the `SalaryWidget` used in the `HomeScreen` .

### lib/widgets/ViewAllWidget.dart

This file contains the `ViewAllWidget` used in the `HomeScreen` .

### lib/main.dart

This is the entry point of the application. It sets up the main widget tree and initializes necessary packages like `flutter_screenutil`.

## Packages Used

- **google_fonts**: For custom font styles.
- **flutter_screenutil**: For responsive design across different screen sizes.



