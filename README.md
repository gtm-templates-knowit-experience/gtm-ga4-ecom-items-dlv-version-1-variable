# GA4 Ecommerce Items Data Layer Version 1 Variable 
This Variable (Web) for **Google Analytics 4 (GA4)** returns **GA4 Ecommerce Items** as **Data Layer Variable Version 1**. This ensures that Google Tag Manager will only access the most recent Item push into the Data Layer.

The Variable removes the need for **[clearing the ecommerce object](https://developers.google.com/tag-manager/ecommerce-ga4#clearing_the_ecommerce_object)** in your implementation. If you have implemented **object clearing** you can also use this variable as extra "safety" in case the object clearing implementation breaks.

## How to use the Variable
The Variable requires no setup. The Variable is reading data from the Data Layer Key Part **ecommerce.items**, but as Variable Version 1.

![GA4 Ecommmerce Items Data Layer Version 1 Variable](https://github.com/gtm-templates-knowit-experience/gtm-ga4-ecom-items-dlv-version-1-variable/blob/main/images/ga4-ecom-items-dlv-version-1-variable.png)

Just install the Template, and add the Variable to your **GA4 Ecommerce Tags** as shown in the image below. Variable name used in the Tag example is **{{ecom - items - DLV - V1}}**).

![GA4 Ecommerce Tag with Variable](https://github.com/gtm-templates-knowit-experience/gtm-ga4-ecom-items-dlv-version-1-variable/blob/main/images/ga4-example-setup.png)

# The issue this Template solves Illustrated
The image below is from Google Tag Manager Preview Pane showing the result from a **add_to_cart** Event. As we can see the Variable from this Template (**ecom - items - DLV - V1**) is returning the item added to cart. The Data Layer Variable Version 2 (**ecom - items- DLV - v2**) contains the item added to cart **+** a item from a previous Event which is not correct.

![The issue solved illustrated](https://github.com/gtm-templates-knowit-experience/gtm-ga4-ecom-items-dlv-version-1-variable/blob/main/images/varible-example-demonstrating-dlv-v1-vs-v2.png)
