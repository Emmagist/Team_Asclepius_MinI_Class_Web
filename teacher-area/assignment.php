<?php

require '../controllers/LecturerController.php';

$lecturer = new Lecturer;

$id_number = $_SESSION['id_number'];



$assignments = $lecturer->SelectAssignments($id_number);

if (isset($_GET['delete'])) {
  $id = $_GET['delete'];
  $delete = $lecturer->deletetAssignment($id_number, $id);

  if ($delete) {
    $_SESSION['delete-mgs'] = 'Assignment was deleted!';
    echo '<script> location.replace("assignment.php"); </script>';
    exit();
  }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <script src="https://kit.fontawesome.com/2d058dd44a.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Poppins|Candal|Lora" rel="stylesheet">
  <link rel="stylesheet" href="../css/bootstrap.css">
  <link rel="stylesheet" href="../css/newdashboard.css">
  <link rel="stylesheet" href="../css/teachdashboard.css">
  <title>Document</title>
</head>

<body>
  <?php require_once "header.php"; ?>

  <div class="container" id="container-teacherArea">

    <?php
    if (isset($_SESSION['delete-mgs'])) {
      echo "<h5 class='alert alert-success text-center mt-5'>" . $_SESSION['delete-mgs'] . "</h5>";
      unset($_SESSION['delete-mgs']);
    }
    ?>

    <a href="create_assignment.php" value="" class="btn btn-success mb-4 " id="button-link">Add Assignment</a>
    <table class="table table-bordered table-responsive-lg table-condensed table-hover">
      <thead class="table-primary">

        <tr>
          <th>#</th>
          <th>Assignment title</th>
          <th>Course Code</th>
          <th>Action</th>
        </tr>
      </thead>
      <?php
      $no = '';
      while ($assignment = mysqli_fetch_assoc($assignments)) :
        $no++;
        ?>

        <tbody>
          <tr>
            <td><?= $no; ?></td>
            <td><?= $assignment['assignment_title']; ?></td>
            <td>
              <?= $assignment['course_code'] ?>

            </td>
            <td>
              <a href="edit_assignment.php" class="btn btn-primary">Edit</a>
              <a href="assignment.php?delete=<?= $assignment['assignment_id'] ?>" class="btn btn-danger">Delete</a>
              <a href="grade_assignment.php?course=<?= $assignment['course_code']; ?>" class="btn btn-success">Grade</a>
            </td>
          </tr>
        <?php
        endwhile;


        ?>
        </tbody>
    </table>
  </div>

  <!-- FOOTER -->
  <div class="footer text-center">
    <div class="footer-middle">
      &copy; Asclepius.com | Designed by Asclepius Team
    </div>
  </div>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="../js/menu-bar.js"></script>
  <script src="/js/newdashboard.js"></script>
  <script src="/js/main.js"></script>
</body>

</html>