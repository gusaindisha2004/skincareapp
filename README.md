# skincareapp
<p> <h1>Introduction</h1>

Over the past few week , our team of — Disha and I — embarked on an exciting journey of developing an e-commerce app using Flutter. As beginners in coding, this project was a blend of challenging moments and rewarding experiences, all of which contributed to our growth as developers. Our goal was to create a functional and user-friendly app with features like a dynamic home screen, and cart screen . The journey turned out to be a rich learning experience, offering insights into mobile app development and the intricacies of building a product from the ground up.

In this blog post, I’II walk you through our journey: the features we built, the challenges we faced, the lessons we learned, and what we plan to improve in future iterations.

<h3>The idea</h3>

The idea was simple: recreate the core functionalities of the skincare app in a way that allow users to browse skincare, add items to their cart, and simulate the checkout process. We wanted to build something that felt like a real app, dynamic content and smooth user experience.

<h3>Project Overview : The vision</h3>

Our goal is to create a comprehensive e-commerce app that allows users to browse products, add items to their cart, make secure purchases. The app should deliver a seamless user experience with intuitive navigation, personalized content, and reliable performance. The vision for this project was clear: to build a simple yet effective e-commerce app that offers users a seamless shopping experience. We wanted to ensure that users could easily navigate through different sections of the app, the home screen, Cart, and Payment screen. The aim was to create an app that not only functions well but also provide a smooth and enjoyable user experience, similar to what you’d expect from a professional-grade application.

<h3>What we built?</h3>

<h4>1. Dynamic home screen & category screen</h4>
The home screen is where users first interact with the app. At the top of the screen, we display the cart symbol and home button. Below that, interactive cards lead to the menu screen. The home screen also features a bottom navigation bar with two tabs — Home, Cart each providing access to different parts of the app. While some of these screens contain static data, facewash screen, toner screen and serum screen etc. , the Home screen is fully functional, offering a dynamic user experience. The category screen is a critical part of the app, allowing users to browse through different item categories. We implemented a scroll-able list of tabs representing these categories, and clicking on each tab renders a list of items cards. The items details, including names, descriptions, and prices, are made individually in a file.
<h4>2. Cart screen functionality</h4>

The Cart screen is designed to provide users with a clear and efficient way to manage their selected items. Here’s how it works:

Item Overview: Users can view a list of products they’ve added to their cart, including item names, quantities, and prices. Each item displays a thumbnail image for quick identification.
Quantity Adjustment: Users can easily adjust the quantity of each item using plus and minus buttons. The total price updates dynamically based on these changes.
Remove Items: Users have the option to remove items from the cart if they change their mind.
Checkout Button: At the bottom of the screen, there’s a prominent checkout button that takes users to the checkout process, where they can review their order, enter payment details, and complete their purchase.
Summary Display: The screen also includes a summary of the total cost, including any applicable taxes or discounts, providing users with a clear view of their final amount before proceeding to checkout.
<h4>3. checkout and payment integration</h4>

For the checkout process, we integrated one payment methods: QR. Although users can go through the motions of selecting a payment method, the app currently doesn’t complete actual transactions — a feature we plan to implement more fully in the future.
<h4>4. UI/UX considerations</h4>

We placed a strong emphasis on creating a user-friendly interface that mirrors the experience of using a professional app. This included designing a splash screen with a loading indicator, using consistent color schemes, and ensuring that navigation was intuitive. While the app isn’t fully feature-complete, the foundation we’ve built offers a smooth and visually appealing user experience.

<h3>The challenges we faced</h3>

<h4>1. Payment gateway integration</h4>

While integrating QR was relatively straightforward, the challenge lay in ensuring that the payment process was smooth and intuitive. we had to simulate the payment process without actually processing transactions — a task that required careful attention to detail.

<h4>2. Collaboration using GitHub</h4>

This was our first time working on a project of this scale using GitHub. Managing version control, handling merge conflicts, and ensuring that everyone was on the same page took some getting used to, but it ultimately strengthened our teamwork and communication skills.
<h3>Conclusion</h3>

In the end, this project was more than just an attempt to clone an app; it was a deep dive into the world of mobile app development, teamwork, and problem-solving. While the app isn’t a perfect MVP, it’s a strong foundation that we can continue to build upon.

We couldn’t have done it without the support of our mentors, Amit Srivastava and Sahil Kumar, whose guidance was invaluable throughout this journey. A big thank you to Dr. Gopal Choudhary, our TPO, for overseeing the summer Flutter training course and providing us with the resources and encouragement to take on this challenge.</p> 
