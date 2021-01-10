*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Open Bookstore from the browser
  [Tags]    Book
   Open Browser  https://www.indiabookstore.net/  gc
   Maximize Browser Window

  Capture Page Screenshot  Title-1.png

  execute javascript  window.scrollTo(0,500)

select a Category
     Mouse Down On Link  xpath://a[contains(text(),'Computing & Internet')]
     wait until element is visible  xpath://a[contains(text(),'Digital Media and Internet (0)')]
     Capture Page Screenshot  Category-2.png

Select a Sub Category
    click link  xpath://a[contains(text(),'Digital Media and Internet (0)')]
    Capture Page Screenshot  subcategory-3.png

Select Book
    click image  xpath://*[@id="9780596156718"]/a/div[2]/img
    Capture Page Screenshot  Selectbook-4.png
Purchase a Book
    click link  xpath://*[@id="main-wrapper"]/div[5]/div[2]/div[3]/div/a[1]

Redirecting to next window
    select window  title=The Art of Community: Building, Managing, and Supporting Cooperation Over the Internet (English) by Jono Bacon - Compare price for The Art of Community: Building, Managing, and Supporting Cooperation Over the Internet (English) | IndiaBookStore.net
    sleep  3s

Redirecting to purchase Window
    select window  title=Buy The Art of Community: Building, Managing, and Supporting Cooperation Over the Internet Book Online at Low Prices in India | The Art of Community: Building, Managing, and Supporting Cooperation Over the Internet Reviews & Ratings - Amazon.in
    sleep  3s
    Capture Page Screenshot  Buy-5.png

Add to Cart 
    click element  xpath://*[@id="add-to-cart-button"]
    sleep  3s
    Capture Page Screenshot  Addcart-6.png

Close Browser
    Close Browser
