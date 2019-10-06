<?php

    require_once('../config/database.php');

    class Lecturer {

        private $db;

        //Constructor to Initiate database connection
        public function __construct(){

            $db = new DB;

            $this->db = $db->get_connection();

        }

        public function CreateCourse($course_code, $course_title, $course_description,$credit_unit, $dept_code, $faculty_code, $id_number){

            $errors = array();
            $message = '';
            $created_at = date('Y-m-d');

            $insert_sql = "INSERT INTO courses (course_id,course_code,course_title,course_description,credit_unit, dept_code,faculty_code, id_number, created_at) 
            VALUES(NULL,'$course_code','$course_title','$course_description','$credit_unit','$dept_code','$faculty_code','$id_number','$created_at')" ;


            if($insert_query = $this->db->query($insert_sql)){

                $message = 'Course created successfully.';

                return $message;
            }

        }

        public function CreateNote($course_code, $note_title,$target_file,$id_number){

            $errors = array();
            $message = '';
            $created_at = date('Y-m-d');

            $insert_sql = "INSERT INTO notes (note_id,course_code,note_title,note_file,id_number,created_at) 
            VALUES(NULL,'$course_code','$note_title','$target_file','$id_number','$created_at')" ;


            $insert_query = $this->db->query($insert_sql) or die(mysqli_error($this->db));

        }

        public function CreateAssignment($course_code, $assignment_title,$target_file,$id_number){

            $errors = array();
            $messageAss = '';
            $created_at = date('Y-m-d');

            $insert_sql = "INSERT INTO assignments (assignment_id,course_code,assignment_title,assignment_file,id_number,created_at) 
            VALUES(NULL,'$course_code','$assignment_title','$target_file','$id_number','$created_at')" ;

             if($insert_query = $this->db->query($insert_sql)){

                $messageAss = 'Assignment created successfully.';

                
            }
            return $messageAss;
            // $insert_query = $this->db->query($insert_sql) or die(mysqli_error($this->db));

        }

        public function SelectAssignments($id_number){

            $sql = "SELECT * FROM assignments  WHERE id_number ='$id_number'";
            $assignments = $this->db->query($sql);

            return $assignments;



        }

        public function SelectCourses($id_number){

            $sql = "SELECT * FROM courses  WHERE id_number ='$id_number'";
            $courses = $this->db->query($sql);

            return $courses;



        }

        public function SelectUngraded($course){

            $sql = "SELECT * FROM submissions  WHERE course_code ='$course' and grade=''";
            $ungradeds = $this->db->query($sql);

            return $ungradeds;



        }

        public function GetUser($id_number){

            $sql = "SELECT * FROM users where id_number = '$id_number'";
            $query =$this->db->query($sql);

            $user = mysqli_fetch_assoc($query);

            return $user;
          }

          public function AddGrade($submission_id, $grade){

            $sql = "UPDATE submissions SET grade='$grade' WHERE submission_id='$submission_id'";
            

            if($query =$this->db->query($sql)){

                $message = 'Graded Successfully';

                return $message;
            }

           
          }



    public function deletetAssignment($id_number, $id)
    {
        $message = '';
        $sql1 = "SELECT * FROM assignments  WHERE id_number ='$id_number'";
        $assignments = $this->db->query($sql1);

        while ($fetch = mysqli_fetch_assoc($assignments)) {
            $id = $fetch['assignment_id'];
        }


        $sql2 = "DELETE  FROM assignments  WHERE id_number = '$id_number' AND assignment_id = '$id' ";
        $deleteAss = $this->db->query($sql2);

        return $deleteAss;
    }
       

        

        


    }



?>