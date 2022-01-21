<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        

    <title>list_catagory</title>
</head>

<body>
    <style>
        #customers {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td,
        th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #04AA6D;
            color: white;
        }

        body {
            background-color: rgb(165, 160, 160);
            ;
        }

        .div1 {
            background-color: whitesmoke;
           
            margin-right: 0px;
            padding: 20px;
        }

        .div2 {
            border: 1px solid red;
            background-color: whitesmoke;
            padding: 20px;
        }

        .div3 {
            border: 1px solid rgb(0, 255, 0);
            background-color: rgb(195, 228, 241);
            padding: 20px;
        }
       
    </style>
    
    <div class="m-3">
        <h1 >Catagory</h1>
        <nav class="navbar navbar-light " style="background-color: #dae2e7;">
            <div class="container-fluid">
                
              <a class=" navbar-brand "><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-justify" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M2 12.5a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5z"/>
              </svg>List</a>

              <form class="d-flex">
               
                <button class="btn btn-outline-success" type="submit"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-plus" viewBox="0 0 16 16">
                    <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                  </svg> Add Catagory</button>
              </form>
            </div>
          </nav>
          <nav class="navbar navbar-light" style="background-color: whitesmoke;">
            <div class="container-fluid">
                <label for="Status">Show 
                    <select class="mb-3" aria-label=".form-select-lg example">
                        <option selected></option>
                        <option value="1">One</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
                      </select>
                      entries
                    </label>
              <form class="d-flex">
                <!-- <label  for="Status">Search: </label> -->
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search:</button>
               
              </form>
            </div>
          </nav>
        <div class="row">
            <div class="col">
                <div class="div1 mb-3">
                    
                    
                    <form>
                        <div>
                            <table class="table">

                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Code</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Note</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Action</th>
                                </tr>
                                <?php
                                $servername = "localhost";
                                $username = "root";
                                $password = "";
                                $dbname= "inventory_management";
                                
                                // Create connection
                                $conn = new mysqli($servername, $username, $password, $dbname);
                                
                                // Check connection
                                if ($conn->connect_error) {
                                    die("Connection failed: " . $conn->connect_error);
                                } 
                                echo "Connected successfully";
                                
                                
                                $sql = " SELECT * FROM catagory ";
                                $result = mysqli_query($conn, $sql);

                                if (mysqli_num_rows($result) > 0) {
                                 // output data of each row
                                   while($row = mysqli_fetch_assoc($result)) {
   
 
                                

                                    ?>
                                    
                                   
                                    <tr>
                                    <td><?php  echo  $row["id"] ?></td>
                                    <td><?php  echo  $row["code"] ?></td>
                                    <td><?php  echo  $row["name"] ?></td>
                                    <td><?php  echo  $row["description"] ?></td>
                                    <td> </td>
                                    <td> </td>
                                   
                                </tr>
                                <?php
                                  }
                                } else {
                                  echo "0 results";
                                }
                               
                                
                                ?> 
                            
                               
                                
                            </table>
                            <label  for="Status">Showing 1 to 4 of 4 entrites </label>
                            <div class="mt-3 text-end">
                               
                                <div class="btn-group" role="group" aria-label="Basic outlined example">
                                    <button type="button" class="btn btn-outline-primary">Previous</button>
                                    <button type="button" class="btn btn-outline-primary">1</button>
                                    <button type="button" class="btn btn-outline-primary">Next</button>
                                  </div>
                            </div>
                        </div>


                    </form>
                </div>


            </div>


        </div>

    </div>
    </div>
    </div>


    

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>

</html>