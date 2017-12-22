# CORRECTION OF MISTAKES

## Customer
+ corrected the order of arguments in Customer #add_review method to correspond to Review initialize
+ corrected Customer.find_by_name method to call .full_name method on each customer instance to be compared to full-name
+ corrected Customer.all_names method to return full name by calling .full_name method on customer instance
+ corrected Customer.find_all_by_first_name method to compare customer.first_name to first_name instead of self

## Restaurant
+ corrected Restaurant #reviews method to return actual review  (review_instance.content)

## Review
+ added :content in Review attr_accessor and Review initialize method
+ corrected typo in Review attr_accessor lowercasing :Restaurant

## Testing
+ created three customers in console.rb for testing
+ created three restaurants in console.rb for testing
