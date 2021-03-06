Feature: SUC:02-01 Register Tax Type Individual - Register Tax Type

  @SUC:02-01- @taxtypes-ind @MRA @main- @MRA-indv-only
  Scenario Outline: UAT_TCS 01.19.2	To Verify the Process of Registering a Tax Type
    Given  User navigates to the login page
    When Enter the username "tripsuser" and password "Passw0rd"
    Then click on login
    When I enter valid data on the TaxType Individual page <taxtype>
      | TaxpayerClassificationT | Individual    | 0 |
      | TaxPayer_TIN            | P0023070      | 1 |
      | Turnover                | 20000         | 2 |
      | EDR                     | 16/09/2016    | 3 |
      | Wait for Record         | Record Added  | 4 |
      | Attachment              | C:\id_doc.png | 5 |
      | Doctype                 | National ID   | 6 |
      | AttachNumber            | 12345         | 7 |
    Then TaxType ARN number will generate
      | ARN number | Processing Completed - Reference Number - ARN | 0 |
    Given Open CRM URL Module
    And Close Popup Window
    Then Click on registration application link
    Then switch to frame0
    Then search for reference number
    Then Click on reference number
    Then switch to frame1
    And Click on NextStage button
    Then switch to frame1
    Then Goto view AttachmentDetails screen
    And Download the Attachment "C:\Users\maxma\Downloads"
    Then switch to frame1
    Then clicks Approve from the taxtypedropdown
    Then Click on Save button
    Then switch to frame1
    And Verify the String "<Read>"
    Examples:
      | Read     | taxtype              |
      | Approved | Domestic Excise      |
      | Approved | Domestic VAT         |
      | Approved | Fringe Benefit Tax   |
      | Approved | PAYE                 |
      | Approved | Personal Income Tax  |
#      turnover cannot be registered at the same time as PIT
#      | Approved | Turnover Tax(TOT)    |
      | Approved | Withholding Tax(WHT) |




    
 
    
    
   
   
    