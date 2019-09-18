# 🔥 Flutter - Firebase Auth (Easy-to-use!)

This allows you to seamlessly integrate Firebase Authentication into your Flutter project without having the trouble to manage different Authentication states in different pages of your application. 

The Auth class abstracts the complexity and encapsulates the methods into a single unit, allowing developers to leverage complete functionality of Firebase.

# Getting Started

 1. Import ***auth.dart*** file into your Flutter Project
 
 2. Create an object for the BaseAuth class :
     `BaseAuth auth`
 
 3. Call the methods using the object within ***initState()*** method 
    
   ```
BaseAuth auth;

enum AuthStatus 
{
  notSignedIn,
  signedIn,
}

class XYZ{
....*insert code*.....

void initState() {      
 auth.currentUser().then((userId) { 
      setState(() {
        authStatus =
            userId != null ? AuthStatus.signedIn : AuthStatus.notSignedIn;
      });
     });
    }
  }
```

4. Tadaa!! Time to put your app to action🎉🎉
# Contributing 
Feel free to open issues and pull requests are welcome, anytime :)

Heads up! todo: implement social logins
# Released under MIT License

Copyright (c) 2019 Rahul Suresh

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
