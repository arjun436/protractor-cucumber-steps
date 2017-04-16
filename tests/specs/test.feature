Feature: Running Cucumber with Protractor
  As a user of Protractor
  I should be able to use Cucumber
  to run my e2e tests

  Scenario: Click on Page1 test page link should lead to Page2 test page
    When I go to URL "http://localhost:8001/test1.html"
    And I wait for 200 ms
    And I click "testPage"."linkTest2Page"
    Then the title should equal to "Test2 Page"

  Scenario: Wait and click on Page1 test page link should lead to Page2 test page
    When I go to "testPage"."pageTest1"
    And I wait and click "testPage"."linkTest2Page"
    Then the title should equal to "Test2 Page"

  Scenario: Link on Page1 test page should be clicked if it is visible and lead to Page2 test page
    When I go to "testPage"."pageTest1"
    And I wait for 200 ms
    And I click "testPage"."linkTest2Page" if present
    And I wait for 200 ms
    Then the title should equal to "Test2 Page"

  Scenario: Link on Page1 test page should not be clicked if it is invisible
    When I go to "testPage"."pageTest1"
    And I wait for 200 ms
    And I click "testPage"."linkInvisibleTest2Page" if present
    And I wait for 200 ms
    Then the title should equal to "Test1 Page"
