
# E-Commerce Application

Application lets users (customers of fictional UTestShop) shop exclusive deals.  

Application is implemented using Swift. Main workflow consists of two main tabs.

# Home tab

    1. Lists the exclusive items on sale.
    2. Implemented using UITableViewController to list items in shop.
    3. Reusable Table prototype cell is designed to render items. 
    4. Each cell is designed to display the item image, title description, price, and AddToCart button.
    5. User can scroll thru and add items to cart.
    6. Feedback is provided upon adding an item in to the cart.

# Cart tab

    1. Lists the added items to cart.   
    2. Implemented using UIView to contain the TotalPrice and #Items, UITableViewController to list added items.   
    3. Reusable Table prototype cell is designed to render items. 
    4. Each cell is designed to display the item image, title description, price, and RemoveFromCart button.
    5. User can scroll thru and add items to cart.
    6. Feedback is provided upon removing an item from the cart.

# Code

    Project implementation consists of Main.storyboard as the starting point.    
    ShopHomeTableViewController has the UI controller logic for Home tab.    
    ShoppingCartViewController has the UI controller logic for Cart tab.    
    PlaceOrderViewController has the UI controller logic for final verification of the order information and placing the order.    
    OrderPlaceThankYouViewController has the UI controller logic for thank you note and placed order information.    

# Compile & Execute

    Code can be compiled and run using XCode.    
