# GA4 Ecommerce Items Data Layer Version 1 Variable 
This Variable (Web) for **Google Analytics 4 (GA4)** returns **GA4 Ecommerce Items** and other standard ecommerce parameters as **Data Layer Variable Version 1**. This ensures that Google Tag Manager will only access the most recent push into the Data Layer.

If you haven't implemented **[clearing of the ecommerce object](https://developers.google.com/analytics/devguides/collection/ga4/ecommerce?client_type=gtm#clear_the_ecommerce_object)**, this Variable helps you overcome issues that can cause. If you have implemented **object clearing** you can also use this variable as extra "safety" in case the object clearing implementation breaks.

In addition, you can also use this Variable to remove **null** values from Items. **null** Values in Items can cause **null** being sent as a string, which can cause data issues.

This Template is available in the [**Google Tag Manager Template Gallery**](https://tagmanager.google.com/gallery/#/owners/gtm-templates-knowit-experience/templates/gtm-ga4-ecom-items-dlv-version-1-variable).

## How to use the Variable
Select the parameter you want to as output. The Variable is reading data from the Data Layer Key Part **ecommerce.items** if you select **items**, but as Variable Version 1.

If you select **items**, you also have the option to remove **null** values if that is an issue with your implementation.

![GA4 Ecommmerce Items Data Layer Version 1 Variable](https://github.com/gtm-templates-knowit-experience/gtm-ga4-ecom-items-dlv-version-1-variable/blob/main/images/ga4-ecom-items-dlv-version-1-variable-v3.png)

**The following standard ecommerce parameters are supported:**
| Parameter Name  | Data Layer |
| ------------- | ------------- |
| items | ecommerce.items |
| item_list_id | ecommerce.item_list_id |
| item_list_name | ecommerce.item_list_name |
| creative_name | ecommerce.creative_name |	
| creative_slot | ecommerce.creative_slot |
| promotion_id | ecommerce.promotion_id |
| promotion_name | ecommerce.promotion_name |
| location_id | ecommerce.location_id |
| payment_type | ecommerce.payment_type |
| shipping_tier | ecommerce.shipping_tier |
| transaction_id | ecommerce.transaction_id |
| affiliation | ecommerce.affiliation |
| coupon | ecommerce.coupon |
| value | ecommerce.value |
| shipping | ecommerce.shipping |
| tax | ecommerce.tax |

Just install the Template, and add the Variable to your **GA4 Ecommerce Tags** as shown in the image below. Variable name used in the Tag example is **{{ecom - items - DLV - V1}}**).

![GA4 Ecommerce Tag with Variable](https://github.com/gtm-templates-knowit-experience/gtm-ga4-ecom-items-dlv-version-1-variable/blob/main/images/ga4-example-setup.png)

# The issue this Template solves Illustrated
The image below is from Google Tag Manager Preview Pane showing the result from a **add_to_cart** Event. As we can see the Variable from this Template (**ecom - items - DLV - V1**) is returning the item added to cart. The Data Layer Variable Version 2 (**ecom - items- DLV - v2**) contains the item added to cart **+** a item from a previous Event which is not correct.

![The issue solved illustrated](https://github.com/gtm-templates-knowit-experience/gtm-ga4-ecom-items-dlv-version-1-variable/blob/main/images/varible-example-demonstrating-dlv-v1-vs-v2.png)
