<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Loan Approver</title>
</head>

<body>

  <h1>Open the Chrome Inspector Console!</h1>

  <script>
    // @NOTE: change these to test the code with different values
    var income = 25000;
    var debtIncomeRatio = .5;
    var yearsInJob = 3;
    var criminalRecord = false;

    if (income < 30000) {
      if (debtIncomeRatio < .5) {
        console.log("No Loan");
      }
      else {
        console.log("Loan");
      }
    }
    else if (income >= 30000 && income < 75000) {
      if (yearsInJob < 1) {
        console.log("No Loan");
      }
      else {
        console.log("Loan");
      }
    }
    else {
      if (criminalRecord) {
        console.log("No Loan");
      }
      else {
        console.log("Loan");
      }
    }

  </script>
</body>

</html>
