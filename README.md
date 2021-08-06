# GA4 Ecommmerce Items Data Layer Version 1 Variable 
This Variable for **Google Analytics 4 (GA4)** returns **GA4 Ecommerce Items** as **Data Layer Variable Version 1**. This ensures that Google Tag Manager will only access the most recent Item push into the Data Layer.

The Variable removes the need for **[clearing the ecommerce object](https://developers.google.com/tag-manager/ecommerce-ga4#clearing_the_ecommerce_object)** in your implementation.

## How to use the Variable
The Variable requires no setup. The Variable is reading data from the Data Layer Key Part **ecommerce.items**, but as Variable Version 1.

![GA4 Ecommmerce Items Data Layer Version 1 Variable](https://github.com/gtm-templates-knowit-experience/gtm-ga4-ecom-items-dlv-version-1-variable/blob/main/images/ga4-ecom-items-dlv-version-1-variable.png)

Just install the Template, and add the Variable to your **GA4 Ecommerce Tags** as shown in the image below. Variable name used in the Tag example is **{{ecom - items - DLV - V1}}**).

![GA4 Ecommerce Tag with Variable](https://github.com/gtm-templates-knowit-experience/gtm-ga4-ecom-items-dlv-version-1-variable/blob/main/images/ga4-example-setup.png)
