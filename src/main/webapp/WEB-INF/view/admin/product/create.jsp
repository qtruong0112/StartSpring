<%@ page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="" />
                <meta name="author" content="" />
                <title>Dashboard - SB Admin</title>
                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script>
                    $(document).ready(() => {
                        const avatarFile = $("#avatarFile");
                        avatarFile.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#avatarPreview").attr("src", imgURL);
                            $("#avatarPreview").css({ "display": "block" });
                        });
                    });
                </script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <div id="layoutSidenav_nav">
                        <jsp:include page="../layout/sidebar.jsp" />
                    </div>
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Manage Products</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="/admin"></a>Dashboard</li>
                                    <li class="breadcrumb-item active">Products</li>
                                </ol>

                                <div class="container mt-5">
                                    <div class="row">
                                        <div class="col-md-6 col-12 mx-auto">
                                            <h3>Create Product</h3>
                                            <form:form method="post" action="/admin/product/create"
                                                modelAttribute="newProduct" enctype="multipart/form-data">
                                                <div class="mb-3">
                                                    <label class="form-label">Name: </label>
                                                    <form:input type="name" class="form-control" path="name" />
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label">Price: </label>
                                                    <form:input type="price" class="form-control" path="price" />
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label">Detail description: </label>
                                                    <form:input type="detailDesc" class="form-control"
                                                        path="detailDesc" />
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label">Short description: </label>
                                                    <form:input type="shortDesc" class="form-control"
                                                        path="shortDesc" />
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label">Quantity: </label>
                                                    <form:input type="quantity" class="form-control" path="quantity" />
                                                </div>

                                                <div class="mb-3">
                                                    <label class="form-label">Factory: </label>
                                                    <form:select class="form-select" path="factory">
                                                        <form:option value="APPLE">Apple</form:option>
                                                        <form:option value="SAMSUNG">Samsung</form:option>
                                                        <form:option value="HUAWEI">Huawei</form:option>
                                                        <form:option value="XIAOMI">Xiaomi</form:option>
                                                    </form:select>
                                                </div>

                                                <div class="mb-3">
                                                    <label class="form-label">Quantity: </label>
                                                    <form:input type="quantity" class="form-control" path="quantity" />
                                                </div>




                                                <div class="mb-3">
                                                    <label for="avatarFile" class="form-label">Avatar:</label>
                                                    <input type="file" class="form-control" id="avatarFile"
                                                        accept=".png, .jpg, .jpeg" name="uploadFile" />
                                                </div>

                                                <div class="col-12 mb-3">
                                                    <img id="avatarPreview" src="#" alt="Avatar preview"
                                                        style="max-height: 250px; display: none;" />
                                                </div>

                                                <button type="submit" class="btn btn-primary">Submit</button>
                                            </form:form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="js/scripts.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
                    crossorigin="anonymous"></script>
                <script src="js/chart-area-demo.js"></script>
                <script src="js/chart-bar-demo.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
                    crossorigin="anonymous"></script>
                <script src="js/datatables-simple-demo.js"></script>
            </body>

            </html>