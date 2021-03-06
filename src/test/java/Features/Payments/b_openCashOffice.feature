Feature: [SUC:05-15] Open a Cash Office

#  credentials must be for cash supervisor
  Background:
    Given User navigates to the login page
    When Enters the username "cashofficer22" and password "Passw0rd" to login
    Then User should be logged in

  @trial1
  Scenario Outline: UAT_M7_02-01-UAT_M7_02-02-Verify the Process of Allocate Cash Till
    Given navigate to Revenue Collection>>Cash Office Daily Control
    When selects Cash Office Name <cfN>
    And clicks Open Cash Office
    Then System opens the Cash Office

    Examples:
      | cfN   |
      | Elewa |
