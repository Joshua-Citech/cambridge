<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <!---------bootstrap icons---------->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
    <!---------main css---------->
    <link href="style/styles.css" rel="stylesheet">




    <style>
        .post {
            z-index: 1;
            overflow: auto;
            height: 50vh;
        }

        .post::-webkit-scrollbar {
            display: none;
        }
    </style>

</head>

<body>
    <!-------------------Navbar--------------------------->
    <nav class="navbar navbar-expand-lg sticky-top navbar-light po">
        <div class="container-fluid  ">
            <a class="navbar-brand" href="studentModule.php">
                <img src="img/logo.png" alt="Logo" style="width:200px; height:40px;">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">


                </ul>
                <form class="d-flex">

                    <div class="input-group m-2 ">
                        <button class="btn  px-4 text-white btn-sm btn-outline-success bg-success dropdown-toggle"
                            type="button" data-bs-toggle="dropdown" aria-expanded="false"><i
                                class="fas fa-user-cog "></i> Settings </button>
                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-lg-start">
                            <li><a class="dropdown-item" href="StudentProfile.php">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                        class=" bi bi-person-badge" viewBox="0 0 16 16">
                                        <path
                                            d="M6.5 2a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1h-3zM11 8a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
                                        <path
                                            d="M4.5 0A2.5 2.5 0 0 0 2 2.5V14a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2.5A2.5 2.5 0 0 0 11.5 0h-7zM3 2.5A1.5 1.5 0 0 1 4.5 1h7A1.5 1.5 0 0 1 13 2.5v10.795a4.2 4.2 0 0 0-.776-.492C11.392 12.387 10.063 12 8 12s-3.392.387-4.224.803a4.2 4.2 0 0 0-.776.492V2.5z" />
                                    </svg>

                                    Profile</a></li>
                            <li><a class="dropdown-item" href="studentLogin.php">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                        class=" bi bi-box-arrow-right" viewBox="0 0 16 16">
                                        <path fill-rule="evenodd"
                                            d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z" />
                                        <path fill-rule="evenodd"
                                            d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z" />
                                    </svg> Logout</a></li>
                        </ul>
                </form>
            </div>
        </div>
    </nav>

    <div class="container-fluid">
        <div class="row">
            <!---------------------SideNav-------------------------->
            <div class="col-md-2 shadow bg-white rounded">
                <ul class="nav flex-sm-column px-2 py-3">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="studentModule.php">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="studebtModule_activeCourses.php">Courses</a>
                    </li>
                   
                    <li class="nav-item">
                        <a class="nav-link" href="announcements.php">Announcements</a>
                    </li>
                </ul>
            </div>
            <!--------------------SideNav end--------------------->

            <div class="col-md-10">
                <!----------------------course card------------------------->

                <div class="alert bg-warning m-3 alert-dismissible fade show" role="alert">
                    <strong>Important!</strong> Java Programming Language 1st Internals. <a href="">Click to join test.</a>  <strong>Time: </strong> 10:00 PM
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>


                <a href="studebtModule_activeCourses.php">
                    <div class="container my-3">

                        <div class="row shadow bg-white rounded">
                            <div class="card bg-primary fs-5 text-white px-4" style="height: 8rem;">
                                <div class="card-body">

                                    <div class="fw-normal  text-capitalize">
                                        Choose your course <svg xmlns="http://www.w3.org/2000/svg" width="16"
                                            height="16" fill="currentColor" class="bi bi-arrow-right"
                                            viewBox="0 0 16 16">
                                            <path fill-rule="evenodd"
                                                d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z" />
                                        </svg>
                                    </div>
                                    <div class="fs-6 text-capitalize">
                                        Department of Masters of Computer application
                                    </div>
                                    <div class="fs-6 text-capitalize pb-2">
                                        batch: Batch 2018 Semester: 5th
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </a>

                <!--------------------Cards----------------------->
                <div class="container my-3">
                    <div class="row">
                        <div class="col-12 col-md-6 col-lg-4">

                            <div class="card mb-2" style="height:11rem;">
                                <div class="card-body">
                                    <div class="fs-4 fw-bold">Attendance</div>
                                    <div class="fs-3"><i class="bi bi-journal-text"></i> 90.9&#37;</div>
                                </div>
                                <div class="card-footer">
                                    <a href="StudentAttendence.php">
                                        <div class="float-end"><i class="bi bi-arrow-down-right-circle"></i> View more
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="card mb-2 " style="height:11rem">
                                <div class="card-body">
                                    <div class="fs-4 fw-bold">Gradebook</div>

                                </div>
                                <div class="card-footer">
                                    <a href="gradebook.php">
                                        <div class="float-end"><i class="bi bi-arrow-down-right-circle"></i> View more
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="card mb-2" style="height:11rem">
                                <div class="card-body">
                                    <div class="fs-4 fw-bold">Queries</div>

                                </div>
                                <div class="card-footer">
                                    <a href="queries.php">
                                        <div class="float-end"><i class="bi bi-arrow-down-right-circle"></i> View more
                                        </div>
                                    </a>
                                </div>
                            </div>

                        </div>

                        <div class="col-12 col-md-6 col-lg-8 shadow bg-white rounded" style="height:34rem">

                            <!--------------------Activities----------------------->





                            <p class="pt-4 px-2 fw-bold fs-4">All Activities</p>
                            <!-----------------tabviews-------------------->
                            <nav>
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <a class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" href="#nav-home"
                                        role="tab" aria-controls="nav-home" aria-selected="true"><label
                                            class="text-uppercase px-1">upcoming</label></a>
                                    <a class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" href="#nav-profile"
                                        role="tab" aria-controls="nav-profile" aria-selected="false"><label
                                            class="text-uppercase px-1">ongoing</label></a>
                                    <a class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" href="#nav-contact"
                                        role="tab" aria-controls="nav-contact" aria-selected="false"><label
                                            class="text-uppercase px-1">Completed</label></a>
                                </div>
                            </nav>
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade show active post" id="nav-home" role="tabpanel"
                                    aria-labelledby="nav-home-tab">

                                    <!-----------------------------content------------------------------>

                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item fs-6 py-3">
                                            <label class="fs-6">

                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-file-earmark-medical"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="M7.5 5.5a.5.5 0 0 0-1 0v.634l-.549-.317a.5.5 0 1 0-.5.866L6 7l-.549.317a.5.5 0 1 0 .5.866l.549-.317V8.5a.5.5 0 1 0 1 0v-.634l.549.317a.5.5 0 1 0 .5-.866L8 7l.549-.317a.5.5 0 1 0-.5-.866l-.549.317V5.5zm-2 4.5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zm0 2a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5z" />
                                                    <path
                                                        d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z" />
                                                </svg>

                                                Online Class</label><br />
                                            <label class="fs-4 text-success fw-normal ">Course: Web
                                                Development (19MCA201905)
                                            </label>
                                            <label class=" text-capitalize float-end">Join Class </label>
                                            <br />
                                            <label class="fs-6"> StartTime: Dec 27, 2:30 AM</label>

                                        </li>
                                        <li class="list-group-item fs-6 py-3">
                                            <label class="fs-6">

                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-file-earmark-medical"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="M7.5 5.5a.5.5 0 0 0-1 0v.634l-.549-.317a.5.5 0 1 0-.5.866L6 7l-.549.317a.5.5 0 1 0 .5.866l.549-.317V8.5a.5.5 0 1 0 1 0v-.634l.549.317a.5.5 0 1 0 .5-.866L8 7l.549-.317a.5.5 0 1 0-.5-.866l-.549.317V5.5zm-2 4.5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zm0 2a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5z" />
                                                    <path
                                                        d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z" />
                                                </svg>

                                                Assignment</label><br />
                                            <label class="fs-4 text-success fw-normal ">Machine Learning
                                                (19MCA201905) </label>
                                            <label class=" text-capitalize float-end"> </label> <br />
                                            <label class="fs-6"> Time: Dec 27, 4:30 AM</label>

                                        </li>
                                        <li class="list-group-item fs-6 py-3">
                                            <label class="fs-6">

                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-file-earmark-medical"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="M7.5 5.5a.5.5 0 0 0-1 0v.634l-.549-.317a.5.5 0 1 0-.5.866L6 7l-.549.317a.5.5 0 1 0 .5.866l.549-.317V8.5a.5.5 0 1 0 1 0v-.634l.549.317a.5.5 0 1 0 .5-.866L8 7l.549-.317a.5.5 0 1 0-.5-.866l-.549.317V5.5zm-2 4.5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zm0 2a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5z" />
                                                    <path
                                                        d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z" />
                                                </svg>

                                                Online Class</label><br />
                                            <label class="fs-4 text-success fw-normal ">Course: Web
                                                Development (19MCA201905)
                                            </label>
                                            <label class=" text-capitalize float-end">Join Class </label>
                                            <br />
                                            <label class="fs-6"> StartTime: Dec 27, 2:30 AM</label>

                                        </li>
                                        <li class="list-group-item fs-6 py-3">
                                            <label class="fs-6">

                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-file-earmark-medical"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="M7.5 5.5a.5.5 0 0 0-1 0v.634l-.549-.317a.5.5 0 1 0-.5.866L6 7l-.549.317a.5.5 0 1 0 .5.866l.549-.317V8.5a.5.5 0 1 0 1 0v-.634l.549.317a.5.5 0 1 0 .5-.866L8 7l.549-.317a.5.5 0 1 0-.5-.866l-.549.317V5.5zm-2 4.5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zm0 2a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5z" />
                                                    <path
                                                        d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z" />
                                                </svg>

                                                Assignment</label><br />
                                            <label class="fs-4 text-success fw-normal ">Machine Learning
                                                (19MCA201905) </label>
                                            <label class=" text-capitalize float-end"> </label> <br />
                                            <label class="fs-6"> Time: Dec 27, 8:30 AM</label>

                                        </li>
                                        <li class="list-group-item fs-6 py-3">
                                            <label class="fs-6">

                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-file-earmark-medical"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="M7.5 5.5a.5.5 0 0 0-1 0v.634l-.549-.317a.5.5 0 1 0-.5.866L6 7l-.549.317a.5.5 0 1 0 .5.866l.549-.317V8.5a.5.5 0 1 0 1 0v-.634l.549.317a.5.5 0 1 0 .5-.866L8 7l.549-.317a.5.5 0 1 0-.5-.866l-.549.317V5.5zm-2 4.5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zm0 2a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5z" />
                                                    <path
                                                        d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z" />
                                                </svg>

                                                Assignment</label><br />
                                            <label class="fs-4 text-success fw-normal ">Rocket Science
                                                (19MCA201905) </label> <label class=" text-capitalize float-end">
                                            </label> <br />
                                            <label class="fs-6"> Time: Dec 27, 9:30 AM</label>

                                        </li>



                                    </ul>


                                </div>

                                <div class="tab-pane fade post" id="nav-profile" role="tabpanel"
                                    aria-labelledby="nav-profile-tab">

                                    <!-----------------------------content------------------------------>

                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item fs-6 py-3">
                                            <label class="fs-6">

                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-file-earmark-medical"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="M7.5 5.5a.5.5 0 0 0-1 0v.634l-.549-.317a.5.5 0 1 0-.5.866L6 7l-.549.317a.5.5 0 1 0 .5.866l.549-.317V8.5a.5.5 0 1 0 1 0v-.634l.549.317a.5.5 0 1 0 .5-.866L8 7l.549-.317a.5.5 0 1 0-.5-.866l-.549.317V5.5zm-2 4.5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zm0 2a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5z" />
                                                    <path
                                                        d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z" />
                                                </svg>

                                                Assignment</label><br />
                                            <label class="fs-4 text-success fw-normal ">Rocket Science
                                                (19MCA201905) </label> <label
                                                class=" text-capitalize float-end">evaluation
                                                pending</label> <br />
                                            <label class="fs-6"> Time: Dec 27, 2:30 AM</label>

                                        </li>
                                        <li class="list-group-item fs-6 py-3">
                                            <label class="fs-6">

                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-file-earmark-medical"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="M7.5 5.5a.5.5 0 0 0-1 0v.634l-.549-.317a.5.5 0 1 0-.5.866L6 7l-.549.317a.5.5 0 1 0 .5.866l.549-.317V8.5a.5.5 0 1 0 1 0v-.634l.549.317a.5.5 0 1 0 .5-.866L8 7l.549-.317a.5.5 0 1 0-.5-.866l-.549.317V5.5zm-2 4.5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zm0 2a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5z" />
                                                    <path
                                                        d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z" />
                                                </svg>

                                                Online Class</label><br />
                                            <label class="fs-4 text-success fw-normal ">Course: Rocket
                                                Science (19MCA201905)
                                            </label>
                                            <label class=" text-capitalize float-end">Join Class </label>
                                            <br />
                                            <label class="fs-6"> StartTime: Dec 27, 2:30 AM</label>

                                        </li>
                                        <li class="list-group-item fs-6 py-3">
                                            <label class="fs-6">

                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-file-earmark-medical"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="M7.5 5.5a.5.5 0 0 0-1 0v.634l-.549-.317a.5.5 0 1 0-.5.866L6 7l-.549.317a.5.5 0 1 0 .5.866l.549-.317V8.5a.5.5 0 1 0 1 0v-.634l.549.317a.5.5 0 1 0 .5-.866L8 7l.549-.317a.5.5 0 1 0-.5-.866l-.549.317V5.5zm-2 4.5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zm0 2a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5z" />
                                                    <path
                                                        d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z" />
                                                </svg>

                                                Online Class</label><br />
                                            <label class="fs-4 text-success fw-normal ">Course: Machine
                                                Learning (19MCA201905)
                                            </label>
                                            <label class=" text-capitalize float-end">Join Class </label>
                                            <br />
                                            <label class="fs-6"> StartTime: Dec 27, 2:30 AM</label>

                                        </li>
                                        <li class="list-group-item fs-6 py-3">
                                            <label class="fs-6">

                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-file-earmark-medical"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="M7.5 5.5a.5.5 0 0 0-1 0v.634l-.549-.317a.5.5 0 1 0-.5.866L6 7l-.549.317a.5.5 0 1 0 .5.866l.549-.317V8.5a.5.5 0 1 0 1 0v-.634l.549.317a.5.5 0 1 0 .5-.866L8 7l.549-.317a.5.5 0 1 0-.5-.866l-.549.317V5.5zm-2 4.5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zm0 2a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5z" />
                                                    <path
                                                        d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z" />
                                                </svg>

                                                Assignment</label><br />
                                            <label class="fs-4 text-success fw-normal ">Machine Learning
                                                (19MCA201905) </label>
                                            <label class=" text-capitalize float-end">evaluation
                                                pending</label> <br />
                                            <label class="fs-6"> Time: Dec 27, 8:30 AM</label>

                                        </li>
                                        <li class="list-group-item fs-6 py-3">
                                            <label class="fs-6">

                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-file-earmark-medical"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="M7.5 5.5a.5.5 0 0 0-1 0v.634l-.549-.317a.5.5 0 1 0-.5.866L6 7l-.549.317a.5.5 0 1 0 .5.866l.549-.317V8.5a.5.5 0 1 0 1 0v-.634l.549.317a.5.5 0 1 0 .5-.866L8 7l.549-.317a.5.5 0 1 0-.5-.866l-.549.317V5.5zm-2 4.5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zm0 2a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5z" />
                                                    <path
                                                        d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z" />
                                                </svg>

                                                Assignment</label><br />
                                            <label class="fs-4 text-success fw-normal ">Rocket Science
                                                (19MCA201905) </label> <label
                                                class=" text-capitalize float-end">evaluation
                                                pending</label> <br />
                                            <label class="fs-6"> Time: Dec 27, 9:30 AM</label>

                                        </li>

                                    </ul>

                                </div>

                                <div class="tab-pane fade post " id="nav-contact" role="tabpanel"
                                    aria-labelledby="nav-contact-tab">
                                    <!-----------------------------content------------------------------>

                                    <li class="list-group-item fs-6 py-3">
                                        <label class="fs-6">

                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-file-earmark-medical"
                                                viewBox="0 0 16 16">
                                                <path
                                                    d="M7.5 5.5a.5.5 0 0 0-1 0v.634l-.549-.317a.5.5 0 1 0-.5.866L6 7l-.549.317a.5.5 0 1 0 .5.866l.549-.317V8.5a.5.5 0 1 0 1 0v-.634l.549.317a.5.5 0 1 0 .5-.866L8 7l.549-.317a.5.5 0 1 0-.5-.866l-.549.317V5.5zm-2 4.5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zm0 2a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5z" />
                                                <path
                                                    d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z" />
                                            </svg>

                                            Assignment</label><br />
                                        <label class="fs-4 text-success fw-normal ">Rocket Science
                                            (19MCA201905) </label> <label class=" text-capitalize float-end">evaluation
                                            pending</label>
                                        <br />
                                        <label class="fs-6"> Time: Dec 27, 2:30 AM</label>

                                    </li>


                                    <li class="list-group-item fs-6 py-3">
                                        <label class="fs-6">

                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-file-earmark-medical"
                                                viewBox="0 0 16 16">
                                                <path
                                                    d="M7.5 5.5a.5.5 0 0 0-1 0v.634l-.549-.317a.5.5 0 1 0-.5.866L6 7l-.549.317a.5.5 0 1 0 .5.866l.549-.317V8.5a.5.5 0 1 0 1 0v-.634l.549.317a.5.5 0 1 0 .5-.866L8 7l.549-.317a.5.5 0 1 0-.5-.866l-.549.317V5.5zm-2 4.5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zm0 2a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5z" />
                                                <path
                                                    d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z" />
                                            </svg>

                                            Assignment</label><br />
                                        <label class="fs-4 text-success fw-normal ">Rocket Science
                                            (19MCA201905) </label> <label class=" text-capitalize float-end">evaluation
                                            pending</label>
                                        <br />
                                        <label class="fs-6"> Time: Dec 27, 2:30 AM</label>

                                    </li>

                                    <li class="list-group-item fs-6 py-3">
                                        <label class="fs-6">

                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-file-earmark-medical"
                                                viewBox="0 0 16 16">
                                                <path
                                                    d="M7.5 5.5a.5.5 0 0 0-1 0v.634l-.549-.317a.5.5 0 1 0-.5.866L6 7l-.549.317a.5.5 0 1 0 .5.866l.549-.317V8.5a.5.5 0 1 0 1 0v-.634l.549.317a.5.5 0 1 0 .5-.866L8 7l.549-.317a.5.5 0 1 0-.5-.866l-.549.317V5.5zm-2 4.5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zm0 2a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5z" />
                                                <path
                                                    d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z" />
                                            </svg>

                                            Assignment</label><br />
                                        <label class="fs-4 text-success fw-normal ">Rocket Science
                                            (19MCA201905) </label> <label class=" text-capitalize float-end">evaluation
                                            pending</label>
                                        <br />
                                        <label class="fs-6"> Time: Dec 27, 2:30 AM</label>

                                    </li>

                                    <li class="list-group-item fs-6 py-3">
                                        <label class="fs-6">

                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-file-earmark-medical"
                                                viewBox="0 0 16 16">
                                                <path
                                                    d="M7.5 5.5a.5.5 0 0 0-1 0v.634l-.549-.317a.5.5 0 1 0-.5.866L6 7l-.549.317a.5.5 0 1 0 .5.866l.549-.317V8.5a.5.5 0 1 0 1 0v-.634l.549.317a.5.5 0 1 0 .5-.866L8 7l.549-.317a.5.5 0 1 0-.5-.866l-.549.317V5.5zm-2 4.5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zm0 2a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5z" />
                                                <path
                                                    d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z" />
                                            </svg>

                                            Assignment</label><br />
                                        <label class="fs-4 text-success fw-normal ">Rocket Science
                                            (19MCA201905) </label> <label class=" text-capitalize float-end">evaluation
                                            pending</label>
                                        <br />
                                        <label class="fs-6"> Time: Dec 27, 2:30 AM</label>

                                    </li>

                                    <li class="list-group-item fs-6 py-3">
                                        <label class="fs-6">

                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-file-earmark-medical"
                                                viewBox="0 0 16 16">
                                                <path
                                                    d="M7.5 5.5a.5.5 0 0 0-1 0v.634l-.549-.317a.5.5 0 1 0-.5.866L6 7l-.549.317a.5.5 0 1 0 .5.866l.549-.317V8.5a.5.5 0 1 0 1 0v-.634l.549.317a.5.5 0 1 0 .5-.866L8 7l.549-.317a.5.5 0 1 0-.5-.866l-.549.317V5.5zm-2 4.5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zm0 2a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5z" />
                                                <path
                                                    d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z" />
                                            </svg>

                                            Assignment</label><br />
                                        <label class="fs-4 text-success fw-normal ">Rocket Science
                                            (19MCA201905) </label> <label class=" text-capitalize float-end">evaluation
                                            pending</label>
                                        <br />
                                        <label class="fs-6"> Time: Dec 27, 2:30 AM</label>

                                    </li>

                                </div>
                            </div>


                        </div>
                    </div>
                </div>
                <!-- Optional JavaScript; choose one of the two! -->

                <!-- Option 1: Bootstrap Bundle with Popper -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
                    crossorigin="anonymous">
                </script>

                <!-- Option 2: Separate Popper and Bootstrap JS -->
                <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    -->
</body>

</html>