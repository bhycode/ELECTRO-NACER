<!DOCTYPE html>

<html>

<head>
    <title>ELECTRO NACER - HOME</title>
    <meta name="description" content="An website for electronic pieces and arduino.">
    <meta name="keywords" content="electronic, arduino, servo motor, arduino uno, sensor, diastance sensor">
    <meta charset="UTF-8">

    <link rel="stylesheet" href="assets/css/home.css">
</head>


<body>

    <section class="top-section">

        <!-- Top title -->
        <span class="top-title">Our Products</span>
        <!-- Top title -->

    </section>
    

    <!-- Search field -->
    <section class="search-setion">
        <input id = "search-edt" name="search-edt" placeholder="Search">
        <svg id = "search-button" xmlns="http://www.w3.org/2000/svg" viewBox="0 -960 960 960"><path d="M784-120 532-372q-30 24-69 38t-83 14q-109 0-184.5-75.5T120-580q0-109 75.5-184.5T380-840q109 0 184.5 75.5T640-580q0 44-14 83t-38 69l252 252-56 56ZM380-400q75 0 127.5-52.5T560-580q0-75-52.5-127.5T380-760q-75 0-127.5 52.5T200-580q0 75 52.5 127.5T380-400Z"/></svg>
    </section>
    <!-- Search field -->

    <section>
    </section>

<?php
$hostname = "localhost";
$username = "root";
$password = "";
$database = "electro_nacer";

$connection = new mysqli($hostname, $username, $password, $database);



if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}

// Fetch products from the database
$query = "SELECT Product.productID, Product.imagePath, Product.label, Product.unitPrice, Product.minQuantity, Product.stockQuantity, Product.category, ProductCategory.categoryName FROM Product JOIN ProductCategory ON Product.categoryID_fk = ProductCategory.categoryID;";
$result = $connection->query($query);

?>

<!-- Products -->
<section class="products-catalog-section">    
    <div class="products-catalog-cards">
        
        <?php
        // Loop through the fetched products and display each card
        while ($product = $result->fetch_assoc()) {
            $imagePath = $product['imagePath'];
            $label = $product['label'];
            $unitPrice = $product['unitPrice'];
            $minQuantity = $product['minQuantity'];
            $stockQuantity = $product['stockQuantity'];
            
            
            // Display product card
            echo '<div class="products-catalog-card" style="background-image: url(\'assets/images/' . $imagePath . '\');">';
            echo '<p>' . $label . '</p>';
            echo '<p>' . $unitPrice . ' DH</p>';
            echo '</div>';
        }


        ?>
        

    </div>
</section>
<!-- Products -->

<?php
// Close the MySQL connection
$connection->close();
?>




    <script src="assets/js/home.js"></script>
</body>

</html>